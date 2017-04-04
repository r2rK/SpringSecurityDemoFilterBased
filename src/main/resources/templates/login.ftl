<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="css/login.css" media="screen"/>
    <title>Login Page</title>
</head>

<body>

<h1 class="myCustomTitle">Vaadin</h1>


<div id="myCustomForm">


    <form method="post" action="${contextPath}/login">

        <label class="myCustomLabel">User</label>
        <input class="myFormInputText" type="text" name="username"/>

        <label class="myCustomLabel">Password</label>
        <input class="myFormInputText" type="password" name="password"/>

        <input class="myCustomButton" type="submit" value="Sign in">

    <#if RequestParameters['error']??>
        <p class="passWrn">Please check your username, password and try again!</p>
    </#if>

    <#if RequestParameters['logged-out']??>
        <p class="myCustomLogout">Good bye!</p>
    </#if>

    </form>

</div>


</body>
</html>