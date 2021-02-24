import flatpickr from "flatpickr";

const initFlatpickr = () => {
  flatpickr(".datepicker", {
    mode: "range",
    minDate: "today",
    position: "auto center",
    inline: true,
  });
};

export { initFlatpickr };
