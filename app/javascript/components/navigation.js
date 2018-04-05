// function getSectionsPositions() {
//   const homeY = document.getElementById('home').getBoundingClientRect().top;
//   const aboutY = document.getElementById('about').getBoundingClientRect().top;
//   const skillsY = document.getElementById('skills').getBoundingClientRect().top;
//   const experienceY = document.getElementById('experience').getBoundingClientRect().top
//   const educationY = document.getElementById('education').getBoundingClientRect().top;
//   const otherInterestsY = document.getElementById('other-interests').getBoundingClientRect().top;
//   const portfolioY = document.getElementById('portfolio').getBoundingClientRect().top;
//   const contactY = document.getElementById('contact').getBoundingClientRect().top;

// }

function updateActiveSection() {
	window.addEventListener('scroll', function(){
		let sectionsToUpdate = document.querySelectorAll('.section-selector');
		for (let i = 0; i < sectionsToUpdate.length - 1; i++) {
			let sectionText = sectionsToUpdate[i].innerHTML.toLowerCase().replace(" ","-");
			let sectionY = document.getElementById(sectionText).getBoundingClientRect().top;
			let nextSectionText = sectionsToUpdate[i+1].innerHTML.toLowerCase().replace(" ","-");
			let nextSectionY = document.getElementById(nextSectionText).getBoundingClientRect().top;

			if ( sectionY <= 1 && nextSectionY > 1) {
				sectionsToUpdate[i].classList.add("active");
			} else { sectionsToUpdate[i].classList.remove("active"); }
		}
		let lastSectionY = document.getElementById("contact").getBoundingClientRect().top;
		if ( lastSectionY <= 1 ) {
			sectionsToUpdate[sectionsToUpdate.length - 1].classList.add("active");
		} else { sectionsToUpdate[sectionsToUpdate.length - 1].classList.remove("active"); }
	});
}

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
	updateActiveSection();
	listenToClick();
}

export { navigateToSection };