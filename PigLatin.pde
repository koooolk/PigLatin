public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{

  for(int i=0;i<sWord.length();i++) 
  	if(sWord.charAt(i)=='a'||sWord.charAt(i)=='e'||sWord.charAt(i)=='i'||sWord.charAt(i)=='o'||sWord.charAt(i)=='u')return i;

  return -1;

}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	int check=findFirstVowel(sWord);

	if(check== -1) return sWord + "ay";
	
	if(check==0) return sWord + "way";

	String front=sWord.substring(2), end=sWord.substring(0,2);
	if(end.equals("qu")) return front + end + "ay";


	return sWord.substring(check) + sWord.substring(0,check) + "ay";

	//return "ERROR";

}
