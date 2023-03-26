let data;
let vehiclesCategory;
let inspect = false;
let vehicleDisplay = false;
let onBuyPage = false;
let details = {};

// vehicle-class-warp
addEventListener("message", (e)=>{
	if(e.data.action == "open"){
		data = e.data;
		$("#drawmarker-container").css("left", "-260px");
		$("#vehicle-class-title-container").fadeIn();
		$("#vehicle-class-container").fadeIn();
		$("#vehicle-class-carousel").slick("refresh");
		$('#vehicle-class-carousel').slick('slickRemove', null, null, true);
		$("#vehicle-class-warp").html("");
		for(const vehicles in data.vehicles){
			let vehiclesInfo = data.vehicles[vehicles];
			if(data.vehicles.length >= 8){
				if(vehiclesInfo.title == "daily vehicles"){
					let html = `
						<div class="vehicle-class daily" data-title="${vehiclesInfo.title}">${vehiclesInfo.title}</div>
					`
					$('#vehicle-class-carousel').slick('slickAdd',html);
				}else{
					let html = `
						<div class="vehicle-class" data-title="${vehiclesInfo.title}">${vehiclesInfo.title}</div>
					`
					$('#vehicle-class-carousel').slick('slickAdd',html);
				}
			}else{
				if(vehiclesInfo.title == "daily vehicles"){
					let html = `
						<div class="vehicle-class5 daily5" data-title="${vehiclesInfo.title}">${vehiclesInfo.title}</div>
					`
					$('#vehicle-class-warp').append(html);
				}else{
					let html = `
						<div class="vehicle-class5" data-title="${vehiclesInfo.title}">${vehiclesInfo.title}</div>
					`
					$('#vehicle-class-warp').append(html);
				}
			}
		}
	}else if(e.data.action == "updateInfo"){
		$(".num-speed").text(e.data.vehicleInfo.speed);
		$(".num-acceleration").text(e.data.vehicleInfo.acceleration);
		$(".num-braking").text(e.data.vehicleInfo.braking);
		$(".num-traction").text(e.data.vehicleInfo.traction);
		$(".speed-line").css("width", ((e.data.vehicleInfo.speed / 200) * 100) + "%");
		$(".acceleration-line").css("width", ((e.data.vehicleInfo.acceleration) * 10) + "%");
		$(".braking-line").css("width", ((e.data.vehicleInfo.braking / 50) * 100) + "%");
		$(".traction-line").css("width", ((e.data.vehicleInfo.traction / 50) * 100) + "%");
	}else if(e.data.action == "vehicleBought"){
		$("#buy-notify").fadeIn();
		setTimeout(() => {
			$("#buy-notify").fadeOut(); 
		}, 5000);
	}else if(e.data.action == "draw"){
		$("#drawmarker-container").css("left", "1%");
	}else if(e.data.action == "undraw"){
		$("#drawmarker-container").css("left", "-260px");
	}else if(e.data.action == "hideTimer"){
		$("#test-drive-timer").fadeOut()
	}else if(e.data.action == "testdriver"){
		let timer = data.testDrive.testDriveTimer;
		$("#test-drive-container").css("top", "-600px");
		$("#pointer").css("pointer-events","unset");
		hideAllElements();
		$("#timer").css("color", "white")
		$("#test-drive-timer").fadeIn();
		startTimer(timer);
		onBuyPage = false;
	}else if(e.data.action == "buyvehicle"){
		$("#buy-vehicle").css("top", "-600px");
		$("#pointer").css("pointer-events","unset");
		hideAllElements()
		onBuyPage = false;
	}
})


