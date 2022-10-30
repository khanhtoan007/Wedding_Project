<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login page</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>
<a href="home.jsp">Homepage</a>
<a href="adminManageCustomer.jsp">Admin page 1</a>
<a href="adminViewStaffDetail.jsp">Staff detail</a>
<h2>Demo WebSocket Chat Room</h2>
<input id="textMessage" type="text" />
<input onclick="sendMessage()" value="Send Message" type="button" /> <br/><br/>

<textarea id="textAreaMessage" rows="10" cols="50"></textarea>

<script type="text/javascript">
    var websocket = new WebSocket("ws://localhost:8080/chatRoomServer");
    websocket.onopen = function(message) {processOpen(message);};
    websocket.onmessage = function(message) {processMessage(message);};
    websocket.onclose = function(message) {processClose(message);};
    websocket.onerror = function(message) {processError(message);};

    function processOpen(message) {
        textAreaMessage.value += "Server connect... \n";
    }
    function processMessage(message) {
        console.log(message);
        textAreaMessage.value += message.data + " \n";
    }
    function processClose(message) {
        textAreaMessage.value += "Server Disconnect... \n";
    }
    function processError(message) {
        textAreaMessage.value += "Error... " + message +" \n";
    }

    function sendMessage() {
        if (typeof websocket != 'undefined' && websocket.readyState == WebSocket.OPEN) {
            websocket.send(textMessage.value);
            textMessage.value = "";
        }
    }

</script>

</body>
</html>