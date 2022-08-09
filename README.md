<div id="top"></div>

<!-- PROJECT SHIELDS -->
<br/>
<p align="center">
    <img src="https://github.com/chrisdelmoro/42cursus/blob/main/badges/born2berootm.png" alt="Logo" width="150" height="150">

  <p align="center">
    This is a systems administration and virtualization project.
    <br/>
    <img src="https://img.shields.io/badge/Mandatory-OK-brightgreen"/>
    <img src="https://img.shields.io/badge/Bonus-OK-brightgreen"/>
    <img src="https://img.shields.io/badge/Final%20Score-125-blue"/>
  </p>
</p>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>

  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

[![Partition Structure][lsblk-screenshot]]
[![Monitoring Script][script-screenshot]]

This project aims to introduce the student to the concepts of virtualization and systems administration. The objective is to create a virtual machine of a server with several services running.
The student has to first choose between running the server on CentOS or on Debian Linux. After that, several things need to be implemented:
* A partition structure within LVM. The screenshot above shows the structure required for the bonus;
* UFW to manage the system firewall and leave only port 4242 open;
* A strong password policy;
* Install and configure sudo to follow sctrict rules;
* A crom script to run every 10 minutes that is broadcasted to every user and shows several key informations about the system.

For the bonus, the student has to implement at least one of the following:
* A more elaborate partition structure such as the screenshot shows;
* A wordpress server running on lighttpd, MariaDB and PHP;
* A service of the studants choosing, as long as it isn't NGINX or Apache2.

In my server, I choose to implement a FTP server together with the other services required.

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[lsblk-screenshot]: https://github.com/chrisdelmoro/42cursus/blob/main/images/born2beroot_lsblk.png
[script-screenshot]: (https://github.com/chrisdelmoro/42cursus/blob/main/images/born2beroot_script.png)
