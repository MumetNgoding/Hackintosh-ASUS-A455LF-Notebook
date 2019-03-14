/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-PWRB.aml, Wed Feb 13 08:39:01 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000003A (58)
 *     Revision         0x02
 *     Checksum         0x9D
 *     OEM ID           "hack"
 *     OEM Table ID     "_PWRB"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "_PWRB", 0x00000000)
{
    Device (_SB.PWRB)
    {
        Name (_HID, EisaId ("PNP0C0C"))  // _HID: Hardware ID
    }
}