$(document).on('click', ".vehicle-class,.vehicle-class5", function() {
	let title = $(this).data("title");
	for(const vehicles in data.vehicles){
		let vehiclesInfo = data.vehicles[vehicles];
		if(vehiclesInfo.title == title){
			if(vehiclesInfo.title == "daily vehicles"){
				for(const buttons in data.daily){
					let vehicleBtn = data.daily[buttons];
					let html = `
						<div class="category5" data-name="${vehicleBtn.name}" data-model="${vehicleBtn.model}" data-costs="${vehicleBtn.costs}" data-stock="${vehicleBtn.maxStock}">
							<span>${vehicleBtn.name}</span>
							<div class="category-price">${vehicleBtn.costs.toLocaleString()}$</div>
						</div>
					`
					$('#vehicle-warp').append(html)
				}
			}
			$("#vehicle-class-title-container").fadeOut();
			$("#vehicle-class-container").fadeOut();
			$("#vehicle-container").fadeIn();
			$("#title-container").fadeIn();
			$("#statistics-container").fadeIn();
			$("#vehicle-carousel").slick("refresh");
			$("#title-vehiclecategory").text(title);
			for(const buttons in vehiclesInfo.buttons){
				let vehicleBtn = vehiclesInfo.buttons[buttons];
				if(vehiclesInfo.buttons.length > 5){
					let html = `
						<div class="category" data-name="${vehicleBtn.name}" data-model="${vehicleBtn.model}" data-costs="${vehicleBtn.costs}" data-stock="${vehicleBtn.maxStock}">
							<span>${vehicleBtn.name}</span>
							<div class="category-price">${vehicleBtn.costs.toLocaleString()}$</div>
						</div>
					`
					$('#vehicle-carousel').slick('slickAdd',html);
				}else{
					let html = `
						<div class="category5" data-name="${vehicleBtn.name}" data-model="${vehicleBtn.model}" data-costs="${vehicleBtn.costs}" data-stock="${vehicleBtn.maxStock}">
							<span>${vehicleBtn.name}</span>
							<div class="category-price">${vehicleBtn.costs.toLocaleString()}$</div>
						</div>
					`
					$('#vehicle-warp').append(html)
				}
			}
		}
	}
	$("#colors-container").html("")
	for(const colors in data.colors){
		let vehicleColor = data.colors[colors];
		let html = `
			<div class="color" data-gtacolor='${vehicleColor.gtaColor}' data-colorname='${vehicleColor.colorName}' data-colorr='${vehicleColor.r}' data-colorg='${vehicleColor.g}' data-colorb='${vehicleColor.b}' style="background-color: rgb(${vehicleColor.r},${vehicleColor.g},${vehicleColor.b})">
				<div class="color-icon"><i class="fas fa-check-circle"></i><div>
			</div>
		`
		$("#colors-container").append(html);
	}
	vehiclesCategory = true;
});

$(document).on('click', ".color", function() {
	let colorR = $(this).data('colorr');
	let colorG = $(this).data('colorg');
	let colorB = $(this).data('colorb');
	let colorName = $(this).data('colorname');
	let gtaColor = $(this).data('gtacolor');
	details.color = colorName;
	details.r = colorR;
	details.g = colorG;
	details.b = colorB;
	details.gtaColor = gtaColor;

	let colorBackground = $(this).css("background-color");
	if(colorBackground == "rgb(255, 255, 255)"){
		$(".color-icon").css("color", "rgb(0, 0, 0)");
		$(".color-icon").fadeOut()
		$(this).children().fadeIn()
	}else{
		$(".color-icon").css("color", "rgb(255, 255, 255)");
		$(".color-icon").fadeOut()
		$(this).children().fadeIn()

	}

	$.post("https://rn-vehicleshop/changeColor",JSON.stringify({colorR,colorG,colorB}));
});
$(document).on('click', ".category, .category5", function() {
	$(".category, .category5").css("border-bottom","3px solid #f0f0f0");
	$(this).css("border-bottom","3px solid #f0f0f0");
	let model = $(this).data("model");
	let name = $(this).data("name");
	let costs = $(this).data("costs");
	let stock = $(this).data("stock");
	$("#title-vehiclename").text(name);
	$("#title-stock").text("Stok Durumu: " + stock);
	$("#title-price").text("Fiyat: " + costs.toLocaleString() + "$");
	$("#buy-btn").fadeIn();
	$("#test-btn").fadeIn();
	$("#hide-button").fadeIn();
	$("#slider-container").fadeIn();
	$("#btn-container").fadeIn();
	vehicleDisplay = true;
	details = {
		buyer: data.buyer,
		price: costs.toLocaleString() + "$",
		numberprice: costs,
		vehicle: name,
		model: model,
		color: "Beyaz",
		r: 255,
		g: 255,
		b: 255,
		stock: stock
	}
	$.post("https://rn-vehicleshop/spawnVehicle",JSON.stringify({model}));
});

