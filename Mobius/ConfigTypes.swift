//
//  Config.swift
//  Mobius
//
//  Created by Zakk Hoyt on 2/19/16.
//  Copyright © 2016 Zakk Hoyt. All rights reserved.
//

import UIKit


//    Date format=[0];set date format,0:YYYY/MM/DD, 1:DD/MM/YYYY, 2:MM/DD/YYYY
//enum DateFormat: UInt {
//    case
//}

//    Date time=[2013/07/16-10:06:33];date time setting,yyyy/mm/dd-hh:mm:ss,dd/mm/yyyy-hh:mm:ss,or mm/dd/yyyy-hh:mm:ss

//    Default Mode=[0];set power-on default mode,0:Video Mode 1,1:Video Mode 2,2:Photo Mode


//  Movie Resolution=[0];0:1080p(Wide AOV),1:1080p(Narrow AOV),2:720p(Wide AOV),3:720p(Narrow AOV),4:WVGA (Wide AOV), 5:WVGA (Narrow AOV),
enum MovieResolution: UInt {
    case TenEightyP = 0
    case SevenTwentyP = 1

    func name() -> String {
        return "Movie Resolution"
    }
    
    func description() -> String {
        switch self {
        case TenEightyP:
            return "1080p"
        case SevenTwentyP:
            return "720p"
        }
    }
}

//  Movie Frame Rate=[3];1:60fps (only for wvga and 720p Narrow AOV),2:50fps (only for wvga and 720p Narrow AOV),3:30fps,4:25 fps,5:20 fps,6:15 fps,7:10 fps,8:5 fps,
enum MovieFrameRate: UInt {
    case Sixty = 1
    case Thirty = 2
    
    func name() -> String {
        return "Movie Frame Rate"
    }

    
    func description() -> String {
        switch self {
        case .Sixty:
            return "60fps"
        case .Thirty:
            return "30fps"
        }
    }
}

//  Movie Time Lapse Record=[0];0:off,1:0.25s,2:0.5s,3:1s,4:2s,5:5s,6:10s,7:30s,8:Custom

enum MovieTimeLapse: UInt {
    case Off = 0
    case FourEveryOneSecond = 1
    case TwoEveryOneSecond = 2
    case OneEveryOneSecond = 3
    case OneEveryTwoSeconds = 4
    case OneEveryFiveSeconds = 5
    case OneEveryTenSeconds = 6
    case OneEveryThirtySeconds = 7
    case Custom = 8
    
    func name() -> String {
        return "Movie Time Lapse Record"
    }

 
    func description() -> String {
        switch self {
        case .Off:
            return "Off"
        case .FourEveryOneSecond:
            return "4 frames every second"
        case .TwoEveryOneSecond:
            return "2 frames every second"
        case .OneEveryOneSecond:
            return "1 frame every second"
        case .OneEveryTwoSeconds:
            return "1 frame every 2 seconds"
        case .OneEveryFiveSeconds:
            return "1 frame every 5 seconds"
        case .OneEveryTenSeconds:
            return "1 frame every 10 seconds"
        case .OneEveryThirtySeconds:
            return "1 frame every 30 seconds"
        case .Custom:
            return "Custom"
        }
    }
}

//  Movie Time Lapse Record Customized Value=[1]    ; in minutes, values from 1 to 1440 (1 day)
enum MovieTimeLapseRecordCustomizedValue {
    // TODO:
    func name() -> String {
        return "Movie Frame Rate"
    }
}


//  Movie Sound=[1];set movie sound,0:Mute,1:On,
enum MovieSound: UInt {
    case Mute = 0
    case On = 1
    
    func name() -> String {
        return "Movie Sound"
    }
    
    func description() -> String {
        switch self {
        case .Mute:
            return "Mute"
        case .On:
            return "On"
        }
    }
}


//    Movie Cycle time=[2];movie cycle time,0:3 minutes,1:5 minutes,2:10 minutes,3:15 minutes,4:max to 4G byte,
enum MovieCycleTime: UInt {
    case ThreeMinutes = 0
    case FiveMinutes = 1
    case TenMinutes = 2
    case FifteenMinutes = 3
    case Max = 4
    
    func name() -> String {
        return "Movie Cycle Time"
    }

    
    func description() -> String {
        switch self {
        case .ThreeMinutes:
            return "3 minutes"
        case .FiveMinutes:
            return "5 minutes"
        case .TenMinutes:
            return "10 minutes"
        case .FifteenMinutes:
            return "15 minutes"
        case .Max:
            return "Max"
        }
    }
}


//    Movie Loop Recording=[0];set loop recording on or off,0:off,1:on,
enum MovieLoopRecording: UInt {
    case Off = 0
    case On = 1

