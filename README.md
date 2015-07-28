<h1><a id="telegram-messenger-client-für-freetz" class="anchor" href="#telegram-messenger-client-f%C3%BCr-freetz" aria-hidden="true"><span class="octicon octicon-link"></span></a>Telegram messenger Client für Freetz</h1>

<p>TFF ist eine Portierung von Telegram für die Wlan Router von AVM mit Freetz.
Die Grundidee Telegram als Source Code bereitzustellen hatte Vitaly Valtman, 
<a href="https://github.com/vysheng/tg">hier</a> findet ihr sein Repository.</p>

<h4>
<a id="installation" class="anchor" href="#installation" aria-hidden="true"><span class="octicon octicon-link"></span></a>Installation</h4>

<p>Als erstes müsst ihr eine funktionierende Freetz Cross Compiler Toolchain passend für eure Fritzbox erstellt haben(Anleitungen wie dies funktioniert findet ihr <a href="http://freetz.org/wiki/help/howtos/common/newbie">hier</a>, wichtig ist dabei das ihr folgende Pakete auf eurem Linux System installiert habt:</p>

<ul>
<li>libreadline-dev </li>
<li>libconfig-dev </li>
<li>libssl-dev </li>
<li>lua5.2 </li>
<li>liblua5.2-dev </li>
<li>libevent-dev </li>
<li>libjansson-dev </li>
<li>libpython-dev </li>
<li>make</li>
</ul>

<p>Zusätzlich benötigt ihr ein paar Büchereien die über das Freetz Menü
mit make menuconfig ausgewählt werden müssen:</p>

<ul>
<li>libevent </li>
<li>openssl</li>
<li>zlib</li>
<li>readline</li>
<li>libconfig</li>
<li>libubacktrace² </li>
</ul>

<p>²(kann nur angewählt werden wenn ihr den Toolchain Compiler auf uClibc Version 0.9.33.2 einstellt) </p>

<p>Da wir nachdem Kompilieren die telegram-cli Datei linken und strippen werden, werden die oben genannten Büchereien auf eurer Fritzbox nicht benötigt.
Ihr benötigt diese nur zum kompilieren.</p>

<p>Als nächstes müsst ihr ein Verzeichnis mit dem Namen src in eurem Homeverzeichnis erstellen und anschließend mein Repository clonen: </p>

<p><code>mkdir ~/src &amp;&amp; git clone https://github.com/petit-miner/tff.git</code></p>

<p>Danach müsst ihr den Pfad eurer Freetz Installation angeben</p><br>

<p><code>nano /tff/install.sh</code></p>

<p>Am Anfang der Datei findet ihr dies <br>

<code>FREETZ=/hier/Pfad/zur/freetz/Installation/angeben</code></p>

<p>Nachdem ihr die Datei gespeichert habt führt ihr diese aus <br>

<code>sudo ./install.sh</code></p>

<p>Wenn alles funktioniert habt findet ihr alle wichtige Dateien im Ordner files.</p>

<h3>
<a id="python-support" class="anchor" href="#python-support" aria-hidden="true"><span class="octicon octicon-link"></span></a>Python Support</h3>

<p>Momentan gibt es noch keinen Python Support, das steht aber noch auf der TO DO Liste.</p>

<h3>
<a id="lua-support" class="anchor" href="#lua-support" aria-hidden="true"><span class="octicon octicon-link"></span></a>LUA Support</h3>

<p>Momentan gibt es noch keinen LUA Support, das steht aber noch auf der TO DO Liste.</p>

<h3>
<a id="unterstützte-befehle" class="anchor" href="#unterst%C3%BCtzte-befehle" aria-hidden="true"><span class="octicon octicon-link"></span></a>Unterstützte Befehle</h3>

<p>Alle unterstütze Befehle findet ihr auf der Seite von <a href="https://github.com/vysheng/tg">Vitaly Valtman</a></p>
     
    

  </body>
</html>
