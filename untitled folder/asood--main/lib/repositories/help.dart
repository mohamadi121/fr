//when bloc logic wants to send request to an endpoint it wouldnt call service directly
//every subject for example user will have its own repository that will call the service 
//and will handle its http or exception handling then will return response to bloc