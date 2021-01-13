//
//  AdditionalInformationModel.swift
//  Example
//
//  Created by Qiscus on 03/12/20.
//  Copyright © 2020 Qiscus. All rights reserved.
//

import Foundation
import SwiftyJSON

public class AdditionalInformationModel : NSObject {
    public var titleInformation : String = ""
    public var descriptionInformation : String = ""
    
    init(json: JSON) {
        self.titleInformation             = json["key"].string ?? ""
        self.descriptionInformation       = json["value"].string ?? ""
    }
    
    override init(){
        
    }
}