$("#buy-btn").click(function() {
	onBuyPage = true;
	$("#buy-vehicle").css("top", "50%");
	$("#detail-name").text(details.buyer);
	$("#detail-price").text(details.price);
	$("#detail-vehicle").text(details.vehicle);
	$("#detail-color").text(details.color);
	$("#pointer").css("pointer-events","none");
	$("#main").show()
})

$("#test-btn").click(function() {
	onBuyPage = true;
	$("#test-drive-container").css("top", "50%");
	$("#test-vehicle").text(details.vehicle);
	$("#test-price").text(data.testDrive.testDriveCost + "$");
	changeTime(data.testDrive.testDriveTimer)
	$("#pointer").css("pointer-events","none");
	$("#main").show()
})

$("#back, #test-back").click(function() {
	onBuyPage = false;
	$("#buy-vehicle, #test-drive-container").css("top", "-600px");
	$("#pointer").css("pointer-events","unset");
	$("#main").hide()
})

$("#test-accept").click(function() {
	let timer = data.testDrive.testDriveTimer;
	$.post("https://rn-vehicleshop/testDrive",JSON.stringify({timer,details}))
})

$("#buy").click(function() {
	if(details.gtaColor == undefined || details.gtaColor == "undefined"){
		details.gtaColor = 111
	}
	$.post("https://rn-vehicleshop/buyVehicle",JSON.stringify({details}));
})

$('#vehicle-carousel').slick({
	slidesToShow: 5,
	dots:true,
	centerMode: true,
	centerPadding: '0px'
});
$('#vehicle-class-carousel').slick({
	slidesToShow: 7,
	dots:true,
	centerMode: true,
	centerPadding: '0px'
});

document.onkeydown = (e) =>{
	const key = e.key;
	if (key == "Escape"){
		if(!onBuyPage){
			if(vehiclesCategory){
				vehiclesCategory = false;
				$("#hide-button").css("top","46%");
				$("#hide-button").text("Önizleme");
				$('#vehicle-carousel').slick('slickRemove', null, null, true);
				$('#vehicle-warp').html("")
				$("#colors").html("")
				$("#vehicle-container").fadeOut();
				$("#title-container").fadeOut();
				$("#btn-container").fadeOut();
				$("#hide-button").fadeOut();
				$("#slider-container").fadeOut()
				$("#colors-button").fadeOut();
				$("#statistics-container").fadeOut();
				$("#vehicle-class-title-container").fadeIn();
				$("#vehicle-class-container").fadeIn();
				$("#vehicle-class-carousel").slick("refresh");
				vehicleDisplay = false;
				$.post("https://rn-vehicleshop/deletevehicle",JSON.stringify({}));
			}else{
				$("#vehicle-class-title-container").fadeOut();
				$("#vehicle-class-container").fadeOut();
				$.post("https://rn-vehicleshop/closeVehicleShop",JSON.stringify({}));
			}
		}

	}
};

$("#back-btn").click(function() {
	$('#vehicle-carousel').slick('slickRemove', null, null, true);
	$('#vehicle-warp').html("")
	$("#colors-container").html("")
	$("#vehicle-container").fadeOut();
	$("#title-container").fadeOut();
	$("#slider-container").fadeOut()
	$("#hide-button").fadeOut();
	$("#colors-button").fadeOut();
	$("#btn-container").fadeOut();
	$("#statistics-container").fadeOut();
	$("#vehicle-class-title-container").fadeIn();
	$("#vehicle-class-container").fadeIn();
	$("#vehicle-class-carousel").slick("refresh");
	vehicleDisplay = false;
	$.post("https://rn-vehicleshop/deletevehicle",JSON.stringify({}));
})


