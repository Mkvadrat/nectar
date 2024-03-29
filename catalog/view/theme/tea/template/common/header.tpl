<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title;  ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta property="og:title" content="<?php echo $title; ?>" />
<meta property="og:type" content="website" />
<meta property="og:url" content="<?php echo $og_url; ?>" />
<?php if ($og_image) { ?>
<meta property="og:image" content="<?php echo $og_image; ?>" />
<?php } else { ?>
<meta property="og:image" content="<?php echo $logo; ?>" />
<?php } ?>
<meta property="og:site_name" content="<?php echo $name; ?>" />

<!--JS AND STYLES-->
<link rel="stylesheet" href="catalog/view/theme/tea/style/style.css">
<link rel="stylesheet" href="catalog/view/theme/tea/js/libs/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="catalog/view/theme/tea/js/libs/OwlCarousel2-2.3.4/dist/assets/owl.carousel.css">
<link rel="stylesheet" href="catalog/view/theme/tea/style/sweetalert.css">
<link rel="stylesheet" href="catalog/view/theme/tea/js/libs/fancybox-master/dist/jquery.fancybox.min.css">
<link rel="stylesheet" href="catalog/view/theme/tea/js/libs/mmenu/jquery.mmenu.all.css">
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="https://fonts.googleapis.com/css?family=Lobster|PT+Sans:400,700,700i&amp;subset=cyrillic" rel="stylesheet">
<link rel="stylesheet" href="catalog/view/theme/tea/style/custom.css">
<script src="catalog/view/theme/tea/js/libs/jquery/jquery.min.js"></script>
<script src="catalog/view/theme/tea/js/libs/bootstrap/js/bootstrap.min.js"></script>
<script src="catalog/view/theme/tea/js/libs/fancybox-master/dist/jquery.fancybox.min.js"></script>
<script src="catalog/view/theme/tea/js/libs/OwlCarousel2-2.3.4/dist/owl.carousel.js"></script>
<script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU" type="text/javascript"></script>
<script src="catalog/view/theme/tea/js/sweetalert.min.js" type="text/javascript"></script>
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/theme/tea/js/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
<meta name="yandex-verification" content="6a4557f4b1130a04" />
</head>
<body>
  <header>
    <div class="top-header">
      <div class="menu-triggers">
        <a href="#menu" class="mmenu-trigger"><span></span></a>
      </div>

      <div class="container">
        <div class="row">
          <div class="col-md-10 top-nav">
            <?php if($custommenu){ ?>
            <ul>
              <?php foreach($custommenu as $menu){ ?>
                <li><a href="<?php echo $menu['href']; ?>"><?php echo $menu['name']; ?></a></li>
              <?php } ?>
            </ul>
            <?php } ?>
          </div>
          <div class="col-md-2 entry">
            <?php if ($logged) { ?>
              <ul class="list-inline">
                <li class="dropdown">
                  <a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="hidden-xs hidden-sm hidden-md">Мой кабинет</span><span class="caret"></span></a>
                  <ul class="dropdown-menu dropdown-menu-right">
                    <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                    <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
                    <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
                  </ul>
                </li>
              </ul>
            <?php } else { ?>
              <a href="<?php echo $login; ?>">Вход</a>
            <?php } ?>
          </div>
        </div>
      </div>
    </div>
	<img src="../image/header-bg.png" class="main-bg-img"/>
	<div class="logo trans-logo">
        <a href="<?php echo $home; ?>"></a>
    </div>
    <div class="header-info">
      <div class="container">
        <div class="row header-desk">          
          <div class="col-md-4 col-sm-4 col-xs-12 cooperation">
            <p><?php echo $address; ?></p>
            <?php echo $cooperation; ?>
          </div>
          <div class="col-md-5 col-sm-4 col-xs-12 data-info">
            <div class="row">
              <div class="col-xs-12 phone">
                <?php echo $telephone; ?>
              </div>
            </div>
          </div>
          <?php echo $cart; ?>
          <?php echo $search; ?>
        </div>
      </div>
    </div>
  </header>
  <section class="overlay">
		<div class="opt-form">
			<div class="container">
				<div class="form-wrapper">
				  <p>Оптовый прайс</p>
				  <span>Оставьте Ваши контактные данные для получения оптового прайса</span>
				  <div>
					<div class="form-info">
					  <input type="text" id="name_customer" class="reset_input" placeholder="Введите Ваше имя">
					  <input type="text" id="phone_customer" class="reset_input" placeholder="*Введите Ваш номер телефона">
					  <input type="email" id="email_customer" class="reset_input" placeholder="*Введите Ваш e-mail">
					</div>
					<div class="warning-customer"></div>
					<div class="formname">
						<input id="checkbox2" type="checkbox" name="checkbox2" onchange="document.getElementById('submit2').disabled = !document.getElementById('checkbox2').checked;">
						<label for="checkbox2">Я согласен с политикой конфиденциальности</label>
						<input type="submit" disabled="disabled" onclick="sendCustomer();" id="submit2" value="Отправить">
					</div>
				  </div>
				</div>
			</div>
		</div>
	</section>
  <div class="bottom-nav">
    <div class="container">
      <div class="row">
        <div class="col-md-12 nav-bottom">
          <?php if($categories){ ?>
          <ul id="nav">
            <?php foreach ($categories as $category) { ?>
            <?php if ($category['children']) { ?>
            <li class="items">
              <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                <ul>
                  <?php foreach ($children as $child) { ?>
                  <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                  <?php } ?>
                </ul>
                <?php } ?>
            </li>
            <?php } else { ?>
            <li class="items"><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
            <?php } ?>

            <?php if(count($categories) > 6){ ?>
            <li><a href="#" class="archive"></a></li>
            <?php } ?>
			<li><a href="http://tea.mkvadrat.com/">ТМ "Чаи Крыма"</a></li>
          </ul>
          <?php } ?>
        </div>
      </div>
    </div>
  </div>
  <nav id="menu" style="opacity: 0;">
    <ul>
      <?php if($categories){ ?>
      <?php foreach ($categories as $category) { ?>
      <?php if ($category['children']) { ?>
      <li>
        <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
        <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
        <ul>
          <?php foreach ($children as $child) { ?>
          <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
          <?php } ?>
        </ul>
        <?php } ?>
      </li>
      <?php } else { ?>
      <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
      <?php } ?>
      <?php } ?>
      <?php } ?>
    <?php if($custommenu){ ?>
      <?php foreach($custommenu as $menu){ ?>
      <li><a href="<?php echo $menu['href']; ?>"><?php echo $menu['name']; ?></a></li>
      <?php } ?>
      <?php } ?>
    </ul>
  </nav>
