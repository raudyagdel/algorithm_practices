#include <stdio.h>
#include <string.h>
#define MAX_NAME 30
#define MAX_FIREFIGHTERS 9
#define MAX_OPERATIONS 100
#define MAX_TEAMS 9
#define MAX_CHAR_LINE 4096

//////////////////////////////////
//      ***   STRUCTS   ***     //
//////////////////////////////////
// >>>>>>>>>>>>
// Fire Fighter
// >>>>>>>>>>>>
typedef struct
{
    char name[MAX_NAME];
    int n_operations;
    int minutes_op[MAX_OPERATIONS];
} FireFighter;

// >>>>>>>>>>>>
// Team
// >>>>>>>>>>>>
typedef struct
{
    char team_id;
    int n_firefighters;
    FireFighter firefighters[MAX_FIREFIGHTERS];
} Team;

// >>>>>>>>>>>>
// Fire Station
// >>>>>>>>>>>>
typedef struct
{
    int n_teams;
    Team teams[MAX_TEAMS];
} FireStation;

// >>>>>>>>>>>>
// Fire Station
// >>>>>>>>>>>>
typedef enum
{
    false,
    true
} bool;
//////////////////////////////////
//    ***   OPERATIONS   ***    //
//////////////////////////////////
// >>>>>>>>>>>>
//  Parse
// >>>>>>>>>>>>
FireStation parse(const char *data)
{
    FireStation station;

    // int count = 0;
    // char *token = strtok(data, delimiter);

    // while (token != NULL && count < MAX_PARTS)
    // {
    //     parts[count] = token;
    //     count++;
    //     token = strtok(NULL, delimiter);
    // }

    // return count;

    return station;
}

// >>>>>>>>>>>>
//  Show
// >>>>>>>>>>>>
void show(FireStation station);

//////////////////////////////////
//       ***   MAIN   ***       //
//////////////////////////////////
int main(int argc, char const *argv[])
{
    char input[MAX_CHAR_LINE];
    char operation[64];
    bool exit = false;

    printf("Wellcome to Prog City!\n");
    printf("\n");

    printf("Initial info: ");
    fgets(input, sizeof(input), stdin);

    do
    {
        printf("\nProg City > ");
        scanf("%s", operation);

        if (strcmp(operation, "exit") == 0)
        {
            exit = true;
        }

    } while (!exit);

    printf("\nSee you later!\n");

    return 0;
}

void show(FireStation station)
{
    for (int i = 0; i < station.n_teams; i++)
    {
        Team team = station.teams[i];
        printf("%c\n", team.team_id);
        for (int j = 0; j < team.n_firefighters; j++)
        {
            FireFighter firefighter = team.firefighters[j];
            printf("\t%s\n", firefighter.name);
        }
    }
}