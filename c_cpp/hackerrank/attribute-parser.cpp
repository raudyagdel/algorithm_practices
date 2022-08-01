#include <bits/stdc++.h>
using namespace std;
int main()
{
    const std::regex url_re(R"(=\s*\"([\w,.!%$@"]+)\")");
    const std::regex ws_re("\\s+");
    const std::regex eq_re("\\s*=\\s*");

    unsigned int n, q;
    size_t idx;
    std::smatch sm;
    std::map<std::string, std::string> tags;
    std::vector<std::string> data;
    std::string line, path, property, value, query;

    std::cin >> n >> q;
    std::cin.ignore();
    while (n--)
    {
        std::vector<std::string> data;
        std::getline(std::cin, line);
        line = std::regex_replace(line, eq_re, "=");
        std::copy(std::sregex_token_iterator(line.begin() + 1, line.end() - 1, ws_re, -1), std::sregex_token_iterator(), std::back_inserter(data));
        if (data[0][0] != '/')
        {
            path = path.empty() ? data[0] : path.append(1, '.').append(data[0]);
            for (unsigned int i = 1; i < data.size(); i++)
            {
                if (std::regex_search(data[i], sm, url_re))
                {
                    property = path + "~" + sm.prefix().str(), value = sm[1];
                    tags[property] = value;
                }
            }
        }
        else
        {
            idx = path.find_last_of('.');
            if (idx != std::string::npos)
            {
                path = path.substr(0, idx);
            }
            else
            {
                path = "";
            }
        }
    }

    while (q--)
    {
        cin >> query;
        map<string, string>::iterator it = tags.find(query);
        if (it != tags.end())
        {
            cout << it->second << endl;
        }
        else
        {
            cout << "Not Found!" << endl;
        }
    }

    return 0;
}