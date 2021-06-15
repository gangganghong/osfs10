#include <stdio.h>

struct Person{
	int age;
	char name[20];
};

int main(int argc, char **argv)
{
	char *p;
	char *a = "Hello,World";
	p = a;
	printf("p = %s\n", p);
	printf("a = %s\n", a);
	a++;
	printf("p = %s\n", p);
	printf("a = %s\n", a);

	printf("\n%s\n","=============================");

	struct Person people[20];
	struct Person * jim = people;
	struct Person * jim2 = &people[1];
	struct Person kate = {19, "Lily"};
	struct Person kate2 = {29, "Lucy"};
	jim = &kate;
	printf("kate name:%s, age:%d\n", kate.name, kate.age);
	jim->age = 190;	
	printf("kate name:%s, age:%d\n", kate.name, kate.age);

	*jim2 = kate2;
	printf("kate2 name:%s, age:%d\n", kate2.name, kate2.age);
	jim2->age = 180;	
	printf("kate2 name:%s, age:%d\n", kate2.name, kate2.age);

	return 0;
}
