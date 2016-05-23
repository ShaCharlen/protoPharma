//
//  Panier.swift
//  Prototype02052016
//
//  Created by  administrateur on 23/05/2016.
//  Copyright © 2016 administrateur. All rights reserved.
//

import Foundation
import UIKit

class Panier: NSObject, NSCoding {
    
    //MARK: Archiving Paths
    static let DocumentsDirectory = NSFileManager().URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask).first!
    
    static let ArchiveURL = DocumentsDirectory.URLByAppendingPathComponent("paniers")
    
    //MARK: Types
    struct PropertyKey{
        static let nomKey = "nom"
        static let medecinKey = "medecin"
        static let etatKey = "etat"
        static let tabEchantillonsKey = "tabEchantillons"
    }
    
    //MARK: Properties
    var nom : String
    var medecin : String?
    var etat : Etat
    var contenu : [Echantillon]?
    
    enum Etat: String {
        case provisoire, attribue, soumis, rejete
    }
    
    //MARK: initialization
    init?(nom : String, medecin : String? , etat : Etat, contenu : [Echantillon]?){
        
        self.nom = nom
        self.medecin = medecin
        self.etat = etat
        self.contenu = contenu
        
        if(nom.isEmpty){
            return nil
        }
        
    }
    
    //MARK: NSCoding
    func encodeWithCoder(aCoder: NSCoder) {
        
        aCoder.encodeObject(nom, forKey: PropertyKey.nomKey)
        aCoder.encodeObject(medecin, forKey: PropertyKey.medecinKey)
        aCoder.encodeObject(etat.rawValue, forKey: PropertyKey.etatKey)
        aCoder.encodeObject(contenu, forKey: PropertyKey.tabEchantillonsKey)
        
    }
    
    required convenience init?(coder aDecoder: NSCoder){
        
        let nom = aDecoder.decodeObjectForKey(PropertyKey.nomKey) as! String
        let medecin = aDecoder.decodeObjectForKey(PropertyKey.medecinKey) as? String
        //let etat = aDecoder.decodeObjectForKey(PropertyKey.etatKey) as! Etat
        let contenu = aDecoder.decodeObjectForKey(PropertyKey.tabEchantillonsKey) as? [Echantillon]
        
        self.init(nom: nom, medecin: medecin, etat: .provisoire, contenu: contenu)
        
        
    }
    
}

