function validate()
{
var fn=document.form1.firstname.value;

if(fn==""|| fn==null)
{
alert("First Name must not be empty");
document.form1.firstname.focus();
return false;

}
var ln=document.form1.lastname.value;

if(ln==""|| ln==null)
{
alert("Last Name must not be empty");
document.form1.lastname.focus();
return false;
}
 var ddl = document.getElementById("countrytype");
 var selectedValue = ddl.options[ddl.selectedIndex].value;
    if (selectedValue == "selectcountry")
   {
    alert("Please select a Country");
   }

}



function myFunction()
{
document.getElementById('fname').value = "";
document.getElementById('lname').value = "";
document.getElementById('country').value = "";
}