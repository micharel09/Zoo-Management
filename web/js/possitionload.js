function saveScrollPosition() {
    localStorage.setItem(
      "scrollPosition",
      window.scrollY
    );
  }

  function restoreScrollPosition() {
    const scrollPosition =
      localStorage.getItem("scrollPosition");
    if (scrollPosition) {
      window.scrollTo(0, parseInt(scrollPosition));
    }
  }

  window.addEventListener(
    "beforeunload",
    saveScrollPosition
  );

  window.addEventListener(
    "load",
    restoreScrollPosition
  );
