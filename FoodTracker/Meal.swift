//
//  Meal.swift
//  FoodTracker
//
//  Created by Tenzin Phagdol on 2016-04-10.
//  Copyright © 2016 Jeffrey Ip. All rights reserved.
//

import UIKit

//class Meal: NSObject, NSCoding
class Meal: NSObject {
    //MARK: Properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    //Mark: Archiving Paths
    
//    static let DocumentsDirectory = NSFileManager().URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask).first!
//    static let ArchiveURL = DocumentsDirectory.URLByAppendingPathComponent("meals")
    
    //MARK: Types
    
//    struct PropertyKey {
//        static let nameKey = "name"
//        static let photoKey = "photo"
//        static let ratingKey = "rating"
//    }
    
    //MARK: Initialization
    
    init?(name: String, photo: UIImage?, rating: Int) {
        //Initialize stored properties:
        self.name = name
        self.photo = photo
        self.rating = rating
        
//        super.init()
        
        //Initialization should fail if there is no name or if the rating is negative.
        if name.isEmpty || rating < 0 {
            return nil
        }
    }

//    //MARK: NSCoding
//    func encodeWithCoder(aCoder: NSCoder) {
//        aCoder.encodeObject(name, forKey: PropertyKey.nameKey)
//        aCoder.encodeObject(photo, forKey: PropertyKey.photoKey)
//        aCoder.encodeInteger(rating, forKey: PropertyKey.ratingKey)
//    }
//    
//    required convenience init?(coder aDecoder: NSCoder) {
//        let name = aDecoder.decodeObjectForKey(PropertyKey.nameKey) as! String
//        //Because photo is an optional property of Meal, use conditional cast.
//        let photo = aDecoder.decodeObjectForKey(PropertyKey.photoKey) as? UIImage
//        let rating = aDecoder.decodeIntegerForKey(PropertyKey.ratingKey)
//        
//        //Must call designated initializer
//        self.init(name: name, photo: photo, rating: rating)
//    }
    
}
