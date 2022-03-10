import swal from 'sweetalert';

const initSweetalert = (selector, options = {}) => {
  const swalButton = document.querySelector(selector);
  if (swalButton) { // protect other pages
    const input = document.getElementById("invitation_email");
    input.addEventListener("keyup", () => {
      if(input.value==="") {
        swalButton.disabled = true;
      } else {
          swalButton.disabled = false;
      }
    })
    swalButton.addEventListener('click', () => {
      swal(options);
    });
  }
};

export { initSweetalert };
