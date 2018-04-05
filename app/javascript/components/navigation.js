// function getSectionsPositions() {
//   const homeY = document.getElementById('1home').getBoundingClientRect().top;
//   const aboutY = document.getElementById('2about').getBoundingClientRect().top;
//   console.log(homeY);
//   console.log(aboutY);
// }

function listenToClick() {
	const sections = document.querySelectorAll('.section-selector');
	for (let i = 0; i < sections.length; i++) {
    sections[i].addEventListener('click', function(){
    	let sectionToNavigateTo = sections[i].innerHTML;
			jumpToSection(sectionToNavigateTo);
    });
  };
}

function jumpToSection(sectionToNavigateTo) {
	let sectionText = sectionToNavigateTo.toLowerCase().replace(" ","-");
	let sectionY = document.getElementById(sectionText).getBoundingClientRect().top;
	window.scrollTo(0, sectionY + window.scrollY);
}

function navigateToSection() {
	listenToClick();
}

export { navigateToSection };