import java.util.*;

public void setup() {
	String lines[] = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) {
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
	String mnllys;
	int mrbll = -1;
	for(int i = 0; i < sWord.length(); i = i + 1){
		mnllys = sWord.substring(i, i + 1);
		if(mnllys. equals("a") == true || mnllys. equals("e") == true || mnllys. equals("i") == true || mnllys. equals("o") == true || mnllys. equals("u") == true){
			mrbll = i;
			break;
		}
	}
	return mrbll;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	else if(findFirstVowel(sWord) == 0)
	{
		return sWord + "way";
	}
	else if(sWord.substring(0, 2).equals("qu") == true)
	{
		return sWord.substring(2) + "quay";
	}
	else
	{
		return sWord.substring(findFirstVowel(sWord)) + sWord.substring(0, findFirstVowel(sWord)) + "ay";
	}

}
