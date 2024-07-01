<div id="top"></div>

<!-- PROJECT SHIELDS -->
<br/>
<p align="center">
    <img src="https://github.com/chrisdelmoro/inception/blob/main/resources/repo/inceptionn.png" alt="Logo" width="150" height="150">

  <p align="center">
    A Docker and containerization exercise.
    <br/>
    <img src="https://img.shields.io/badge/Mandatory-OK-brightgreen"/>
    <img src="https://img.shields.io/badge/Final%20Score-100-blue"/>
  </p>
</p>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
        <li><a href="#uninstallation">Uninstallation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

This project aims to broaden our knowledge of system administration by using Docker.
We virtualize several Docker images, creating them in our personal virtual
machine.

<p align="right">(<a href="#top">back to top</a>)</p>


<!-- GETTING STARTED -->
## Getting Started

### Prerequisites

To run this project, you need to have installed on your computer the following tools:

* docker
* docker-compose
* make

Besides that, make sure you have the docker service running in your machine. On linux systems, generally you can run the following command to check its status:
```sh
systemctl check docker
```
In case you docker is not running, run:
```sh
sudo systemctl start docker
```

### Installation

1. Clone the repo
```sh
  git clone https://github.com/chrisdelmoro/inception.git
```
2. Run the Makefile on the root of the repo and wait for everything to be setup
```sh
make
```

### Uninstallation

1. Run the Makefile command to clear everything up with:
```sh
make fclean
```

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- USAGE EXAMPLES -->
## Usage

* To access the wordpress website, simple go to https://localhost.

<p align="right">(<a href="#top">back to top</a>)</p>


<!-- LICENSE -->
## License

Distributed under the [GNU General Public License version 3 (GPLv3)](https://www.gnu.org/licenses/gpl-3.0.html). 

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- CONTACT -->
## Contact

Christian C. Del Moro - christian.delmoro@protonmail.com

Project Link: [https://github.com/chrisdelmoro/inception](https://github.com/chrisdelmoro/inception)

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
