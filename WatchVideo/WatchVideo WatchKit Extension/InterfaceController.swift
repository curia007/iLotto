//
//  InterfaceController.swift
//  WatchVideo WatchKit Extension
//
//  Created by Carmelo I. Uria on 3/16/15.
//  Copyright (c) 2015 Carmelo Uria Corporation. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController
{
    @IBOutlet weak var imageInterface: WKInterfaceImage!

    //var images: UIImage? = UIImage.animatedImageNamed("vlcsnap-000", duration: 300)
    
    override func awakeWithContext(context: AnyObject?)
    {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        //let images: UIImage = context as! UIImage
        
        /*
        let userInfo: [NSObject: AnyObject] = [:]
        WKInterfaceController.openParentApplication(userInfo, reply: { (replyInfo, error) -> Void in
            
            if (error != nil)
            {
                println("[\(__FUNCTION__)] watch error: \(error)")
                return
            }
            
            let images: UIImage = replyInfo["images"] as! UIImage
            self.imageInterface.setImage(images)
            self.imageInterface.startAnimating()
        })
*/
        self.imageInterface.setImageNamed("vlcsnap-000")
        let range: NSRange = NSMakeRange(0, 88)
        self.imageInterface.startAnimatingWithImagesInRange(range, duration: 15, repeatCount: -1)

    }

    override func willActivate()
    {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
       
    }

    override func didDeactivate()
    {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
