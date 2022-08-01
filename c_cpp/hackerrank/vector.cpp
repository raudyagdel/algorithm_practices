#include <bits/stdc++.h>
using namespace std;
int main(int argc, char const *argv[])
{
    vector<int> v;
    unsigned int n, x, y, z;
    cin >> n;
    copy_n(istream_iterator<int>(cin), n, back_inserter(v));
    cin >> x >> y >> z;
    v.erase(v.begin() + x - 1);
    v.erase(v.begin() + y - 1, v.begin() + z - 1);
    cout << v.size() << "\n";
    for_each(v.cbegin(), v.cend(), [](const int c)
             { cout << c << " "; });
    return 0;
}
