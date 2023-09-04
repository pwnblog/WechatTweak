import Orion

class NoAutoPlay: ClassHook<NSObject> {
    static let targetName="WCFacade"
    func isTimelineVideoSightAutoPlayEnable() -> Bool {
        return false
    }
}

class NoAds1: ClassHook<NSObject> {
    static let targetName="WCDataItem"
    func isVideoAd() -> Bool {
        return false
    }
    func isAd() -> Bool {
        return false
    }
}

class NoAds2: ClassHook<NSObject> {
    static let targetName="WCMediaItem"
    func isAd() -> Bool {
        return false
    }
}

class NoAds3: ClassHook<NSObject> {
    static let targetName="WCAdvertiseStorage"
    func setOAdvertiseData(_:id_t) -> Void {
        return
    }
}

class NoJailbreak: ClassHook<NSObject> {
    static let targetName="JailBreakHelper"
    func IsJailBreak() -> Bool {
        return false
    }
    func HasInstallJailbreakPlugin(_:Any) -> Bool {
        return false
    }
    func JailBroken() -> Bool {
        return false
    }
}

// class NoRecall: ClassHook<NSObject> {
//     static let targetName="CMessageMgr"
//     func DelMsg(_ a:Any?,_ b:Any?,_ c:Any?) -> Void {
//         return orig.DelMsg(a, b, c)
//     }
// }

// class NoAds4: ClassHook<NSObject> {
//     static let targetName="WCAdvertiseDataHelper"
//     func tryLoadAdvertiseData() -> Void {
//         return
//     }
//     func saveAdvertiseDatas() -> Void {
//         return
//     }
//     func IsAdvertiseDataValid(_:id_t, __:id_t) -> Bool {
//         return false
//     }
//     func addAdvertiseData(_:id_t, __:Bool) -> Void {
//         return 
//     }
//     func addAdvertiseDataList(_:id_t) -> Void {
//         return 
//     }
//     func updateAdvertiseData(_:id_t) -> Void {
//         return 
//     }
//     func updateAdvertiseDataList(_:id_t) -> Void {
//         return 
//     }
//     func addAdvertiseMsgXml(_:id_t) -> Void {
//         return 
//     }
// }