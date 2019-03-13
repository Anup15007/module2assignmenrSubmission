var quantity;
var price1;
var totalPrice;
var var1;
function change_func()
{
	var1=document.getElementById("category").value; 
	document.getElementById("xyz").style.display='none';
	if(var1 == 'Electronics'){
	document.getElementById("product1").style.display='inline-block';
		document.getElementById("product2").style.display='none';

	}
	if(var1 == 'Grocery'){
	document.getElementById("product2").style.display='inline-block';
	document.getElementById("product1").style.display='none';
	}
}

function calc()
{	
	quantity=document.getElementById("quantity").value;
	if(var1== 'Electronics')
	price1=document.getElementById("product1").value;
	if(var1== 'Grocery')
	price1=document.getElementById("product2").value;
	totalPrice=quantity*price1;
	document.getElementById("price").value=totalPrice;
	
	
}
