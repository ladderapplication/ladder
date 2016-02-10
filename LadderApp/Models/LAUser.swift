//
//  LAUser.swift
//  LadderApp
//
//  Created by Cole Dunsby on 2016-02-02.
//  Copyright © 2016 Ladder. All rights reserved.
//

import Parse

class LAUser: PFUser {

    @NSManaged var firstName: String?
    @NSManaged var lastName: String?
    @NSManaged var phone: String?
    @NSManaged var instagramUser: String?
    @NSManaged var profileImage: PFFile?
    @NSManaged var location: PFGeoPoint?
    @NSManaged var socialCircles: [LASocialCircle]?
    @NSManaged var rating: Int
    
    override class func initialize() {
        struct Static {
            static var onceToken: dispatch_once_t = 0
        }
        dispatch_once(&Static.onceToken) {
            self.registerSubclass()
        }
    }
    
}
