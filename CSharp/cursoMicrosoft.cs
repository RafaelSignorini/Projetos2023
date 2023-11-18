// Begginer C# exercises from Microsoft C# documentation
// There are still issues with running C# in VSCode, however that will soon be fixed

int currentAssignments = 5;

int sophia1 = 93;
int sophia2 = 87;
int sophia3 = 98;
int sophia4 = 95;
int sophia5 = 100;

int nicolas1 = 80;
int nicolas2 = 83;
int nicolas3 = 82;
int nicolas4 = 88;
int nicolas5 = 85;

int zahirah1 = 84;
int zahirah2 = 96;
int zahirah3 = 73;
int zahirah4 = 85;
int zahirah5 = 79;

int jeong1 = 90;
int jeong2 = 92;
int jeong3 = 98;
int jeong4 = 100;
int jeong5 = 97;

decimal sophiaSum = sophia1 + sophia2 + sophia3 + sophia4 + sophia5;
decimal nicolasSum = nicolas1 + nicolas2 + nicolas3 + nicolas4 + nicolas5;
decimal zahirahSum = zahirah1 + zahirah2 + zahirah3 + zahirah4 + zahirah5;
decimal jeongSum = jeong1 + jeong2 + jeong3 + jeong4 + jeong5;

decimal sophiaScore = sophiaSum / currentAssignments;
decimal nicolasScore = nicolasSum / currentAssignments;
decimal zahirahScore = zahirahSum / currentAssignments;
decimal jeongScore = jeongSum / currentAssignments;

Console.WriteLine("Student\t\tGrade\n");
Console.WriteLine("Sophia:\t\t " + sophiaScore + "\tA");
Console.WriteLine("NIcolas:\t" + nicolasScore + "\tB");
Console.WriteLine("Zahirah:\t" + zahirahScore + "\tB");
Console.WriteLine("Jeong:\t\t" + jeongScore + "\tA");

// Creating a GPA calculator for grades

string studentName = "Sophia Johnson";
string course1Name = "English 101";
string course2Name = "Algebra 101";
string course3Name = "Biology 101";
string course4Name = "Computer Science I";
string course5Name = "Psychology 101";

int course1Credit = 3;
int course2Credit = 3;
int course3Credit = 4;
int course4Credit = 4;
int course5Credit = 3;

int gradeA = 4;
int gradeB = 3;

int course1Grade = gradeA;
int course2Grade = gradeB;
int course3Grade = gradeB;
int course4Grade = gradeB;
int course5Grade = gradeA;

Console.WriteLine($"{course1Name} {course1Grade} {course1Credit}");
Console.WriteLine($"{course2Name} {course2Grade} {course2Credit}");
Console.WriteLine($"{course3Name} {course3Grade} {course3Credit}");
Console.WriteLine($"{course4Name} {course4Grade} {course4Credit}");
Console.WriteLine($"{course5Name} {course5Grade} {course5Credit}");