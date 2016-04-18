<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Онлайн библиотека</title>
    <link href="../CSS/main.css" rel="stylesheet" type="text/css">
</head>
<body>

<div class="container">

    <div class="header">
        <div class="logo">
            <a href="main.jsp"><img src="../images/library.png" alt="Логотип" name="logo" /></a>

        </div>
        <div class="welcome">
            <h6><a href="../index.jsp">Выход</a><h6>
        </div>
        <div class="search_form">
            <form name="search_form" method="GET" action="/books">
                <input type="text" name="search_string" size="110"/>
                <input class="search_button" type="submit" value="Поиск"/>
                <select name="search_option">
                    <option>Название</option>
                    <option>Автор</option>
                </select>
            </form>
        </div>
    </div>

    <div class="letters">
    <#list letters as letter>
        <a style="color:red;" href="/books?letter=${letter}">${letter}</a>
    </#list>

    </div>

    <div class="sidebar1">
        <h4><a href="add.jsp">Добавить книгу</a></h4>
        <h4>Жанры:</h4>
        <ul class="nav">

            <li><a href="/books?genre_id=0">Все книги</a></li>
            <li><a style="color:#ff8120;" href="/books?genre_id=1">Детектив</a></li>
            <li><a style="color:#ff8120;" href="/books?genre_id=2">Мистика</a></li>
            <li><a style="color:#ff8120;" href="/books?genre_id=3">Юмор</a></li>
            <li><a style="color:#ff8120;" href="/books?genre_id=4">Исторический</a></li>
            <li><a style="color:#ff8120;" href="/books?genre_id=5">Роман</a></li>
            <li><a style="color:#ff8120;" href="/books?genre_id=6">Сказка</a></li>
            <li><a style="color:#ff8120;" href="/books?genre_id=7">Приключения</a></li>
            <li><a style="color:#ff8120;" href="/books?genre_id=8">Бизнес</a></li>
            <li><a style="color:#ff8120;" href="/books?genre_id=9">Боевик</a></li>
            <li><a style="color:#ff8120;" href="/books?genre_id=10">Религия</a></li>
            <li><a style="color:#ff8120;" href="/books?genre_id=11">Компьютеры</a></li>

        </ul>
    </div>

</div><!-- end .container -->


</body>
</html>