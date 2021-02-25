const initDatePickerBtn = () => {
  const btn = document.querySelector(".datepicker-btn");
  const input = document.querySelector(".datepicker");

  input.addEventListener("input", (event) => {
    if (event.target.value.includes("to")) {
      btn.disabled = false;
    } else {
      btn.disabled = true;
    }
  });
};

export { initDatePickerBtn };
