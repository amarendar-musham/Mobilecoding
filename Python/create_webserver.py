import http.server
import socketserver
import os

def change_dir(path):
    os.chdir(path)
def start():
    PORT = 8080
    Handler = http.server.SimpleHTTPRequestHandler
    with socketserver.TCPServer(("", PORT), Handler) as httpd:
        print("serving at port", PORT)
        httpd.serve_forever()


change_dir("D:/web/")
start()
