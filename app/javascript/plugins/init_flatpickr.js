import flatpickr from "flatpickr";

const initFlatpickr = () => {
  flatpickr(".datepicker", {
    mode: "range",
    position: "auto center",
    inline: true,
  });
};

export { initFlatpickr };
