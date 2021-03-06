<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link type="text/css" rel="stylesheet" href="stylesheets/visit_style.css">
    <script src="scripts/codeVisit.js"></script>
</head>
<body>
<!--НОВОЕ ОКНО-->
<div id="new_field" class="hidden"></div>
<div id="new_field2" class="hidden">
    <button id="exit"><img src="stylesheets/img/exit.png" alt="X" width="25px" height="25px"></button>
    <table id="purchAbon">
        <caption>Покупка абонемента</caption>
        <tr>
            <td><label for="abonSubscrNW">Абонемент</label></td>
            <td><select name="subscription" id="abonSubscrNW">
                <option value="22">4 посещения в любое время, на месяц</option>
                <option value="21">Абонемент безлимитный 'дневной'</option>
                <option value="23">Абонемент безлимитный на месяц</option>
                <option value="24">Групповые занятия с тренером для взрослых 4 раза в месяц</option>
                <option value="25">Групповые детские занятия с тренером 1 раз в неделю</option>
                <option value="26">Групповые детские занятия с тренером 2 раз в неделю</option>
            </select></td>
        </tr>
        <tr>
            <td><label for="validity">Действительный с</label></td>
            <td><input type="date" id="validity" name="validity"/></td>
        </tr>
        <tr>
            <td colspan="2"><p id="errorMessage"></p></td>
        </tr>
        <tr>
            <td colspan="2"><button id="purchase">Купить</button></td>
        </tr>
    </table>
</div>
<!--ЗАКОНЧЕНО-->
<div id="all">
    <div id="caption">
    	<a href="/climbingList" id="link"></a>
    	<p id="caption_text">Аренда</p>
    </div>
    <div id="contain">
        <div class="reg_form">
            <table id="table">
                <tr>
                    <td>${client.firstName}</td>
                    <td>${client.lastName}</td>
					<td id="clientId">${client.clientId?c}</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <button id="buyAbon">Купить абонемент</button>                        
                    </td>
					<td colspan="2">
						<button id="pro" type="button"  onclick="window.location='/editUser?clientId=${client.clientId?c}'" >Профиль</button>
					</td>
                </tr>
            </table>
        </div>
        <div class="yellowline"></div>

        <div id="subfield">
            <form id="subscriptionId">
                <#list subscriptions as subscription>
                    <input type="radio" name="buztype" value="${subscription.subscriptionId}"> ${subscription.fancyName} до ${subscription.lastDate}<br>
                </#list>
            </form>
        </div>

        <div class="yellowline"></div>
        <table id="table2">
            <tr>
                <td>
                    <label for="service">Услуга</label>
                </td>
                <td colspan="5">
                    <select name="service" class="ser" id="service">
                        <option value="11">Разовое посещение до 16:00 понедельник-пятница</option>
                        <option value="13">Разовое посещение 16:00-23:00 и выходные</option>
                        <option value="12">Разовое посещение для детей(до 14-ти лет)</option>
                        <option value="14">Старт-пакет</option>
                        <option value="15">Индивидуальная тренировка</option>
                        <option value="18">Семейное разовое посещение</option>
                        <option value="19">Семейное разовое посещение до 16:00 понедельник-пятница</option>
                        <option value="17">Семейный старт-пакет</option>
                        <option value="16">Групповое занятие с тренером для взрослых</option>
                        <option value="20">Абонемент</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>
                    <label for="harness">Обвязка</label>
                </td>
                <td>
                    <select class="inf" id="harness">
                        <option value="0">0</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                        <option value="9">9</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                        <option value="13">13</option>
                        <option value="14">14</option>
                        <option value="15">15</option>
                    </select>
                </td>
                <td>
                    <label for="griGri">gri-gri</label>
                </td>
                <td>
                    <select class="inf" id="griGri">
                        <option value="0">0</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                    </select>
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    <label for="magnesia">Магнезия</label>
                </td>
                <td>
                    <select class="inf" id="magnesia">
                        <option value="0">0</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                    </select>
                </td>
                <td>
                    <label for="carabine">Карабин</label>
                </td>
                <td>
                    <select class="inf" id="carabine">
                        <option value="0">0</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                    </select>
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    <label for="climbingShoes">Скальные туфли</label>
                </td>
                <td>
                    <select class="inf" id="climbingShoes">
                        <option value="0">0</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                    </select>
                </td>
                <td>
                    <label for="key">Ключ</label>
                </td>
                <td>
                    <select class="inf" id="key">
                        <option value="0">0</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                        <option value="9">9</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                        <option value="13">13</option>
                        <option value="14">14</option>
                        <option value="15">15</option>
                        <option value="16">16</option>
                        <option value="17">17</option>
                        <option value="18">18</option>
                        <option value="19">19</option>
                        <option value="20">20</option>
                        <option value="21">21</option>
                        <option value="22">22</option>
                        <option value="23">23</option>
                        <option value="24">24</option>
                        <option value="25">25</option>
                        <option value="26">26</option>
                        <option value="27">27</option>
                        <option value="28">28</option>
                        <option value="29">29</option>
                        <option value="30">30</option>
                        <option value="31">31</option>
                        <option value="32">32</option>
                        <option value="33">33</option>
                        <option value="34">34</option>
                        <option value="35">35</option>
                        <option value="36">36</option>
                        <option value="37">37</option>
                        <option value="38">38</option>
                        <option value="39">39</option>
                        <option value="40">40</option>
                    </select>
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td colspan="5">
                    <div class="button">
                        <button id="ton" type="submit">Пришел</button>
                    </div>
                </td>
            </tr>
        </table>
    </div>
</div>
</body>
</html>