    func name() -> String {
        return "Movie Loop Recording"
    }

    
    func description() -> String {
        switch self {
        case .Off:
            return "Off"
        case .On:
            return "On"
        }
    }
}

//    Movie Flip=[0];set movie rotate,0:off,1:on,
enum MovieFlip: UInt {
    case Off = 0
    case On = 1
    
    func name() -> String {
        return "Movie Flip"
    }

    
    func description() -> String {
        switch self {
        case .Off:
            return "Off"
        case .On:
            return "On"
        }
    }
}
//    Movie Time stamp=[1];set date/time stamp on or off,0:off,1:on,
enum MovieTimeStamp: UInt {
    case Off = 0
    case On = 1
    
    func name() -> String {
        return "Movie Time Stamp"
    }

    
    func description() -> String {
        switch self {
        case .Off:
            return "Off"
        case .On:
            return "On"
        }
    }
}
//    Movie quality=[1];set movie quality,set movie data rate,0:Super,1:Standard,2:Low,
enum MovieQuality: UInt {
    case Super = 0
    case Standard = 1
    case Low = 2
    
    func name() -> String {
        return "Movie Quality"
    }

    func description() -> String {
        switch self {
        case .Super:
            return "Super"
        case .Standard:
            return "Standard"
        case .Low:
            return "Low"
        }
    }
}

//    Movie high dynamic range=[0];set movie high dynamic range,0:off,1:on,2:Enhanced Brightness,
enum MovieHighDynamicRange: UInt {
    case Off = 0
    case On = 1
    case EnhancedBrightness = 2
    
    func name() -> String {
        return "Movie High Dynamic Range"
    }

    
    func description() -> String {
        switch self {
        case .Off:
            return "Off"
        case .On:
            return "On"
        case .EnhancedBrightness:
            return "Enhanced Brightness"
        }
    }
}

//    Movie file format=[0];set movie file format,0:MOV,1:AVI,2:MP4,3:WAV (Sound Only)
enum MovieFileFormat: UInt {
    case MOV = 0
    case AVI = 1
    case MP4 = 2
    case WAV = 3
    
    func name() -> String {
        return "Movie File Format"
    }

    
    func description() -> String {
        switch self {
        case .MOV:
            return ".mov"
        case .AVI:
            return ".avi"
        case .MP4:
            return ".mp4"
        case .WAV:
            return ".wav"
        }
    }
}

//    Photo Mode Capture Size=[0];set photo size,0:2304x1536,1:1920x1080,2:1280x720,3:848x480
enum PhotoCaptureSize: UInt {
    case Size_2304x1536 = 0
    case Size_1920x1080 = 1
    case Size_1280x720 = 2
    case Size_848x480 = 3
    
    func name() -> String {
        return "Photo Capture Size"
    }

    func description() -> String {
        switch self {
        case .Size_2304x1536:
            return "2304x1536"
        case .Size_1920x1080:
            return "1920x1080"
        case .Size_1280x720:
            return "1280x720"
        case .Size_848x480:
            return "848x480"
        }
    }
}

//    Photo Set Time Lapse Shooting=[0],0:off,1:0.25s,2:0.5s,3:1s,4:2s,5:5s,6:10s,7:30s,8:Custom
enum PhotoTimeLapse: UInt {
    case Off = 0
    case FourEveryOneSecond = 1
    case TwoEveryOneSecond = 2
    case OneEveryOneSecond = 3
    case OneEveryTwoSeconds = 4
    case OneEveryFiveSeconds = 5
    case OneEveryTenSeconds = 6
    case OneEveryThirtySeconds = 7
    case Custom = 8
    
    func name() -> String {
        return "Photo Set Time Lapse Shooting"
    }
    
    
    func description() -> String {
        switch self {
        case .Off:
            return "Off"
        case .FourEveryOneSecond:
            return "4 frames every second"
        case .TwoEveryOneSecond:
            return "2 frames every second"
        case .OneEveryOneSecond:
            return "1 frame every second"
        case .OneEveryTwoSeconds:
            return "1 frame every 2 seconds"
        case .OneEveryFiveSeconds:
            return "1 frame every 5 seconds"
        case .OneEveryTenSeconds:
            return "1 frame every 10 seconds"
        case .OneEveryThirtySeconds:
            return "1 frame every 30 seconds"
        case .Custom:
            return "Custom"
        }
    }
}

//    Photo Time Lapse Shooting Customized Value=[1]    ; in minutes, values from 1 to 43,200 (30 days)
// see Mov


//    When time lapse shooting set to 5Min or above, Mobius will work in power saving mode (auto turns on/off).


//    Photo Flip=[0];set Photo rotate,0:off,1:flip on
enum PhotoFlip: UInt {
    case Off = 0
    case On = 1
    
