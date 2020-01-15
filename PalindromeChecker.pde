public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  String a = word;
  
  a = noCap(a);
  a = noSpace(a);
  a = noPunc(a);
  String b = reverse(a);
  if(a.equals(b)){
    return true;
  }else{
    return false;
  }
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length(); i>0;i--){
      sNew=sNew+str.substring(i-1,i);
    }
    //your code here
    return sNew;
}
public String noCap(String str)
{
  return str.toLowerCase();
}
public String noSpace(String str)
{
  String a = "";
  for(int i = 0; i < str.length(); i++){
    if(str.charAt(i)!=' '){
      a = a+str.substring(i,i+1);
    }
  }
  return a;
}
public String noPunc(String str){
  String a = "";
  for(int i = 0; i < str.length(); i++){
    if(str.charAt(i)!='!'&&str.charAt(i)!=','&&(!str.substring(i,i+1).equals("'"))){
      a = a+str.substring(i,i+1);
    }
  }
  return a;
}
