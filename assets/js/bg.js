const images = [
    '1.jpg',
    '2.jpg',
    '14.jpg',
    '15.jpg',
    '20.jpg',
    'fish.png',
];
var url = "url('/images/" + images[Math.floor(Math.random() * images.length)] + "')";
console.log(url);
window.onload = function() {
    document.body.style.backgroundImage = url;
};
