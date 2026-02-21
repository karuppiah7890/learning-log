<dd-mm-yy> <http-status-code> <uri-path>

---

awk '{print $2}' | uniq

awk '{print $2}' | grep '200' | wc -l

200 -> count1

500 -> count2

---

awk '{print $2, $3}' | grep ' 500 ' | uniq

awk '{print $2, $3}' | grep '/users/' | wc -l

---

http_request{"status": 200, "uri_path": "/users"}
