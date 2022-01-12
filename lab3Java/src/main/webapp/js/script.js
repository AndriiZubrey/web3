//localStorage.setItem('check', 1);
//console.log( localStorage.getItem('check') );


function task1() {
	let box1text = document.getElementById("box1text").textContent;
	let box6text = document.getElementById("box6text").textContent;
	document.getElementById("box1text").textContent = box6text;
	document.getElementById("box6text").textContent = box1text;
}

function task2(){
	let halfS = 10;
	document.getElementById("box3text").textContent += halfS * 2;
}



function task3(e) {
	e.preventDefault();
	let length1 = document.getElementById("length1").value;
	let length2 = document.getElementById("length2").value;
	let length3 = document.getElementById("length3").value;
	if (isNaN(length1) || isNaN(length2) || isNaN(length3) || 
			length1 == "" || length2 == "" || length3 == "") {
		alert("Please, enter only numeric values");
	} else {
		length1 = parseInt(length1);
		length2 = parseInt(length2);
		length3 = parseInt(length3);
		let sum = length1 + length2 + length3;
		if ((length1 >= sum / 2) || (length2 >= sum / 2) || (length3 >= sum / 2)) {
			alert("You can not make a triangle with these lengths.");
			document.cookie = "canMakeTriangle=no";
		} else {
			alert("You can make a triangle!");
			document.cookie = "canMakeTriangle=yes";
		}
	}
}

function task4(e) {
	if (document.querySelector('input[name=task4]:checked').value == 1) {
		document.querySelector('#box2text').style.fontStyle = 'italic';
	}
}



if (document.cookie.indexOf("canMakeTriangle") != -1) {
	if (confirm("Cookies: " + document.cookie + "\n" + "Delete canMakeTriangle?")) {
		document.cookie = "canMakeTriangle=; expires=Thu, 21 Aug 2014 20:00:00 UTC";
	} else {
		document.getElementById("form3").style.display = 'none';
		alert("You need to reload the page to see the result and to delete cookies");
	}
}



if (localStorage.getItem("task4") != null) {
	let value = localStorage.getItem("task4");
	document.querySelector("#form4")["radio" + value].checked = true;
}



task1();
task2();

document.querySelector('input[name=task3button]').addEventListener('click', task3);

document.querySelector('input[name=lab3button]').addEventListener('click', lab3);

document.querySelector("#radio1").addEventListener('click', (e) => {
	localStorage.setItem("task4", "1");
});

document.querySelector("#radio2").addEventListener('click', (e) => {
	localStorage.setItem("task4", "2");
});

document.querySelector('#box2text').addEventListener('mouseover', task4);

document.querySelector('#box2text').addEventListener('mouseout', (e) => {
	document.querySelector('#box2text').style.fontStyle = 'normal';
});




