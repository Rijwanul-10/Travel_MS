document.addEventListener('DOMContentLoaded', () => {
	const carousel = document.querySelector('#featured-packages .carousel-track');
	const prev = document.querySelector('#featured-packages .prev');
	const next = document.querySelector('#featured-packages .next');
	if (!carousel) return;
	const step = 320;
	prev?.addEventListener('click', () => { carousel.scrollBy({ left: -step, behavior: 'smooth' }); });
	next?.addEventListener('click', () => { carousel.scrollBy({ left: step, behavior: 'smooth' }); });
	let dir = 1;
	setInterval(() => {
		if (carousel.scrollLeft + carousel.clientWidth >= carousel.scrollWidth) dir = -1;
		if (carousel.scrollLeft <= 0) dir = 1;
		carousel.scrollBy({ left: dir * 2, behavior: 'smooth' });
	}, 30);
});


