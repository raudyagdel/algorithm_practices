#include <bits/stdc++.h>
using namespace std;

typedef struct
{
    int age;
    string first_name;
    string last_name;
    short standard;
} Student;

std::istream &operator>>(std::istream &is, Student &st)
{
    return is >> st.age >> st.first_name >> st.last_name >> st.standard;
}

std::ostream &operator<<(std::ostream &os, const Student &st)
{
    return os << st.age << " " << st.first_name << " " << st.last_name << " " << st.standard << "\n";
}

int main()
{
    Student st;
    cin >> st;
    cout << st;
    return 0;
}