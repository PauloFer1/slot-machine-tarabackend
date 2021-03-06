<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <title>Google Analytics</title>
    <script type="text/javascript" src="http://www.google.com/jsapi"></script>
    <script type="text/javascript" src="gettingStarted.js"></script>
  </head>
  <body>
    <h1 class="dashH1">Google Analytics</h1>
    <button id="authButton">Loading...</button>
    <div id="dataControls" style="display:none">
      <p>
        For this user, retrieve the first 50 accounts with profile ID and table ID
        <button id="getAccount">Get Account Data</button>
      </p>
      <p>
        For this profile, show top 10 pageviews in descending order:
        <input type="text" id="tableId"/> (insert Table ID)
        <button id="getData">Get Report Data</button>
      </p>
    </div>
    <div id="outputDiv"></div>
    <img src="../tarambola/plugins/dashboard/img/dummy.gif" style="display:none" alt="required for Google Data"/>
  </body>
</html>