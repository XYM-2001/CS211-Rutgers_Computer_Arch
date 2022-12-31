#include <stdio.h>
#include <stdlib.h>
#include <string.h>
int main(int argc, char* argv[])
{
	int i;
	char *word;
	for(i = 1; i < argc; i++){
	word = argv[i];
	int a, len = strlen(word);
	for(a = 0; a < len; a++){
		if(word[a] == 'a' || word[a] == 'e' || word[a] == 'i'|| word[a] == 'o' || word[a] == 'u' || word[a] == 'A' || word[a] == 'E' || word[a] == 'I' || word[a] == 'O' || word[a] == 'U'){
			printf("%c", word[a]);
		}
	}
}
}
