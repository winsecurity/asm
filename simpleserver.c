#include<stdio.h>
#include<sys/socket.h>
#include<sys/types.h>
#include<stdlib.h>


void main(){

    int sockfd,clientfd;
    struct sockaddr_in server,client;
    
    server.sin_family = AF_INET;
    server.sin_port = htons(9999);
    server.sin_addr.s_addr = INADDR_ANY;

    sockfd = socket(AF_INET,SOCK_STREAM,0);
    printf("socketfd value is %d\n",sockfd);

    bind(sockfd,(struct sockaddr*)&server,sizeof(server));

    listen(sockfd,1);

    clientfd = accept(sockfd,(struct sockaddr*)&client,sizeof(client));

    



}




