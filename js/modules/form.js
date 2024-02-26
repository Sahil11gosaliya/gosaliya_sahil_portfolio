export function form() {

    const form = document.querySelector("#form");
    const feedBack = document.querySelector("#feedback");

    function regForm(event) {
        //console.log("called");
        event.preventDefault();
        const url = "adduser.php";
        const thisform = event.currentTarget;
        //console.log(thisform.elements.lname.value);
        const formdata =
            "name=" +
            thisform.elements.name.value +
            "&email=" +
            thisform.elements.email.value +
            "&company=" +
            thisform.elements.company.value +
            "&phone=" +
            thisform.elements.phone.value +
            "&msg=" +
            thisform.elements.msg.value;
        console.log(formdata);

        fetch(url, {
            method: "POST",
            headers: {
                "Content-Type": "application/x-www-form-urlencoded",
            },
            body: formdata,
        })
            .then((response) => response.json())
            .then((responseText) => {
                console.log(responseText);
                feedBack.innerHTML = "";
                if (responseText.errors) {
                    responseText.errors.forEach((error) => {
                        const errorElement = document.createElement("p");
                        errorElement.textContent = error;
                        feedBack.appendChild(errorElement);
                    });
                } else {
                    form.reset();
                    const messageElement = document.createElement("p");
                    messageElement.textContent = responseText.message;
                    feedBack.appendChild(messageElement);
                }
            })
            .catch((error) => {
                console.log(error);
                feedBack.innerHTML = "";
                const messageElement = document.createElement("p");
                messageElement.textContent =
                    "sorry,you must be using an older browser, that does not support AJAX";
            });
    }

    form.addEventListener("submit", regForm);
}