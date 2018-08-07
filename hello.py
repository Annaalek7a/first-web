def appli(environ, start_response)#первая переменная - словарь, вторая - функция
status = '200 OK'# код ответа
headers = [('Content-Typy','text/plain')]
start_response(status,headers)
resp=environ['QUERY_STRING'].split("&")
resp=[item+"\r+\n" for item in resp]
return resp
