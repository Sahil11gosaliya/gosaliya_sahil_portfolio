export function hammenu(){
    const openBtn = document.querySelector('.openbtn');
    openBtn.addEventListener('click', function () {
        this.classList.toggle('active');
    });



    document.querySelector('.openbtn').addEventListener('click', function () {
        document.querySelector('.hammenu').classList.toggle('active');
    });


}