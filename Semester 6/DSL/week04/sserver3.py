'''WAP where client sends a msg to server & server can recv msg 
& send, or echo, it back to the client.'''
import socket
HOST = '127.0.0.1' 
PORT = 2054
with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
	s.bind((HOST, PORT))
	s.listen()
	conn, addr = s.accept()
	with conn:
		print('Connected by', addr)
		while True:
			data = conn.recv(1024)
			if data:
				print("Client: ",data.decode())
			data = input("Enter message to client:");
			if not data:
				break;
			conn.sendall(bytearray(data, 'utf-8'));
		conn.close()