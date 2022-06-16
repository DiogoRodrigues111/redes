#include <iostream>

extern "C" {
    #include <errno.h>
    #include <string.h>
    #include <stdlib.h>
    #include <unistd.h>
    #include <sys/socket.h>
    #include <netinet/in.h>
}

int main (int argc, char* argv[])
{
    int32_t intSocket = socket(AF_INET, SOCK_STREAM, 0);
    int32_t intListenPort = 1234;
    struct sockaddr_in pSockAddr, pAccetConnetion;
    
    memset(&pSockAddr, 0, sizeof(struct sockaddr_in));
    pSockAddr.sin_family = AF_INET;
    pSockAddr.sin_port = htons (intListenPort);
    pSockAddr.sin_addr.s_addr = htons (INADDR_ANY);

    int32_t addrBind = bind (intSocket, (struct sockaddr*)&pSockAddr, sizeof(pSockAddr));
    socklen_t addrSockLen;
    int32_t addrAccept = 1;

    char buffer[1024];

    if (argc != 2) std::cerr << "Server Failed ARGC difference of the Two." << strerror(errno) << "\n";

    if (argc > 1) intListenPort = atoi (argv[1]);

    if (intSocket < 0) std::cerr << "Server Failed to initialize with intSocket." << strerror(errno) << "\n";

    if (addrBind < 0) std::cerr << "Server Failed to do bind intSocket." << strerror(errno) << "\n";

    /* Close all ports of the socket while terminate the program. */
    struct linger addrLingerOpt = {1, 0}; // added linger to close operation.
    setsockopt (intSocket, SOL_SOCKET, SO_LINGER, &addrLingerOpt, sizeof (addrLingerOpt));

    addrBind = listen (intSocket, /* MAX length of queue */ 1);
    if (addrBind < 0) std::cerr << "Server Failed to listen intSock." << strerror(errno) << "\n";

    addrAccept = accept (intSocket, (struct sockaddr*)&pAccetConnetion, &addrSockLen);
    if (addrAccept < 0) std::cerr << "Server Failed to accept connection with intSocket." << strerror(errno) << "\n";

    addrBind = close(intSocket); // close listen socket.

    write (intSocket, "Hello Mr.:", 8);

    addrBind = read (intSocket, buffer, 1023);
    if (addrBind < 0) std::cerr << "Server Failure to READ intSocket." << strerror(errno) << "\n";
    std::cout << "Data receives: " << addrBind << "Bytes: " << buffer << "\n";

    close (addrAccept);
    return 0;
}