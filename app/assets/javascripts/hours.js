// var today = new Date();
// var date = today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate();
// var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
// var dateTime = date+' '+time;

function checkTime(i) {
    if (i < 10) {
      i = "0" + i;
    }
    return i;
  }
  
function startTime() {
    console.log("hours1")
    var today = new Date();
    console.log("hours2")
    var h = today.getHours();
    console.log("hours3")
    var m = today.getMinutes();
    console.log("hours4")
    var s = today.getSeconds();
    console.log("hours5")
    // add a zero in front of numbers<10
    m = checkTime(m);
    console.log("hours6")
    s = checkTime(s);
    console.log("hours7")
    document.getElementById("time").innerHTML = ""+ h + ":" + m + ":" + s + "";
    console.log("hours8")
    // t = setTimeout(function() {
    //   startTime();
    // }, 500);

  }

  $(document).ready(function() {
    setInterval(() => 
    {startTime();}, 1000);
  });

console.log("hours")