    func name() -> String {
        return "Photo Flip"
    }

    
    func description() -> String {
        switch self {
        case .Off:
            return "Off"
        case .On:
            return "On"
        }
    }
}


//    Photo Time stamp=[1];set date/time stamp on or off,0:off,1:on,
enum PhotoTimeStamp: UInt {
    case Off = 0
    case On = 1
    
    func name() -> String {
        return "Photo Time Stamp"
    }

    
    func description() -> String {
        switch self {
        case .Off:
            return "Off"
        case .On:
            return "On"
        }
    }
}


//    Power on=[1];set system  power on time,0:delay,1:fast
enum PowerOn: UInt {
    case Delay = 0
    case Fast = 1
    
    func name() -> String {
        return "Power On"
    }
    
    
    func description() -> String {
        switch self {
        case .Delay:
            return "Delay"
        case .Fast:
            return "Fast"
        }
    }
}


//    Power off=[1];set system auto power off time when system pending,0:off,1:30 seconds,2:1 minutes,3:2 minutes,
enum PowerOff: UInt {
    case Off = 0
    case After30Seconds = 1
    case After1Minute = 2
    case After2Minutes = 3
    
    func name() -> String {
        return "Power Off"
    }
    
    
    func description() -> String {
        switch self {
        case .Off:
            return "Off"
        case .After30Seconds:
            return "30 seconds"
        case .After1Minute:
            return "1 minute"
        case .After2Minutes:
            return "2 minutes"
        }
    }
}



//    Auto Record with External Power=[0];set connect with power to start video recording automatically,0:off,1:on,
enum AutoRecordWithExternalPower: UInt {
    case Off = 0
    case On = 1
    
    func name() -> String {
        return "Auto Record With External Power"
    }
    
    
    func description() -> String {
        switch self {
        case .Off:
            return "Off"
        case .On:
            return "On"
        }
    }
}


//    One Power Button to Auto Record=[0];set press power key to start video recording automatically,0:off,1:on,
enum OnePowerButtonToAutoRecord: UInt {
    case Off = 0
    case On = 1
    
    func name() -> String {
        return "One Power Button To Auto Record"
    }
    
    
    func description() -> String {
        switch self {
        case .Off:
            return "Off"
        case .On:
            return "On"
        }
    }
}


//    Auto Off with External Power disconnected=[0],0:Immediately,1:delay 10s;2:delay 30s;3:delay 60s;4:record to low battery power off;5:change to motion detect;
enum AutoOffWithExternalPowerDisconnected: UInt {
    case Immediately = 0
    case Delay10Seconds = 1
    case Delay30Seconds = 2
    case Delay60Seconds = 3
    case RecordUntilLowBattery = 4
    case ChangeToMotionDetect = 5
    
    func name() -> String {
        return "One Power Button To Auto Record"
    }
    
    
    func description() -> String {
        switch self {
        case .Immediately:
            return "Immediately"
        case .Delay10Seconds:
            return "Delay 10 seconds"
        case .Delay30Seconds:
            return "Delay 30 seconds"
        case .Delay60Seconds:
            return "Delay 60 seconds"
        case .RecordUntilLowBattery:
            return "Record Until Low Battery"
        case .ChangeToMotionDetect:
            return "Change To Motion Detect"
        }
    }
}
//    LED=[1];set LED flicker when recording,0:off,1:on,
enum LED: UInt {
    case Off = 0
    case On = 1
    
    func name() -> String {
        return "LED"
    }
    
    
    func description() -> String {
        switch self {
        case .Off:
            return "Off"
        case .On:
            return "On"
        }
    }
}
//    Charge from USB Host=[0]; when connecting with USB host, charge camera or not,0:on,1:off

enum ChargeFromUSBHost: UInt {
    case Off = 0
    case On = 1
    
    func name() -> String {
        return "Charge From USB Host"
    }
    
    
    func description() -> String {
        switch self {
        case .Off:
            return "Off"
        case .On:
            return "On"
        }
    }
}

//    Lens option =[0];select lens,0:lens A,1:lens B,2:lens C
enum LensOption: UInt {
    case LensA = 0
    case LensB = 1
    case LensC = 2
    
    func name() -> String {
        return "Lens Option"
    }
    
    
    func description() -> String {
        switch self {
        case .LensA:
            return "Lens A"
        case .LensB:
            return "Lens B"
        case .LensC:
            return "Lens C"
        }
    }
}

//    Light frequency =[1];set light source frequency,0:50 HZ,1:60 HZ
enum LightFrequency: UInt {
    case Freq50Hz = 0
    case Freq60Hz = 1
    
    func name() -> String {
        return "Light Frequency"
    }
    
    
    func description() -> String {
        switch self {
        case .Freq50Hz:
            return "50 Hz"
        case .Freq60Hz:
            return "60 Hz"
        }
    }
}


