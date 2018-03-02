document.addEventListener('DOMContentLoaded', () => {
	const primaryMenuLinks = document.querySelectorAll('nav.primaryNavigation a');
	const urlParams = new URLSearchParams(window.location.search);

	primaryMenuLinks.forEach(link => {
		// console.log(link.href.indexOf(urlParams.get('page')));
		link.href.indexOf(urlParams.get('page')) > -1 ? link.classList += 'active' : link.classList += '';
	});
});