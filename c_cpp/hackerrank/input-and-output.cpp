#include <bits/stdc++.h>
using namespace std;
int main()
{
    array<int, 3> nums;
    copy_n(istream_iterator<int>(cin), 3, nums.begin());
    int sum = accumulate(nums.begin(), nums.end(), 0, plus<int>());
    cout << sum << endl;
    return 0;
}
