var msg;
msg="<p><code>The actual script is in external script file called common.js</code></p>";

function addNos(headVar,bodyVar)
{

	document.write(msg);
	var rst = headVar + bodyVar;
	document.write("<p>The sum of the variables headVar and bodyvar is <b>" + rst + "</b></p>")

}
