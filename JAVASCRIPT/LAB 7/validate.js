var loan1;
var roi1;
var period1;

function calc()
{
	var CI;
	loan1=document.getElementById("loan").value;
	roi1=document.getElementById("roi").value;
	period1=document.getElementById("period").value;
	var poww=Math.pow((1+(roi1/100)),period1);
	var CI=(loan1*poww)-loan1;
	var total=loan1+CI;
	var monthlyPayment1=(total/period1)/12;
	document.getElementById("monthlyPayment").value=monthlyPayment1;
	document.getElementById("totalPayment").value=total;
	document.getElementById("totalInterestPayments").value=CI;
}