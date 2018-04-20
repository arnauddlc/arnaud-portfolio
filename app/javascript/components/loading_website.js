function indicateLoading() {
	const buttons = document.querySelectorAll(".loading");
	buttons.forEach(function(button){
		button.addEventListener("click", function(e){
			button.classList.add("loading-wait");
			button.innerText = "Loading...";
			var websiteCard = button.closest(".card-website");
			websiteCard.classList.add("loading-wait");

			if (button.id == "load-all"){
				button.classList.remove("btn-primary");
				button.classList.add("btn-secondary");
				buttons.forEach(function(buttonA){
					buttonA.classList.add("loading-wait");
					buttonA.innerText = "Loading...";
					var websiteCard = buttonA.closest(".card-website");
					websiteCard.classList.add("loading-wait");
				})
			};
		})
	})
}

export { indicateLoading };
