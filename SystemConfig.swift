//
//  SystemConfig.swift
//  Mobius
//
//  Created by Zakk Hoyt on 2/25/16.
//  Copyright © 2016 Zakk Hoyt. All rights reserved.
//

import UIKit

class SystemConfig: ConfigSection {
    override init() {
        super.init()
        
        //    Power on=[1];set system  power on time,0:delay,1:fast
        let powerOn = ConfigItem(title: "Power On", params: ["Delay", "Fast"], index: 1)
        items.append(powerOn)
        
        //    Power off=[1];set system auto power off time when system pending,0:off,1:30 seconds,2:1 minutes,3:2 minutes,
        let powerOff = ConfigItem(title: "Power Off", params: ["Off", "30 seconds", "1 minute", "2 minutes"], index: 1)
        items.append(powerOff)
        
        //    Auto Record with External Power=[0];set connect with power to start video recording automatically,0:off,1:on,
        let autoRecordWithExternalPower = ConfigItem(title: "Auto Record With External Power", params: [
            "Off",
            "On"
            ],
            index: 0)
        items.append(autoRecordWithExternalPower)
        
        //    One Power Button to Auto Record=[0];set press power key to start video recording automatically,0:off,1:on,
        let onePowerButtonToAutoRecord = ConfigItem(title: "One Power Button to Auto Record", params: [
            "Off",
            "On"
            ],
            index: 0)
        items.append(onePowerButtonToAutoRecord)
        
        //    Auto Off with External Power disconnected=[0],0:Immediately,1:delay 10s;2:delay 30s;3:delay 60s;4:record to low battery power off;5:change to motion detect;
        let autoOffWithExternalPowerDisconnected = ConfigItem(title: "Auto Off with External Power Disconnected", params: [
            "Immediately",
            "Delay 10 seconds",
            "Delay 30 seconds",
            "Delay 60 seconds",
            "Record to low battery",
            "Change to Motion Detect",
            ],
            index: 0)
        items.append(autoOffWithExternalPowerDisconnected)
        
        //    LED=[1];set LED flicker when recording,0:off,1:on,
        let led = ConfigItem(title: "LED", params: [
            "Off",
            "On"
            ],
            index: 0)
        items.append(led)
        
        //    Charge from USB Host=[0]; when connecting with USB host, charge camera or not,0:on,1:off
        let chargeFromUSBHost = ConfigItem(title: "Charge from USB Host", params: [
            "On",
            "Off"
            ],
            index: 0)
        items.append(chargeFromUSBHost)
        
        //    Lens option =[0];select lens,0:lens A,1:lens B,2:lens C
        let lensOption = ConfigItem(title: "Lens Option", params: [
            "Lens A",
            "Lens B",
            "Lens C",
            ],
            index: 0)
        items.append(lensOption)
        
        //    Light frequency =[1];set light source frequency,0:50 HZ,1:60 HZ
        let lightFrequency = ConfigItem(title: "Light Frequency", params: [
            "50 Hz",
            "60 Hz"
            ],
            index: 1)
        items.append(lightFrequency)
        
        //    Web camera mode =[0];set web camera mode,0:USB video class(Mjpg codec),1:USB video and audio class(H.264 codec)
        let webCameraMode = ConfigItem(title: "Web Camera Mode", params: [
            "MJPG",
            "H.246"
            ],
            index: 0)
        items.append(webCameraMode)
        
        //    Web camera Flip=[0];set web camera rotate,0:off,1:flip on
        let webCameraFlip = ConfigItem(title: "Web Camera Flip", params: [
            "Off",
            "On"
            ],
            index: 0)
        items.append(webCameraFlip)
        
        
        //    TV out=[0];set Tv out,0:NTSC,1:PAL,
        let tvOut = ConfigItem(title: "TV Out", params: [
            "NTSC",
            "PAL"
            ],
            index: 0)
        items.append(tvOut)
        
        //    TV Display Ratio=[0];set display ratio,0:4*3,1:16*9
        let tvDisplayRatio = ConfigItem(title: "TV Display Ratio", params: [
            "4:3",
            "16:9"
            ],
            index: 0)
        items.append(tvDisplayRatio)
        
        //    TF card format filesystem=[0];format TF card to FAT32 or exFAT,0:FAT32,1:exFAT
        let tfCardFormatFilesystem = ConfigItem(title: "TF Card Format Filesystem", params: [
            "FAT32",
            "exFAT"
            ],
            index: 0)
        items.append(tfCardFormatFilesystem)
        
        //    Motion Detect=[0];set motion detect,0:off,1:on
        let motionDetect = ConfigItem(title: "Motion Detect", params: [
            "Off",
            "On"
            ],
            index: 0)
        items.append(motionDetect)
        
        //    Motion Detect Timeout=[2];set motion detect timeout,0:5s,1:15s,2:30s,3:60s
        let motionDetectTimeout = ConfigItem(title: "Motion Detect Timeout", params: [
            "5 seconds",
            "15 seconds",
            "30 seconds",
            "60 seconds",
            ],
            index: 2)
        items.append(motionDetectTimeout)
        
        //    Motion Detect Sensitivity=[0];set motion detect Sensitivity,0:high,1:nomal,2:low
        let motionDetectSensitivity = ConfigItem(title: "Motion Detect Sensitivity", params: [
            "High",
            "Normal",
            "Low",
            ],
            index: 0)
        items.append(motionDetectSensitivity)
        
        
        //    Enable Manual AE Lock or AWB Lock = [0]; 0: Not enabled; 1: AE Lock and AWB Lock; 2: AE Lock only; 3: AWB Lock only.
        //    (Long 3 sec. Mode button press required to turn AEL or AWBL on)
        
        let enableManualLock = ConfigItem(title: "Enable Manual Lock", params: [
            "AE Lock and AWB Lock",
            "AE Lock Only",
            "AWB Lock Only",
            ],
            index: 0)
        items.append(enableManualLock)
        
        //    White Balance=[0];Set White Balance,0:Auto,1:Sunny,2:Cloudy,3:Tungsten,4:Fluorescent,5:Custom WB1,6:Custom WB2,7:Custom WB3
        //    Sunny(5000-6500K) used for sunny with clear sky(Rgain=301,Ggain=256,Bgain=368);
        //    Cloudy(9000-10000K) used for shade or heavily overcast sky(Rgain=301,Ggain=256,Bgain=384);
        //    Tungsten(2500-3500K) used for Tungsten bulb (or called Incandescent light)(Rgain=184,Ggain=256,Bgain=711);
        //    Fluorescent(4000-5000K) used for fluorescent lamps(Rgain=333,Ggain=256,Bgain=525);
        //    Customized White Balance 1 Red Gain=[256],Green Gain=[256],Blue Gain=[256];
        //    Customized White Balance 2 Red Gain=[256],Green Gain=[256],Blue Gain=[256];
        //    Customized White Balance 3 Red Gain=[256],Green Gain=[256],Blue Gain=[256];
        //    Set red ,green,blue gain,256 is 1x gain,value from 100 to 999;
        
        let whiteBalance = ConfigItem(title: "White Balance", params: [
            "Auto",
            "Sunny",
            "Cloudy",
            "Tungsten",
            "Flourescent",
            "Custom White Balance 1",
            "Custom White Balance 2",
            "Custom White Balance 3",
            ],
            index: 0)
        items.append(whiteBalance)
        
        //    Color Effect=[0];Set Color Effect,0:Standard,1:Mono,2:Sepia,3:Cool,4:Cooler,5:Warm,6:Warmer,7:Vivid
        let colorEffect = ConfigItem(title: "Color Effect", params: [
            "Standard",
            "Mono",
            "Sepia",
            "Cool",
            "Cooler",
            "Warm",
            "Warmer",
            "Vivid"
            ],
            index: 0)
        items.append(colorEffect)
        
        //    Exposure Value= [0] ;Exposure compensation,values from -128 to +128,In 1 increments,default value is 0,
        
        let exposureValue = ConfigItem(title: "Exposure Value", params:
            ["-128", "-127", "-126", "-125", "-124", "-123", "-122", "-121", "-120", "-119", "-118", "-117", "-116", "-115", "-114", "-113", "-112", "-111", "-110", "-109", "-108", "-107", "-106", "-105", "-104", "-103", "-102", "-101", "-100", "-99", "-98", "-97", "-96", "-95", "-94", "-93", "-92", "-91", "-90", "-89", "-88", "-87", "-86", "-85", "-84", "-83", "-82", "-81", "-80", "-79", "-78", "-77", "-76", "-75", "-74", "-73", "-72", "-71", "-70", "-69", "-68", "-67", "-66", "-65", "-64", "-63", "-62", "-61", "-60", "-59", "-58", "-57", "-56", "-55", "-54", "-53", "-52", "-51", "-50", "-49", "-48", "-47", "-46", "-45", "-44", "-43", "-42", "-41", "-40", "-39", "-38", "-37", "-36", "-35", "-34", "-33", "-32", "-31", "-30", "-29", "-28", "-27", "-26", "-25", "-24", "-23", "-22", "-21", "-20", "-19", "-18", "-17", "-16", "-15", "-14", "-13", "-12", "-11", "-10", "-9", "-8", "-7", "-6", "-5", "-4", "-3", "-2", "-1", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128"],
            index: 0)
        items.append(exposureValue)
        
        //    Contrast= [0]  ;Set Contrast,values from -128 to +128,In 1 increments,default value is 0,
        let contrast = ConfigItem(title: "Contrast", params:
            ["-128", "-127", "-126", "-125", "-124", "-123", "-122", "-121", "-120", "-119", "-118", "-117", "-116", "-115", "-114", "-113", "-112", "-111", "-110", "-109", "-108", "-107", "-106", "-105", "-104", "-103", "-102", "-101", "-100", "-99", "-98", "-97", "-96", "-95", "-94", "-93", "-92", "-91", "-90", "-89", "-88", "-87", "-86", "-85", "-84", "-83", "-82", "-81", "-80", "-79", "-78", "-77", "-76", "-75", "-74", "-73", "-72", "-71", "-70", "-69", "-68", "-67", "-66", "-65", "-64", "-63", "-62", "-61", "-60", "-59", "-58", "-57", "-56", "-55", "-54", "-53", "-52", "-51", "-50", "-49", "-48", "-47", "-46", "-45", "-44", "-43", "-42", "-41", "-40", "-39", "-38", "-37", "-36", "-35", "-34", "-33", "-32", "-31", "-30", "-29", "-28", "-27", "-26", "-25", "-24", "-23", "-22", "-21", "-20", "-19", "-18", "-17", "-16", "-15", "-14", "-13", "-12", "-11", "-10", "-9", "-8", "-7", "-6", "-5", "-4", "-3", "-2", "-1", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128"],
            index: 0)
        items.append(contrast)
        
        //    Saturation= [0]  ;Set Image Saturation,values from -128 to +128,In 1 increments,default value is 0,
        let saturation = ConfigItem(title: "Saturation", params:
            ["-128", "-127", "-126", "-125", "-124", "-123", "-122", "-121", "-120", "-119", "-118", "-117", "-116", "-115", "-114", "-113", "-112", "-111", "-110", "-109", "-108", "-107", "-106", "-105", "-104", "-103", "-102", "-101", "-100", "-99", "-98", "-97", "-96", "-95", "-94", "-93", "-92", "-91", "-90", "-89", "-88", "-87", "-86", "-85", "-84", "-83", "-82", "-81", "-80", "-79", "-78", "-77", "-76", "-75", "-74", "-73", "-72", "-71", "-70", "-69", "-68", "-67", "-66", "-65", "-64", "-63", "-62", "-61", "-60", "-59", "-58", "-57", "-56", "-55", "-54", "-53", "-52", "-51", "-50", "-49", "-48", "-47", "-46", "-45", "-44", "-43", "-42", "-41", "-40", "-39", "-38", "-37", "-36", "-35", "-34", "-33", "-32", "-31", "-30", "-29", "-28", "-27", "-26", "-25", "-24", "-23", "-22", "-21", "-20", "-19", "-18", "-17", "-16", "-15", "-14", "-13", "-12", "-11", "-10", "-9", "-8", "-7", "-6", "-5", "-4", "-3", "-2", "-1", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128"],
            index: 0)
        items.append(saturation)
        
        //    Sharpness= [0]  ;Set Image Sharpness,values from -128 to +128,In 1 increments,default value is 0,
        let sharpness = ConfigItem(title: "Sharpness", params:
            ["-128", "-127", "-126", "-125", "-124", "-123", "-122", "-121", "-120", "-119", "-118", "-117", "-116", "-115", "-114", "-113", "-112", "-111", "-110", "-109", "-108", "-107", "-106", "-105", "-104", "-103", "-102", "-101", "-100", "-99", "-98", "-97", "-96", "-95", "-94", "-93", "-92", "-91", "-90", "-89", "-88", "-87", "-86", "-85", "-84", "-83", "-82", "-81", "-80", "-79", "-78", "-77", "-76", "-75", "-74", "-73", "-72", "-71", "-70", "-69", "-68", "-67", "-66", "-65", "-64", "-63", "-62", "-61", "-60", "-59", "-58", "-57", "-56", "-55", "-54", "-53", "-52", "-51", "-50", "-49", "-48", "-47", "-46", "-45", "-44", "-43", "-42", "-41", "-40", "-39", "-38", "-37", "-36", "-35", "-34", "-33", "-32", "-31", "-30", "-29", "-28", "-27", "-26", "-25", "-24", "-23", "-22", "-21", "-20", "-19", "-18", "-17", "-16", "-15", "-14", "-13", "-12", "-11", "-10", "-9", "-8", "-7", "-6", "-5", "-4", "-3", "-2", "-1", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128"],
            index: 0)
        items.append(sharpness)
        
        
        //    {TLCAM MOV:TLCAM Mobius ActionCam 2015/05/13 v2.37}
        // TODO
        
        //    {LDTLCAM,v003}
        // TODO
        
        
        
        //    let v = ConfigItem(title: "", params: [
        //        "",
        //        ""
        //        ],
        //        index: 0)
        
        
    }
    
}
