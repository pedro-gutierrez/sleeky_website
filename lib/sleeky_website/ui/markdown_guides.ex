defmodule SleekyWebsite.Ui.MarkdownGuides do
  @moduledoc false
  use Sleeky.Ui.View

  @path "priv/sleeky/guides"

  def definition do
    glob = @path <> "/**/*.md"

    guides =
      glob
      |> Path.wildcard()
      |> Enum.map(&read_guide(@path, &1))

    sections = sections(guides)
    notes = notes(guides)

    {:div, [class: "columns is-3"],
     [
       {:div, [class: "column is-one-quarter pr-6"],
        [
          {:aside, [class: "menu"], Enum.flat_map(sections, &section_menu_item/1)}
        ]},
       {:div, [class: "column is-two-quarters"],
        [
          {:div, [class: "content"], Enum.flat_map(sections, &section_content/1)}
        ]},
       {:div, [class: "column is-one-quarter"],
        [
          {:div, [class: "content"], Enum.flat_map(notes, &notes_content/1)}
        ]}
     ]}
  end

  defp sections(guides) do
    guides
    |> Enum.reject(&is_note?/1)
    |> Enum.group_by(fn {section, _, _} -> section end, fn {_, title, data} -> {title, data} end)
  end

  defp notes(guides) do
    guides
    |> Enum.filter(&is_note?/1)
    |> Enum.group_by(fn {section, _, _} -> section end, fn {_, title, data} ->
      title = String.replace(title, "-notes", "")
      {title, data}
    end)
  end

  defp read_guide(base_dir, path) do
    data = File.read!(path)
    path = String.replace(path, base_dir, "")
    title = Path.basename(path, ".md")
    ["/", section, _] = Path.split(path)
    {section, title, data}
  end

  defp is_note?({_, title, _}), do: String.ends_with?(title, "-notes")

  defp section_menu_item({section, pages}),
    do: [
      {:p, [class: "menu-label"], [section]},
      {:ul, [class: "menu-list"], Enum.map(pages, &page_menu_item/1)}
    ]

  defp page_menu_item({title, _}),
    do: {:li, [], [{:a, ["data-menu": true, href: "##{title}"], [String.capitalize(title)]}]}

  defp section_content({_, pages}), do: Enum.map(pages, &page_content/1)

  defp page_content({title, content}),
    do: {:markdown, ["data-content": true, "data-title": title, id: title], [content]}

  defp notes_content({_, notes}), do: Enum.map(notes, &note_content/1)

  defp note_content({title, content}),
    do:
      {:div, [class: "notification is-warning is-light", "data-note": true, "data-title": title],
       [{:markdown, [], [content]}]}
end