//    Web camera mode =[0];set web camera mode,0:USB video class(Mjpg codec),1:USB video and audio class(H.264 codec)
enum WebCameraMode: UInt {
    case USBVideoClassMJPG = 0
    case USBVideoClassH264 = 1
    
    func name() -> String {
        return "Web Camera Mode"
    }
    
    
    func description() -> String {
        switch self {
        case .USBVideoClassMJPG:
            return "MJPG"
        case .USBVideoClassH264:
            return "H264"
        }
    }
}



//    Web camera Flip=[0];set web camera rotate,0:off,1:flip on
enum WebCameraFlip: UInt {
    case Off = 0
    case On = 1
    
    func name() -> String {
        return "Web Camera Flip"
    }
    
    
    func description() -> String {
        switch self {
        case .Off:
            return "Off"
        case .On:
            return "On"
        }
    }
}

//    TV out=[0];set Tv out,0:NTSC,1:PAL,
enum TVOut: UInt {
    case NTSC = 0
    case PAL = 1
    
    func name() -> String {
        return "TV Out"
    }
    
    
    func description() -> String {
        switch self {
        case .NTSC:
            return "NTSC"
        case .PAL:
            return "PAL"
        }
    }
}
//    TV Display Ratio=[0];set display ratio,0:4*3,1:16*9
enum TVDisplayRatio: UInt {
    case Ratio_4_3 = 0
    case Ratio_16_9 = 1
    
    func name() -> String {
        return "TV Display Ratio"
    }
    
    
    func description() -> String {
        switch self {
        case .Ratio_4_3:
            return "4:3"
        case .Ratio_16_9:
            return "16:9"
        }
    }
}


//    TF card format filesystem=[0];format TF card to FAT32 or exFAT,0:FAT32,1:exFAT
enum TFCardFormat: UInt {
    case Fat32 = 0
    case ExFat = 1
    
    func name() -> String {
        return "TF Card Format"
    }
    
    
    func description() -> String {
        switch self {
        case .Fat32:
            return "FAT32"
        case .ExFat:
            return "exFAT"
        }
    }
}

//
//    Motion Detect=[0];set motion detect,0:off,1:on
enum MotionDetect: UInt {
    case Off = 0
    case On = 1
    
    func name() -> String {
        return "Motion Detect"
    }
    
    
    func description() -> String {
        switch self {
        case .Off:
            return "Off"
        case .On:
            return "On"
        }
    }
}


//    Motion Detect Timeout=[2];set motion detect timeout,0:5s,1:15s,2:30s,3:60s


//    Motion Detect Sensitivity=[0];set motion detect Sensitivity,0:high,1:nomal,2:low
//
//    Enable Manual AE Lock or AWB Lock = [0]; 0: Not enabled; 1: AE Lock and AWB Lock; 2: AE Lock only; 3: AWB Lock only.
//    (Long 3 sec. Mode button press required to turn AEL or AWBL on)
//    White Balance=[0];Set White Balance,0:Auto,1:Sunny,2:Cloudy,3:Tungsten,4:Fluorescent,5:Custom WB1,6:Custom WB2,7:Custom WB3
//    Sunny(5000-6500K) used for sunny with clear sky(Rgain=301,Ggain=256,Bgain=368);
//    Cloudy(9000-10000K) used for shade or heavily overcast sky(Rgain=301,Ggain=256,Bgain=384);
//    Tungsten(2500-3500K) used for Tungsten bulb (or called Incandescent light)(Rgain=184,Ggain=256,Bgain=711);
//    Fluorescent(4000-5000K) used for fluorescent lamps(Rgain=333,Ggain=256,Bgain=525);
//    Customized White Balance 1 Red Gain=[256],Green Gain=[256],Blue Gain=[256];
//    Customized White Balance 2 Red Gain=[256],Green Gain=[256],Blue Gain=[256];
//    Customized White Balance 3 Red Gain=[256],Green Gain=[256],Blue Gain=[256];
//    Set red ,green,blue gain,256 is 1x gain,value from 100 to 999;
//
//    Color Effect=[0];Set Color Effect,0:Standard,1:Mono,2:Sepia,3:Cool,4:Cooler,5:Warm,6:Warmer,7:Vivid
//    Exposure Value= [0] ;Exposure compensation,values from -128 to +128,In 1 increments,default value is 0,
//    Contrast= [0]  ;Set Contrast,values from -128 to +128,In 1 increments,default value is 0,
//    Saturation= [0]  ;Set Image Saturation,values from -128 to +128,In 1 increments,default value is 0,
//    Sharpness= [0]  ;Set Image Sharpness,values from -128 to +128,In 1 increments,default value is 0,
//
//
//    {TLCAM MOV:TLCAM Mobius ActionCam 2015/05/13 v2.37}
//    {LDTLCAM,v003}




