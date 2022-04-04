# Open source solid circuit design Outline

- [Open source solid circuit design Outline](#open-source-solid-circuit-design-outline)
  - [Installation and system setup](#installation-and-system-setup)
    - [Open source PDK for 130 nm Process From Thmothy Ansell](#open-source-pdk-for-130-nm-process-from-thmothy-ansell)
    - [Software Setup for vLSI and layout](#software-setup-for-vlsi-and-layout)
    - [Installation OPEN_PDK, Magic, Ngspice and Xschem for Oracle Linux server](#installation-open_pdk-magic-ngspice-and-xschem-for-oracle-linux-server)
      - [Sources of the information](#sources-of-the-information)
  - [SPICE NOTES LINK](#spice-notes-link)

## Installation and system setup

!!! Info "System Setup Guideline"
    This is the Installation of the open source software and infrasture of the Circuit Analysis project

### Open source PDK for 130 nm Process From [Thmothy Ansell](http://j.mp/sscd21-sky130)
>
>- `This is a SKY130 Process node from google`
>- `Open Road software from TCL to layout`

### Software Setup for vLSI and layout

- windows   use [Electric+LTspice](https://www.youtube.com/watch?v=k-wVh3EI19s&ab_channel=Dr.HariPrasadNaikBhattu)

- ubuntu    use [Magic+ngspice](https://www.youtube.com/watch?v=VhQKHLuhi98&ab_channel=NursultanKabylkas)

- [xschem+xschem_skywater+ngspice installation](https://www.youtube.com/watch?v=jXmmxO8WG8s&t=78s&ab_channel=StefanSchippers)

### Installation OPEN_PDK, Magic, Ngspice and Xschem for Oracle Linux server

!!! important info
    OPEN_PDK is a process design kit (PDK) installer for open-sorce EDA tools. The silicon foundry process design kit includes technology file, manufacturing constraints, and process flow from silicon foundry. ==OPEN_PDK== set up the enviroment for the open source EDA tools to use Sky Water sky130 process. For example, (magic/ngspice/xschem for analog circuit design), (qflow,netgen,klayout for digital circuit design). This part is mainly targeting at analog circuit design

#### Sources of the information

1. Youtube Videos
   A. [Xschem and open_pdks](//www.youtube.com/watch?v=jXmmxO8WG8s&t=78s&ab_channel=StefanSchippers)
   B. [magic and ngspice](https://www.youtube.com/watch?v=jXmmxO8WG8s&t=78s&ab_channel=StefanSchippers)
   C. [How to use Magic](https://www.youtube.com/watch?v=VhQKHLuhi98&ab_channel=NursultanKabylkas)

2.Notes: Create a HOME/Directory

   A.  Install the dependancies and libs one by one. APT can be used to install the required libs and dependency only. aptshow check the apt repository.pdkgshow check the installed package.
   B. ./autogen.sh >&AUTOGEN_LOG&   B. ./configure >&CONFIGURE_LOG& --prefix=$HOME/DIRECTORY   C. make j($proc)>&MAKE_LOG&  D. make install >&INSTALL_LOG& E. make clean >&CLEAN_LOG& F. make distclean >&DISTCLEAN_LOG&.  The log file can be check if things are wrong.
   C. Use the github newest verion. ==DONNOT== use the old version in the apt repository for EDA tools.
   D. Uninstall the software by using the command "apt-get remove --purge <package name>". Or make uninstall to uninstall the software. Or detete the software folder after make.
   F. After installation, it is important to check the $PATH in the usr/local/bin  usr/bin and $HOME/bin folders. Use Echo $PATH to check the PATH. Or the program will not be found.
   G. Check all the folder pointers and variables in the configuration file are correct. Such as I editted the xchemrc file to link the skywater and ngspice libraries and symbols.

3. To be familar with these tool chain. It is good to start with each parkage one by one! No need to finisht he whole tool chain installation. Finally target is to USE it.

## SPICE NOTES LINK

!!! Abstract
    The target is to understand the infrasture of the analog circuit design. With already existing knowledge,finish some small projects in order to simulate and design the op-amp IC.
