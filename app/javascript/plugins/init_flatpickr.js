import flatpickr from "flatpickr";

const initFlatpickr = () => {
  const flatpickrElement = document.querySelector(".datepicker");

  if (flatpickrElement) {
    flatpickr(".datepicker", {
      mode: "range",
      minDate: "today",
      position: "auto center",
      inline: true,
    });
  }
};

export { initFlatpickr };
