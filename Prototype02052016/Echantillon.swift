//
//  Echantillon.swift
//  Prototype02052016
//
//  Created by  administrateur on 23/05/2016.
//  Copyright © 2016 administrateur. All rights reserved.
//

import Foundation
import UIKit

class Echantillon {
    
    //MARK: Properties
    var nomEchantillon : String
    var referenceEchantillon : String
    var quantiteEchantillon : Int
    
    
    //MARK: initialization
    init?(nomEchantillon : String, referenceEchantillon : String, quantiteEchantillon : Int){
        
        self.nomEchantillon = nomEchantillon
        self.referenceEchantillon = referenceEchantillon
        self.quantiteEchantillon = quantiteEchantillon
        
        if nomEchantillon.isEmpty || referenceEchantillon.isEmpty || quantiteEchantillon < 0 {
            return nil
        }
        
    }
    
}