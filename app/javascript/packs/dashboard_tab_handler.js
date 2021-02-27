const dashboardTabHandler = () => {
  const nav = document.querySelector("#pills-tab");

  if (nav) {
    const tabNumSelect = nav.dataset.tab;
    const tabs = document.querySelectorAll(".dashboard-nav-link");

    switch (tabNumSelect) {
      case "1":
        tabs[0].click();
        break;
      case "2":
        tabs[1].click();
        break;
      default:
        console.log("Invalid tab number!");
        break;
    }
  }
};

export { dashboardTabHandler };
