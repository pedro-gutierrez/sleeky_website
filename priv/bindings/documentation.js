S(() => {
  let scope = route().scope;

  document.querySelectorAll('[data-menu]').forEach((el) => {
    if (el.href.endsWith(scope)) {
      el.classList.add('is-active')
    } else {
      el.classList.remove('is-active')
    }
  })

  document.querySelectorAll('[data-content]').forEach((el) => {
    if (el.dataset.title.endsWith(scope)) {
      el.style.display = ''
    } else {
      el.style.display = 'none'
    }
  })

  document.querySelectorAll('[data-note]').forEach((el) => {
    if (el.dataset.title.endsWith(scope)) {
      el.style.display = ''
    } else {
      el.style.display = 'none'
    }
  })
})
