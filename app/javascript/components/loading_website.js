function indicateLoading() {
	const buttons = document.querySelectorAll(".loading");
	buttons.forEach(function(button){
		button.addEventListener("click", function(e){
			button.innerText = "Loading...";

			if (button.id == "load-all"){
				button.classList.remove("btn-primary");
				button.classList.add("btn-secondary");
				buttons.forEach(function(buttonA){
					buttonA.innerText = "Loading...";
				})
			};
		})
	})
}

export { indicateLoading };
