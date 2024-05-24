<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="API TEST"></c:set>

<%@ include file="../common/head.jspf"%>

<div class="div">
  <img
    loading="lazy"
    srcset="..."
    class="img"
  />
  <div class="div-2">
    <div class="div-3">
      <div class="div-4">ABOUT</div>
      <div class="div-5"></div>
    </div>
    <div class="div-6">
      <div class="div-7">PRODUCT</div>
      <div class="div-8"></div>
    </div>
    <div class="div-9">
      <div class="div-10">WORKING PROCESS</div>
      <div class="div-11"></div>
    </div>
    <div class="div-12">
      <div class="div-13">CONTACT US</div>
      <div class="div-14"></div>
    </div>
  </div>
</div>
<style>
  .div {
    border-color: rgba(206, 206, 206, 1);
    border-style: solid;
    border-bottom-width: 1px;
    background-color: #fff;
    align-self: stretch;
    display: flex;
    width: 100%;
    gap: 20px;
    font-size: 15px;
    color: #000;
    font-weight: 700;
    letter-spacing: 0.08px;
    line-height: 100%;
    justify-content: space-between;
    padding: 16px 26px;
  }
  @media (max-width: 991px) {
    .div {
      max-width: 100%;
      flex-wrap: wrap;
      padding: 0 20px;
    }
  }
  .img {
    aspect-ratio: 2.44;
    object-fit: auto;
    object-position: center;
    width: 123px;
    max-width: 100%;
  }
  .div-2 {
    align-self: end;
    display: flex;
    margin-top: 22px;
    align-items: start;
    gap: 20px;
    justify-content: space-between;
  }
  @media (max-width: 991px) {
    .div-2 {
      flex-wrap: wrap;
    }
  }
  .div-3 {
    display: flex;
    flex-direction: column;
    white-space: nowrap;
  }
  @media (max-width: 991px) {
    .div-3 {
      white-space: initial;
    }
  }
  .div-4 {
    font-family: Commissioner, sans-serif;
  }
  .div-5 {
    border-color: rgba(0, 0, 0, 1);
    border-style: solid;
    border-top-width: 2px;
    align-self: center;
    margin-top: 7px;
    width: 1px;
    height: 2px;
  }
  .div-6 {
    align-self: stretch;
    display: flex;
    flex-direction: column;
    white-space: nowrap;
  }
  @media (max-width: 991px) {
    .div-6 {
      white-space: initial;
    }
  }
  .div-7 {
    font-family: Commissioner, sans-serif;
  }
  .div-8 {
    border-color: rgba(0, 0, 0, 1);
    border-style: solid;
    border-top-width: 2px;
    align-self: center;
    margin-top: 8px;
    width: 1px;
    height: 2px;
  }
  .div-9 {
    display: flex;
    flex-direction: column;
  }
  .div-10 {
    font-family: Commissioner, sans-serif;
  }
  .div-11 {
    border-color: rgba(0, 0, 0, 1);
    border-style: solid;
    border-top-width: 2px;
    align-self: center;
    margin-top: 7px;
    width: 2px;
    height: 2px;
  }
  .div-12 {
    display: flex;
    flex-direction: column;
  }
  .div-13 {
    font-family: Commissioner, sans-serif;
  }
  .div-14 {
    border-color: rgba(0, 0, 0, 1);
    border-style: solid;
    border-top-width: 2px;
    align-self: center;
    margin-top: 7px;
    width: 1px;
    height: 2px;
  }
</style>

<%@ include file="../common/foot.jspf"%>
