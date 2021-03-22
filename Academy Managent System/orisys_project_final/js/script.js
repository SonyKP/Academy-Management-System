/* ---Popup---
alert("Hello");
confirm("Confirmation");
prompt("prompt");
*/

/*---Applying value to prompt----

var result=prompt("Enter your name:")
document.write(result);
*/
/*---Applying 2 values--
var a=parseInt(prompt("Enter the first number:"));
var b=parseInt(prompt("Enter the second number:"));
var c=a+b;
alert("Result is:"+c);
*/

/*Hello</h1>
var a=prompt("Orisys");
document.write(a);
document.getElementById("demo").innerHTML="Orisys";

var a=prompt("Enter a value:");
document.getElementById("demo").innerHTML=a;*/

/*--printing value as h1 element--
var a=10
document.write('<h1>'+a);

function myFun()
{
	var a=5;
	document.write('<h1>'+a);
}
myFun();
document.write('<h1>'+a);


a=prompt("Enter a string:");
function change()
{
	document.getElementById("demo").innerHTML=a;
}
change();


function disp()
{
	var s=document.getElementById("n").value;
	alert("Your name is:"+s);	
}

function disp()
{
	var F=document.getElementById("f").value;
	var L=document.getElementById("l").value;
	alert("Your name is:"+F+" "+L);	
}

//Array section

var fruits=["Mango","Apple","Orange"]
document.write('<h1>'+fruits);
document.write('<h1>'+fruits[1]);
fruits.push('Pineapple');
document.write('<h1>'+fruits);

fruits.pop();
document.write('<h1>'+fruits);
fruits.unshift('Pineapple');
document.write('<h1>'+fruits+'</h1>');

fruits.shift();
document.write('<h1>'+fruits);
for(i=0;i<fruits.length;i++)
{
	document.write('<h1>'+fruits[i]+</h1>);
}
	
function disp()
{
	if(onclick=="o")
	{
	var F=document.getElementById("o").value;
	alert("You are selected:"+F);
	}
	else
	{
		var L=document.getElementById("a").value;
			alert("You are selected:"+L);
		
	}
}
//Radio button selection
function myfun()
{
	var rd1=document.getElementById("rd1");
	var rd2=document.getElementById("rd2");
	if(rd1.checked==true)
	{
		alert("You are selected"+" "+rd1.value);
	}
	else if(rd2.checked==true)
	{
		alert("You are selected"+" "+rd2.value);
	}
	else
	{
		alert("Nothing selected");
	}
}

//Dropdown selection
function myfun()
{
	var s=document.getElementById("selectBox");
	
		alert(s.options[s.selectedIndex].value);
}
		

//tag element selection
function myfun()
{
	var para=document.getElementsByTagName("p");
	for(i=0;i<para.length;i++)
	{
	para[i].style.color="red";
	}
}
*/
//class name selection
/*
function myfun()
{
	var para=document.getElementsByClassName("p1");
	for(i=0;i<para.length;i++)
	{
	para[i].style.color="red";
	}
}
*/
//image load
function mouseover()
{
	document.getElementById("img1").src="img/2.jpg";
}
function mouseout()
{
	document.getElementById("img1").src="img/3.jpg";
}
