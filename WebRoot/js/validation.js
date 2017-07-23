function checkEmpty(data)
{
if (data.length==0)
	{
	return false;
	
	}
return true;

}
function checkEmail(data)
{
for(var i=1;i<data.length;i++)
	{
	if(data.charAt(i)=='@')
		{
		return true;
		}
	}
return false;
}
function checkPhoneno(data)
{
if (data.length==10)
	{
	return true;
	
	}
return false;

}