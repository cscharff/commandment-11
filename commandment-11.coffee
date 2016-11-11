# commandment-11.coffee
# Commandment11 widget for Übersicht
# Chris Scharff (http://tenlions.com)
# Adapted from Wojciech Rutkowski (http://wojciech-rutkowski.com/) and
# Raphael Hanneken (behoernchen.github.io) code used from Time Words widget
# both of whom did *all* the heavy lifting
#
#
# Todo - clean up the hackjob of highlighting values by using a random sort function and pulling the first n values from array.
# Todo - pupulate the span values from a random genrator


style: """
  top: auto
  bottom: 10%
  right: 10px
  width: 20%
  font-family: 'Andale Mono', sans-serif
  color: rgba(145, 145, 145, .8)
  font-weight: 50
  text-align: left
  text-transform: uppercase
  font-size: 2vw
  letter-spacing: 0.535em
  font-smoothing: antialiased
  line-height: 1.1em
  text-shadow: 1px 1px 0px rgba(0, 0, 0, .1)
  .active
    color: rgba(245, 245, 245, 1)
    text-shadow: 1px 1px 0px rgba(105, 105, 105, .4)
  .cursor-on
    color: rgba(245, 245, 245, 1)
    animation: blink 1s cubic-bezier(0.950, 0.050, 0.795, 0.035) infinite alternate
"""

# Get the current hour as word.
command: ""

# Lower the frequency for more accuracy.
refreshFrequency: (1000 * 95) # (1000 * n) seconds


render: (o) -> """
  <div id="content">
        <style>
          @-webkit-keyframes blink {
          from { opacity: 1; }
          to { opacity: 0.2; }
          }
          </style>
    <span id="A01">A</span><span id="A02">5</span><span id="A03">Q</span><span id="A04">F</span><span id="A05">O</span><span id="A06">8</span><span id="A07">K</span><span id="A08">9</span><br>
    <span id="B01">N</span><span id="B02">7</span><span id="B03">U</span><span id="B04">5</span><span id="thou">THOU</span><br>
    <span id="C01">9</span><span id="C02">4</span><span id="C03">J</span><span id="C04">A</span><span id="C05">Q</span><span id="C06">F</span><span id="C07">A</span><span id="C08">O</span><br>
    <span id="shalt">SHALT</span><span id="D06">8</span><span id="D07">9</span><span id="D08">D</span><br>
    <span id="E01">A</span><span id="E02">J</span><span id="E03">C</span><span id="E04">5</span><span id="E05">4</span><span id="E06">S</span><span id="E07">2</span><span id="E08">C</span><br>
    <span id="F01">H</span><span id="F02">1</span><span id="F03">V</span><span id="F04">3</span><span id="F05">X</span><span id="not">NOT</span><br>
    <span id="G01">K</span><span id="G02">8</span><span id="G03">Q</span><span id="G04">5</span><span id="G05">2</span><span id="G06">8</span><span id="G07">O</span><span id="G08">4</span><br>
    <span id="H01">F</span><span id="get">GET</span><span id="H05">J</span><span id="H06">S</span><span id="H07">9</span><span id="H08">V</span>
    <span id="I01">U</span><span id="I02">5</span><span id="I03">O</span><span id="I04>3</span><span id="I05">H</span><span id="I06">C</span><span id="I07">P</span><span id="I08">7</span><br>
    <span id="J01">4</span><span id="J02">1</span><span id="caught">CAUGHT</span>
    <span id="K01">X</span><span id="K02">9</span><span id="K03">N</span><span id="K04">Q</span><span id="K05">B</span><span id="K06">5</span><span id="cursor">&#9646</span>
  </div>
"""


update: (output, dom) ->

  


  date   = new Date()
  minute = date.getMinutes()
  hours   = date.getHours()



  $(dom).find(".active").removeClass("active")

  span_ids = ['A01', 'A02', 'A03', 'A04', 'A05', 'A06', 'A07', 'A08', 'B02', 'B02', 'B04', 'C01', 'C02', 'C03', 'C04', 'C05', 'C06', 'C07', 'C08', 'D06', 'D07', 'D08', 'E01', 'E02', 'E03', 'E04', 'E05', 'E06', 'E07', 'E08','F01', 'F02', 'F03', 'F04', 'F05','G01', 'G02', 'G03', 'G04', 'G05', 'G06', 'G07', 'G08','H01', 'H05', 'H06', 'H07', 'H08','I01', 'I02', 'I03', 'I04', 'I05', 'I06', 'I07', 'I08','J01', 'J02','K01', 'K02', 'K03', 'K04', 'K05', 'K06', 'cursor']


  if minute <= 2 || minute >= 58
    $(dom).find("#thou").addClass("active")
    $(dom).find("#shalt").addClass("active")
    $(dom).find("#not").addClass("active")
    $(dom).find("#get").addClass("active")
    $(dom).find("#caught").addClass("active")
    $(dom).find("#cursor").addClass("cursor-on")
  else if minute >= 3 && minute <= 7 || minute >= 53 && minute <= 57
    $(dom).find("#A01").addClass("active")
    $(dom).find("#B04").addClass("active")
    $(dom).find("#C05").addClass("active")
    $(dom).find("#G06").addClass("active")
  else if minute >= 8 && minute <= 12 || minute >= 48 && minute <= 52
    $(dom).find("#B04").addClass("active")
    $(dom).find("#C03").addClass("active")
    $(dom).find("#I06").addClass("active")
    $(dom).find("#I03").addClass("active")
    $(dom).find("#K06").addClass("active")
    $(dom).find("#cursor").addClass("cursor-on")
  else if minute >= 13 && minute <= 17 || minute >= 43 && minute <= 47
    $(dom).find("#A09").addClass("active")
    $(dom).find("#B02").addClass("active")
    $(dom).find("#C06").addClass("active")
    $(dom).find("#G01").addClass("active")
    $(dom).find("#G04").addClass("active")
    $(dom).find("#H07").addClass("active")
    $(dom).find("#I01").addClass("active")
    $(dom).find("#J04").addClass("active")
  else if minute >= 18 && minute <= 22 || minute >= 38 && minute <= 42
    $(dom).find("#C01").addClass("active")
    $(dom).find("#C03").addClass("active")
    $(dom).find("#I06").addClass("active")
    $(dom).find("#H08").addClass("active")
    $(dom).find("#G04").addClass("active")
    $(dom).find("#cursor").addClass("cursor-on")
  else if minute >= 23 && minute <= 27 || minute >= 33 && minute <= 37
    $(dom).find("#A07").addClass("active")
    $(dom).find("#B04").addClass("active")
    $(dom).find("#B05").addClass("active")
    $(dom).find("#E01").addClass("active")
    $(dom).find("#E08").addClass("active")
    $(dom).find("#H01").addClass("active")
    $(dom).find("#H05").addClass("active")
    $(dom).find("#J04").addClass("active")
  else if minute >= 28 && minute <= 32
    $(dom).find("#B04").addClass("active")
    $(dom).find("#C03").addClass("active")
    $(dom).find("#I06").addClass("active")
    $(dom).find("#I03").addClass("active")
    $(dom).find("#K06").addClass("active")    
    $(dom).find("#A09").addClass("active")
    $(dom).find("#B02").addClass("active")
    $(dom).find("#C06").addClass("active")
    $(dom).find("#G01").addClass("active")
    $(dom).find("#G04").addClass("active")
    $(dom).find("#H07").addClass("active")
    $(dom).find("#I01").addClass("active")
    $(dom).find("#J04").addClass("active")
    $(dom).find("#cursor").addClass("cursor-on")
