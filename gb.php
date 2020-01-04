<?php
include'modules/header&footer/header.html';

$link = mysql_connect("localhost", "login", "password", "corp_site");
mysql_select_db("uc3",$link);

if (!$link) {
	die('Не могу установить соединение с базой данных' . mysql_error());
}

mysql_set_charset("utf8");

$ip = $_SERVER['REMOTE_ADDR'];

$message = array();

if (isset($_POST['name'])) {
    $ok = TRUE;
    $name = strip_tags($_POST['name']);
    if (empty($_POST['name'])) {
        echo '<p style="text-align: center; color: #000; text-shadow: 0px 1px 0px #F58C6F">Вы не сообщили нам свое имя</p>';
        $ok = FALSE;
    }
} else {
    $name = '';
}


if (isset($_POST['header'])) {
    $ok = TRUE;
    $header = strip_tags($_POST['header']);
    if (empty($_POST['header'])) {
        echo '<p style="text-align: center; color: #000; text-shadow: 0px 1px 0px #F58C6F">Вы не выбрали тему сообщения</p>';
        $ok = FALSE;
    }
    
} 

else {
    $header = '';
}

if (isset($_POST['input'])) {
    $input = strip_tags($_POST['input']);
    if (empty($_POST['input'])) {
        echo '<p style="text-align: center; color: #000; text-shadow: 0px 1px 0px #F58C6F">Забыли написать текст сообщения</p>';
        $ok = FALSE;
    }
} else {
    $input = '';
}

$number = mt_rand(3, 10);

if (isset($_POST['captcha'])) {
    $summa = 5 + $_POST['correct'];
    if ($_POST['captcha'] == $summa) {
    } else {
        $ok = FALSE;
        echo '<p style="text-align: center; color: #000; text-shadow: 0px 1px 0px #F58C6F">Результат суммы цифр не верен, попробуйте ещё раз.</p>';
    }
}
if (isset($ok)) {
    if ($ok == TRUE) {
        $query = mysql_query("INSERT INTO `gb_posts` (`PostID`, `Header`, `Name`, `Date`, `Post`, `userIP`) VALUES (NULL, '$header', '$name', NOW(), '$input', '$ip')");
        $query;
        echo '<h2 class="gb-title wrapper">Спасибо! Мы добавили Ваше сообщение &#128515</h2>';
        echo "<script>setTimeout(\"location.href = 'gb.php';\",2500);</script>";
        exit;
    } else {
        $ok = FALSE;
    }
}

?>

<body>
    <?php

for ($i = 0; $i < count($message); $i++) {
    echo '<div class="error wrapper"><h3>' . $message[$i] . '</h3></div>';
}

echo '<fieldset>
<div class="wrapper">
<h2 class="gb-title">Нет ничего проще, чем написать нам.</h2>
<span class="gb-title--span">Можете оставить отзыв, предложить свою новость, отправить интересное предложение или пожаловаться на работу.</span>

<form class="form" method="post">
<div class="container-guestbook">
	<div class="form-group">
	<label for="header"></label>
	<select class="feedback-input" type="text" id="header" name="header" autofocus required maxlength="20" value="' . $header . '">
        <option label="выберите тему" selected disabled hidden></option>
        <option value="Новость">Новость</option>
        <option value="Отзыв">Отзыв</option>
        <option value="Предложение">Предложение</option>
        <option value="Жалоба">Жалоба</option>
   </select>
    </div>
	<div>
	<label for="Name"></label>
	<input class="feedback-input" type="text" placeholder="введите свое имя" id="name" name="name" maxlength="20" value="' . $name . '">
    </div>
<div>
<label for="input"></label>
<textarea class="gb-textarea feedback-input" id="input" placeholder="напишите здесь ваше сообщение" maxlength="800" name="input" rows="6">' . $input . '</textarea>
</div>
<div>
<label for="captcha" style="font-size:14px">сумма 5 + ' . $number . ' =</label>
<input id="captcha" class="feedback-input" type="text" placeholder="впишите результат, это нужно для защиты данных" name="captcha" autocomplete="off">
</div>
	<input type="hidden" name="correct" value="' . $number . '">
<div class="form-group">
<input class="button-submit" type="Submit" name="Submit" value="Отправить"></div>
</div>
</form>
</div>
</div>
</fieldset>';
$query = "SELECT * FROM `gb_posts` ORDER BY `gb_posts`.`PostID` DESC";
$result = mysql_query($query);

if (mysql_num_rows($result) == 0) {
  echo '<div class="wrapper"><h2 class="gb-title gb-text-block">Пока здесь никто ещё ничего не оставил, будь первым!</h2></div>';
}
else {
  echo '<div class="wrapper"><h2 class="gb-title gb-text-block">Вот что нам уже написали, ждем сообщений и от Вас.</h2>
  </div>';
  while ($row = mysql_fetch_assoc($result)) {
    echo '<div class="comment-text-gb">
            <div ><p class="gb-card-header">' . $row['Header'] . '</p></div>
            <div class="gb-card-body">Разместил(а): ' . '<b>' . $row['Name'] . '</b>,   опубликовано ' . $row['Date'] . '<br>
            <p class="gb-card-text">' . $row['Post'] . '</p></div>
          </div><br>';
        
  }
}

?>
<?php
  include 'modules/header&footer/footer.html';
?>

</body>
</html>