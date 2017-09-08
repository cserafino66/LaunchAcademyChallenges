let ready = () => {
  return new Promise((resolve, reject) => {
    document.addEventListener("click", x => {
      response()
    });
  });
};
