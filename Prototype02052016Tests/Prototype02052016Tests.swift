//
//  Prototype02052016Tests.swift
//  Prototype02052016Tests
//
//  Created by  administrateur on 02/05/2016.
//  Copyright © 2016 administrateur. All rights reserved.
//

import XCTest
@testable import Prototype02052016

class Prototype02052016Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testInitPanier (){
        
        //Echantillons pour le test
        let echantillon1 = Echantillon(nomEchantillon: "Lexomil", referenceEchantillon: "010255555", quantiteEchantillon: 50)
        let echantillon2 = Echantillon(nomEchantillon: "Doliprane", referenceEchantillon: "010256655", quantiteEchantillon: 10)
        
        //Cas passants
        let initPanierPassantSansContenu = Panier(nom: "Gros Panier", medecin: "Nom médecin", etat: .provisoire, contenu:nil)
        XCTAssertNotNil(initPanierPassantSansContenu)
        
        let initPanierPassantSansMedecin = Panier(nom: "Mon Panier", medecin: nil, etat: .attribue, contenu:nil)
        XCTAssertNotNil(initPanierPassantSansMedecin)
        
        let initPanierPassantAvecEchantillons = Panier(nom: "Mon Panier", medecin: "Nom médecin", etat: .soumis, contenu: [echantillon1!, echantillon2!])
        XCTAssertNotNil(initPanierPassantAvecEchantillons)
        
        //Cas non passant
        let initPanierNonPassantSansNom = Panier(nom: "", medecin: "", etat: .provisoire, contenu:nil)
        XCTAssertNil(initPanierNonPassantSansNom)
        
        
    }
    
    func testInitEchantillon(){
        
        //Cas passant
        let echantillonPassant = Echantillon(nomEchantillon: "Lexomil", referenceEchantillon: "010255555", quantiteEchantillon: 50)
        XCTAssertNotNil(echantillonPassant)
        
        //Cas  non passants
        let echantillonNonPassantSansNom = Echantillon(nomEchantillon: "", referenceEchantillon: "010255555", quantiteEchantillon: 50)
        XCTAssertNil(echantillonNonPassantSansNom)
        
        let echantillonNonPassantSansRef = Echantillon(nomEchantillon: "Lexomil", referenceEchantillon: "", quantiteEchantillon: 50)
        XCTAssertNil(echantillonNonPassantSansRef)
        
        let echantillonNonPassantQuatiteNeg = Echantillon(nomEchantillon: "Lexomil", referenceEchantillon: "010255555", quantiteEchantillon: -50)
        XCTAssertNil(echantillonNonPassantQuatiteNeg)
        
    }
    

    
}
