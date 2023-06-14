<h1 align="center">IP checker</h1>
    <h2>Description</h2>
    A simple script scans a specific network for web applications on the main ports and saves the result as a list of IP addresses to a file. 
</br>
<hr>
    <h2>Possibilities</h2>
        <li>Diff result;</li>
        <li>Sending the comparison result by email (Reporter);</li>
</br>
<hr>
    <h2>Install</h2>
    <i>Download script:</i>
    <pre>git clone https://github.com/J3eyond/ip_checker</pre>
    <i>Enter the folder:</i>
    <pre>cd ip_checker/</pre>
    <i>Config the vars bellow:</i>
    <pre>
    path="*<i>Your full path to this script</i>*" 
    reporter_path="*<i>Path to Reporter folder*</i>" 
    network="*<i>10.0.0.0/22</i>*"
    </pre>
    <i>Give permission to launch:</i>
    <pre>chmod +x ip.sh</pre>
    <i><b>Install Dependencies!</b></i>
<br>
<br>
<hr>
    <h2>Launch</h2>
    <pre>./ip.sh</pre>
<hr>
    <h2>Requirements</h2>
    <li><b>masscan 1.3.2 + </b></li>
    <li><b><a href="https://github.com/J3eyond/Reporter">Reporter</a></b></li>