let hideDisplay = false;
$("#hide-button").click(function(){
	if(!hideDisplay){
		inspect = true;
		hideDisplay = true;
		$("#colors-button").css("opacity","0");
		$("#vehicle-container").fadeOut();
		$("#title-container").fadeOut();
		$("#statistics-container").css("opacity","0");
		$("#vehicle-class-title-container").fadeOut();
		$("#btn-container").fadeOut();
		$("#hide-button").text("Geri Dön");
		setTimeout(() => {
			$("#hide-button").css("margin-top","450px");
		}, 200);
		$.post("https://rn-vehicleshop/zoomCam",JSON.stringify({}));
	} else{
		hideDisplay = false;
		inspect = false;
		$("#hide-button").css("margin-top","2px");
		$.post("https://rn-vehicleshop/returnCam",JSON.stringify({}));
		setTimeout(() => {
			$("#vehicle-container").fadeIn();
			$("#title-container").fadeIn();
			$("#btn-container").fadeIn();
			$("#statistics-container").css("opacity","1");
			$("#colors-button").css("opacity","1");
			$("#hide-button").text("Önizleme");
		}, 400);
	}

})
let down = false;
// function showVal(data) {
//     $.post("https://rn-vehicleshop/changePos",JSON.stringify({data}));
// }

document.onmousedown = function(e){
	if(inspect){
		if (vehicleDisplay && !down && e.button == 0){
			down = true;
			$.post("https://rn-vehicleshop/mousedown",JSON.stringify({}));
		}
	}
}

document.onmouseup = function(e){
	if(inspect){
		if (down && e.button == 0){
			$.post("https://rn-vehicleshop/mouseup",JSON.stringify({}))
			down = false;
		}
	}
}

var lastScrollTop = 0;

window.onmousewheel = function(e){
	if(inspect){
		const st = e.wheelDelta;
		$.post("https://rn-vehicleshop/" + (st < 0 ? "downscroll" : "upscroll"),JSON.stringify({}));
	}
}

function startTimer(duration) {
	var timer = duration, minutes, seconds;
	let i = setInterval(function () {
		minutes = parseInt(timer / 60, 10);
		seconds = parseInt(timer % 60, 10);

		minutes = minutes < 10 ? "0" + minutes : minutes;
		seconds = seconds < 10 ? "0" + seconds : seconds;

		$("#timer").text(minutes + ":" + seconds)

		if((timer < duration/2) && (timer > duration/4)){
			$("#timer").css("color", "#ffeb3b")
		}else if(timer < duration/4){
			$("#timer").css("color", "#f44336")
		}
		if (--timer < 0) {
			clearInterval(i)
		}
	}, 1000);
}

function changeTime(duration) {
	var timer = duration, minutes, seconds;
	minutes = parseInt(timer / 60, 10);
	seconds = parseInt(timer % 60, 10);

	minutes = minutes < 10 ? "0" + minutes : minutes;
	seconds = seconds < 10 ? "0" + seconds : seconds;

	$("#test-time").text(minutes + ":" + seconds)

	if (--timer < 0) {
		$("#test-drive-timer").fadeOut()
		$("#timer").text("0:00")
	}
}

function hideAllElements(){
	$("#main").hide()
	$("#hide-button").css("top","46%");
	$("#hide-button").text("Önizleme");
	$('#vehicle-carousel').slick('slickRemove', null, null, true);
	$('#vehicle-warp').html("")
	$("#colors").html("")
	$("#vehicle-container").fadeOut();
	$("#color-warp").fadeOut();
	$("#title-container").fadeOut();
	$("#btn-container").fadeOut();
	$("#hide-button").fadeOut();
	$("#slider-container").fadeOut()
	$("#colors-button").fadeOut();
	$("#statistics-container").fadeOut();
	$("#vehicle-class-carousel").slick("refresh");
	vehiclesCategory = false;
	vehicleDisplay = false;
	$("#vehicle-class-title-container").fadeOut();
	$("#vehicle-class-container").fadeOut();
}