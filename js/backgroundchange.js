var images = ['acoustic-guitar.jpg', 'bass-guitar.jpg', 'electric-guitar.jpg', 'amplifier.jpg', 'drums.jpg'];

$('#supersized').css({'background-image': 'url(../images/' + images[Math.floor(Math.random() * images.length)] + ')'});

$('<img src="../images/' + images[Math.floor(Math.random() * images.length)] + '">').appendTo('#banner');