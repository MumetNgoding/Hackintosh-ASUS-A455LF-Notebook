# Hackintosh-ASUS-A455LF-Notebook

My EFI Folder for ASUS-A455LF-WX039D Series with Clover Legacy or UEFI
 
<img src="/Images/Sept-Ulchre-Macbook-Pro-Mojave.png?raw=true" alt="macOS Mojave" align="center">
 
### How to Get it?

- Open Terminal with Command: $ `git clone https://github.com/asepms92/Hackintosh-ASUS-A455LF-Notebook`
- Or Just [Clone/Download](https://github.com/asepms92/Hackintosh-ASUS-A455LF-Notebook.git) with Specific Folder Only
 
--------------------------------------------------------------------------------------------
 
### Specs :

- [x] <b>Model Laptop</b>: Asus A455LF-WX039D Series
- [x] <b>Processor</b>: Intel Core i5-5200U (4) @ 2.2GHz up to 2.7Ghz Broadwell
- [x] <b>Graphics</b>: Intel HD Graphics 5500 + NVidia 930M (Disable)
- [x] <b>RAM</b>: 8 GB 1600 MHz DDR3L
- [x] <b>HDD</b>: 500GB SATA HDD (GUID Partition Table)
- [x] <b>Audio</b>: Conexant CX20751/2
- [x] <b>Wifi</b>: Qualcomm Atheros QCA9565/AR9565 Wireless Network Adapter
- [x] <b>Ethernet</b>: Realtek RTL8111GU/8168GU/8411GU PCI Express Gigabit Ethernet
- [x] <b>Others</b>: USB3.0 + USB2.0 ports, FocalTech TouchPad, HDMI/VGA, LAN Ethernet, Card Reader, etc..
 
--------------------------------------------------------------------------------------------
 
### What's Working?

- [x] Audio Conexant CX20751/2 with layout-id 21 + Internal Microphone with SSDT-CX20752.aml (Lilu.kext + AppleALC.kext)
- [x] QE/CI Intel HD Graphics 5500 with VRAM 3,5 GB (3584 MB), Nvidia 930M Must be Disable
- [x] Display brightness PNLF with Fn Key (DSDT Patch Fix Graphics Broadwell from RehabMan Repo + ASUS DSDT Patches Brightness FN Key + AsusNBFnKeys.kext)
- [x] Atheros AR9565 Wifi (AirPortBrcmFixup.kext + ATH9KFixup.kext + AirPortAtheros40.kext + Lilu.kext)
- [x] LAN Ethernet Realtek RTL8111GU/8168GU/8411GU (RealtekRTL8111.kext)
- [x] FocalTech TouchPad (EmlyDinesh's ApplePS2SmartTouchpad.kext)
- [x] Battery Indicator (DSDT Patch for ASUS + SMCBatteryManager.kext)
- [x] WebCam for Facetime HD Camera Built-In (CustomPeripheral.kext)
- [x] USB3.0 Port Must be Rename XHCI to XHC in config.plist, USB2.0 Ports Rename EHC1/EHC2 to EH01/EH02 (DSDT Patch for USB Power + USBInjectAll.kext + Remove Port Limit Kext to Patches in config.plist)
- [x] Sleep and Wake (change Method _PTS/_WAK to ZPTS/ZWAK and XWAK to ZWAK with Rename in config.plist + Included ACPI SSDT Patched) Don't Forget to Disable eGPU in config.plist
- [x] Power Management CPU (Edit Freq X86*.kext with freqVectorsEdit.sh must be Sync in Native Freq CPU + SSDT.aml with Modify included ["cf-frequency-data"](https://github.com/asepms92/Hackintosh-ASUS-A455LF-Notebook/tree/master/EFI-Bootloader/EFI/ACPI/patched) for sync to CPUFriend.kext and CPUFriendDataProvider.kext
- [x] Etc..
 
--------------------------------------------------------------------------------------------
 
### Not Working?

- Bluetooth AR3012 v4.0 Controller, ID Vendor 13D3 ID Product 3423, Must be Load to Windows for Pairing
- Card Reader
- Etc..

--------------------------------------------------------------------------------------------

### Not Tested?

- HDMI (Must Patch Framebuffer with connector-type and others)
 
--------------------------------------------------------------------------------------------
 
### Notes

1. Don't use My Patch [DSDT.aml and SSDT.aml](https://github.com/asepms92/Hackintosh-ASUS-A455LF-Notebook/tree/master/EFI-Bootloader/EFI/CLOVER/ACPI/patched) if you have different <b>ACPI Tables/BIOS Version and Model/Freq CPU PM</b>
2. To get Match On/Off My BT, I was edited BrcmPatchRAM2.kext/Contents/Info.plist then add for Product ID (3423) and Vendor ID (13D3), but need load to Windows for pairing because no Firmware Key for this BT
3. For Wifi [Atheros AR9565](https://github.com/asepms92/Hackintosh-ASUS-A455LF-Notebook/tree/master/Tools/Kexts) Need boot args "-ath9565" to load ATH9KFixup.kext
4. For dAGPM.kext You need edit info.plist in IOKitPersonalities -> AGPM -> Machines, with Specifics Your Machine, look in /System/Library/AppleGraphicsPowerManagement.kext/Contents/Info.plist -> IOKitPersonalities -> AGPM -> Machines, then copy to dAGPM.kext
5. "XX-MASKED-XX" in My [config.plist](https://github.com/asepms92/Hackintosh-ASUS-A455LF-Notebook/tree/master/EFI-Bootloader/EFI/CLOVER/config.plist) for helper to fix iMessages & Facetime
6. And Many More [Apps](https://github.com/asepms92/Hackintosh-ASUS-A455LF-Notebook/tree/master/Tools/Apps)
--------------------------------------------------------------------------------------------
 
### Special Thanks and Credits to :

[Apple](https://www.apple.com) | [Clover](https://sourceforge.net/projects/cloverefiboot) | [Acidanthera](https://github.com/acidanthera) | [Rehabman](https://github.com/RehabMan/Laptop-DSDT-Patch) | [Mieze](https://github.com/Mieze/RTL8111_driver_for_OS_X) | [Mirone](https://github.com/Mirone/AppleHDAPatcher) | [EmlyDinesh](https://osxlatitude.com/forums/topic/1948-elan-focaltech-and-synaptics-smart-touchpad-driver-mac-os-x) | [AnV](https://github.com/andyvand/FixEDID_Devel) | [Piker R. Alpha](https://github.com/Piker-Alpha/ssdtPRGen.sh) | [InsanelyMac](https://www.insanelymac.com/forum), [Olarila](http://olarila.com/forum) and [OSXLatitude](https://osxlatitude.com/forums) Forum | <b>And Other Developers</b> who aren't mentioned.
