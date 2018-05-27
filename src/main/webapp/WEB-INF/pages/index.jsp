<%--
  Created by IntelliJ IDEA.
  User: Paul
  Date: 16.05.2018
  Time: 18:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="<c:url value="/resources/css/reset.css" />">
  <link rel="stylesheet" href="<c:url value="/resources/css/header.css" />">
  <link rel="stylesheet" href="<c:url value="/resources/css/authorize.css" />">
  <link rel="stylesheet" href="<c:url value="/resources/css/content.css" />">
  <link rel="stylesheet" href="<c:url value="/resources/css/footer.css" />">
  <script src="<c:url value="/resources/js/script.js"/>" async></script>
  <title>NC Loft</title>
</head>
<body>
<div class="authorization display_none">
    <div class="authorization__row">
        <h2 class="welcome_text">Welcome</h2>
        <a href="#" style="text-decoration: none; color: initial;" class="authorization__close">
            <img src="<c:url value="/resources/icons/close.svg" />" alt="close" >
        </a>
    </div>
    <div class="authorization__input">
        <div class="email_container">
            <input type="email" class="email_input" required>
            <label class="floating_email">Email</label>
        </div>
        <div class="pswrd_container">
            <input type="password" class="pswrd_input" required>
            <label class="floating_pswrd">Password</label>
        </div>
    </div>
    <div class="btns_row">
        <div class="btn_signup">
            <a href="#" class="btn_link btn_link_up">Sign up</a>
        </div>
        <div class="btn_signin">
            <a href="#" class="btn_link btn_link_in">Log in</a>
        </div>
    </div>
    <div class="forgott_password">
        <a href="restorePswrd"class="forgott_password_text">
            Forgot password ?
        </a>
        <span class="link_decoration"></span>
    </div>
</div>
<div class="main">
<nav class="nav">
  <div class="nav__logo">
    <a href="<c:url value="/"/>" class="nav__logo__link">
      NC Loft
    </a>
  </div>
  <div class="nav__links">
    <a href="payment" class="nav__links__item">
      Payment & Delivery
    </a>
    <a href="contacts" class="nav__links__item">
      Contacts
    </a>
    <a href="aboutus" class="nav__links__item">
      About us
    </a>
  </div>
  <div class="nav__signin">
    <P class="nav__signin__text">Sign in</P>
    <img src="<c:url value="/resources/icons/signin.svg" />" alt="signin icon"
         class="nav__signin__icon_width_20"/>
  </div>
</nav>
<div class="content">
  <div class="basket" onclick="getCategoriesList()">
    <a href="#">
      <img src="<c:url value="/resources/icons/basket.jpg"/>" alt="basket" class="basket_icon">
    </a>
      <div class="basket_text"></div>
  </div>
  <div class="content__sidebar">
    <p class="content__sidebar__text content__sidebar__text_fontsize_21">
      Categories
    </p>
    <div class="content__sidebar__list__container">
      <ul class="content__sidebar__list__container__categorieslist">
        <c:forEach var="category" items="${categoryList}">
          <li style="cursor: pointer;">
              <a onclick="getCategoriesList(${category.id})">
                      ${category.name}
              </a>
          </li>
        </c:forEach>
      </ul>
    </div>
    <p class="content__sidebar__text__price content__sidebar__text_fontsize_21">
      Price
    </p>
    <div class="content__sidebar__list__container__price">
      <ul class="content__sidebar__list__container__pricelist">
        <li><input type="checkbox" class="margin_right_10"> Under $250</li>
        <li><input type="checkbox" class="margin_right_10"> $250 - $450</li>
        <li><input type="checkbox" class="margin_right_10"> Over $450</li>
        <li>
          $ <input type="number" class="input__text_width_35"> - to $
          <input type="number" class="input__text_width_35">
        </li>
      </ul>
    </div>
    <div class="content__sidebar__search__button">
      <a href="search" class="content__sidebar__search__button__btn" onclick="search">seek</a>
    </div>
  </div>
  <div class="content__mainpart">
    <div class="content__mainpart__toprates">
      <p class="content__mainpart__toprates__text">Top rates</p>
      <div class="content__mainpart__toprates__row">
        <div class="content__mainpart__toprates__item">
          <img src="<c:url value="/resources/images/macbook13.jpg"/>" alt="macbook"
               class="toprates__item">
          <p class="content__mainpart__toprates__item__text">
              <a href="<c:url value="/product">
                            <c:param name="prod_id" value=""/>
                        </c:url>">Macbook Pro Retina 13'</a>
          </p>
        </div>
        <div class="content__mainpart__toprates__item">
          <img src="<c:url value="/resources/images/iphoneSE.jpg"/>" alt="macbook"
               class="toprates__item">
          <p class="content__mainpart__toprates__item__text">
            iphone SE 32 gb
          </p>
        </div>
        <div class="content__mainpart__toprates__item">
          <img src="<c:url value="/resources/images/ssd.jpg"/>" alt="macbook"
               class="toprates__item">
          <p class="content__mainpart__toprates__item__text">
            Samsung SSD 256 Gb
          </p>
        </div>
        <div class="content__mainpart__toprates__item">
          <img src="<c:url value="/resources/images/marshall.jpg"/>" alt="macbook"
               class="toprates__item">
          <p class="content__mainpart__toprates__item__text">
            Sound Amplifier
          </p>
        </div>
      </div>
    </div>
    <div class="content__mainpart__topsales">
      <p class="content__mainpart__toprates__text">Top rates</p>
      <div class="content__mainpart__toprates__row">
        <div class="content__mainpart__toprates__item">
          <img src="<c:url value="/resources/images/macbook13.jpg"/>" alt="macbook"
               class="toprates__item">
          <p class="content__mainpart__toprates__item__text">
            Macbook Pro Retina 13'
          </p>
        </div>
        <div class="content__mainpart__toprates__item">
          <img src="<c:url value="/resources/images/iphoneSE.jpg"/>" alt="macbook"
               class="toprates__item">
          <p class="content__mainpart__toprates__item__text">
            iphone SE 32 gb
          </p>
        </div>
        <div class="content__mainpart__toprates__item">
          <img src="<c:url value="/resources/images/ssd.jpg"/>" alt="macbook"
               class="toprates__item">
          <p class="content__mainpart__toprates__item__text">
            Samsung SSD 256 Gb
          </p>
        </div>
        <div class="content__mainpart__toprates__item">
          <img src="<c:url value="/resources/images/marshall.jpg"/>" alt="macbook"
               class="toprates__item">
          <p class="content__mainpart__toprates__item__text">
            Sound Amplifier
          </p>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="footer">
  <div class="footer__social">
    <a href="https://www.instagram.com/">
      <img src="<c:url value="/resources/icons/insta.svg"/>" alt="insta" class="footer__social__icon">
    </a>
    <a href="https://www.facebook.com/">
      <img src="<c:url value="/resources/icons/facebk.svg"/>" alt="facebk" class="footer__social__icon">
    </a>
    <a href="https://twitter.com/">
      <img src="<c:url value="/resources/icons/twitter.svg"/>" alt="twitter" class="footer__social__icon">
    </a>
  </div>
  <div class="footer__license">
    <p class="footer__license__text">&copy; 2018, NC Loft.com</p>
  </div>
  <div class="footer__mail">
    <a href="mailto:ncloft@gmail.com?subject=Partnership">
      <img src="<c:url value="/resources/icons/mail.svg"/>" alt="mail icon" class="footer__mail__icon">
    </a>
  </div>
</div>
</div>
</body>
</html>
