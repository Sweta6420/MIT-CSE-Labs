import socket
HOST = '127.0.0.1' 
PORT = 31621
s = socket.socket()
name = input(str("Enter your name: ")) 
print("Trying to connect to ", HOST, "(", PORT, ")")
s.connect((HOST, PORT))
print("Connected...")
s.send(name.encode())
s_name = s.recv(1024)
s_name = s_name.decode()
print(s_name, "has joined the chat room\nEnter [e] to exit chat room")
while True:
	message = s.recv(1024)
	message = message.decode()
	print(s_name, ":", message)
	message = input(str("Me: "))
	if message == "[e]":
		message = "Left chat room!"
		s.send(message.encode())
		break
	s.send(message.encode())