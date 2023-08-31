// search
document.querySelectorAll('[data-search]').forEach((el) => {
  control = document.querySelector(el.dataset.searchControl);
  input = control.querySelector("input");
  resultTemplate = document.querySelector(el.dataset.searchResult);
  result = S.data({ items: [], errors: [] });

  mockData = [
    { guide: "overview", content: "This is some overview text" },
    { guide: "installation", content: "This is some installation text" },
  ]

  input.onkeyup = debounce(async function() {
    setTimeout(function() {
      result({ items: mockData, errors: [] })
    }, 2000);
    control.classList.add("is-loading");
    result((await searchItems(el.dataset.scope, { query: input.value })));
  }, 300);

  resetSearch = () => {
    input.value = '';
    result({ items: [], errors: [] });
  }

  resultParent = resultTemplate.parentElement;
  resultParent.style.display = 'none';

  S(() => {
    r = result();
    control.classList.remove("is-loading");
    newChildren = r.items.map((item) => {
      child = resultTemplate.content.cloneNode(true);
      bindFields(child, item);
      bindHrefs(child, item, resetSearch);
      return child;
    });
    resultParent.replaceChildren(...newChildren);
    resultParent.style.display = r.items.length ? '' : 'none';
  })
})
