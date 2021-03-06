<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Community</a>
  <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse" data-target="#collapsibleNavId"
      aria-controls="collapsibleNavId" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="collapsibleNavId">
      <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
          <li class="nav-item active"><a class="nav-link" href="#">Main</a></li>
          <li class="nav-item active"><a class="nav-link" href="/board/list">Board</a></li>

      </ul>
      <ul class="navbar-nav">
          <li class="nav-item dropdown  dropdown-menu-right">
              <a class="nav-link dropdown-toggle" href="#" id="dropdownId" data-toggle="dropdown"
                  aria-haspopup="true" aria-expanded="false">
                  Sign in/up
              </a>
              <div class="dropdown-menu" aria-labelledby="dropdownId">
                      <a class="dropdown-item" href="/sign/in">Sign in</a>
                      <a class="dropdown-item" href="/sign/up">Sign up</a>
              </div>
          </li>
      </ul>
  </div>
</nav><br>