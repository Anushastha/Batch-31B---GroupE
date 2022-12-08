const imgDiv = document.querySelector('.card');
const img = document.querySelector('#photo');
const file = document.querySelector('#updt');
const updtBtn = document.querySelector('#updtBtn');

card.addEventListener('mouseenter', function() {
    updtBtn.style.display = 'block';
});

imgDiv.addEventListener('mouseenter', function() {
    updtBtn.style.display = 'none';
});
file.addEventListener('change', function() {
    const choosedFile = this.file[0];
    if (choosedFile) {
        const reader = new FileReader();
        reader.addEventListener('load', function() {
            img.setAttribute('src', reader.result);
        });
        reader.readAsDataURL(choosedFile);
    }
});