#include <iostream>
#include <sstream>

extern "C" {
    #include <errno.h>
    #include <string.h>
    #include <stdlib.h>
    #include <unistd.h>
    #include <sys/socket.h>
    #include <netinet/in.h>
    #include <netdb.h>
}

int main (int argc, char* argv[])
{
    int32_t intSocket;
    int32_t intListenPort;
    struct sockaddr_in pSockAddr, pAccetConnetion;
    socklen_t addrSockLen;
    int32_t addrBind;
    struct hostent *pHostEnt;

    char *pPeerHosting = "localhost";
    char buffer[1024];

    intSocket = socket(AF_INET, SOCK_STREAM, 0);
    intListenPort = 1234;

    if (intSocket < 0) std::cerr << "Client Failure on intSocket." << strerror(errno) << "\n";

    bzero (&pSockAddr, sizeof (pSockAddr));

    if (argc > 1) pPeerHosting = argv[1];

    pHostEnt = gethostbyname (pPeerHosting);
    if (pHostEnt == NULL) std::cerr << "Client Failure on HostEnt." << strerror(errno) << "\n";

    pSockAddr.sin_family = AF_INET;
    if (argc >= 3) intListenPort = atoi (argv[2]);
    pSockAddr.sin_port = htons (intListenPort);

    memmove (&(pSockAddr.sin_addr.s_addr), pHostEnt->h_addr_list[1], sizeof (pSockAddr));

    addrBind = connect(intSocket, (struct sockaddr *)&pSockAddr, sizeof (pSockAddr));
    if (addrBind < 0) std::cerr << "Client Failure on AddrBind." << strerror(errno) << "\n";

    addrBind = read (intSocket, buffer, 1024);
    if (addrBind < 0) std::cerr << "Client Failure on AddrBind reader." << strerror(errno) << "\n";

    std::cout << "Data receives from client: " << buffer << "\n";
    write (intSocket, "Finished execution.", 21);

    close (intSocket);

    return 0;
}