#include <bits/stdc++.h>
#include <Poco/Net/HTTPSClientSession.h>
#include <Poco/Net/HTTPRequest.h>
#include <Poco/Net/HTTPResponse.h>
#include <Poco/StreamCopier.h>
#include <Poco/URI.h>

using namespace std;
using namespace Poco;
using namespace Poco::Net;

// run g++ -o p2024-20 main2024-20.cpp -lPocoNet -lPocoFoundation -lPocoNetSSL -lPocoJSON -lPocoXML -lPocoUtil

int main() {
    try {
        URI uri("https://www.google.com/");
        HTTPSClientSession session(uri.getHost(), uri.getPort());
        HTTPRequest request(HTTPRequest::HTTP_GET, uri.getPath(), HTTPRequest::HTTP_1_0);
        session.sendRequest(request);
        HTTPResponse response;
        istream& rs = session.receiveResponse(response);
        string responseData;
        StreamCopier::copyToString(rs, responseData);
        cout << responseData << endl;
    } catch (const Exception& ex) {
        cerr << "Poco Exception: " << ex.displayText() << endl;
        return 1;
    }

    return 0;
}