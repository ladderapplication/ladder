//
//  LASocialCircle.swift
//  LadderApp
//
//  Created by Cole Dunsby on 2016-02-09.
//  Copyright © 2016 Ladder. All rights reserved.
//

import Parse

class LASocialCircle: PFObject, PFSubclassing {

    @NSManaged var name: String?
    @NSManaged var location: PFGeoPoint?
    
    override class func initialize() {
        struct Static {
            static var onceToken: dispatch_once_t = 0
        }
        dispatch_once(&Static.onceToken) {
            self.registerSubclass()
        }
    }
    
    static func parseClassName() -> String {
        return "SocialCircle"
    }
    
}
