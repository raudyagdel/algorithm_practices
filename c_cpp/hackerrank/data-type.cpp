#include <bits/stdc++.h>
using namespace std;
int main()
{
    array<string, 5> v;
    copy_n(istream_iterator<string>(cin), 5, v.begin());
    for_each(v.begin(), v.end(),
             [idx = 1](string v) mutable
             {
                 (idx == 4 || idx == 5) ? cout << setprecision(idx == 4 ? 3 : 9) << std::fixed << stod(v) << "\n" : cout << v << "\n";
                 ++idx;
             });
    return 0;
}