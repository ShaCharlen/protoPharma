//
//  NouveauPanierViewController.swift
//  Prototype02052016
//
//  Created by  administrateur on 24/05/2016.
//  Copyright © 2016 administrateur. All rights reserved.
//

import UIKit

class NouveauPanierViewController: UIViewController {

    //MARK: Properties
    
    /*@IBOutlet weak var nomPanier: UILabel!
     @IBOutlet weak var etatPanier: UILabel!
     @IBOutlet weak var medecinPanier: UILabel!
     @IBOutlet weak var listeEchantillons: UIView!*/
    
    @IBOutlet weak var etatPanier: UILabel!
    @IBOutlet weak var medecinPanier: UILabel!
    @IBOutlet weak var listeEchantillons: UIView!
    
    var panier: Panier?
    
    /* let echantillon1 = Echantillon(nomEchantillon: "Lexomil", referenceEchantillon: "010255555", quantiteEchantillon: 50)
     let echantillon2 = Echantillon(nomEchantillon: "Doliprane", referenceEchantillon: "010256655", quantiteEchantillon: 10)*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //On gère l'entrée de l'utilisateur dans la zone de texte via les appels délégués
        // self.navigationItem.title = "Truc"
        if let panier = panier {
            navigationItem.title = panier.nom
            etatPanier.text = "Etat: \(String(panier.etat))"
            medecinPanier.text = panier.medecin
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func cancelButtonPress(sender: AnyObject) {
        /*let isPresentingInAddMealMode = presentingViewController is UINavigationController
         if isPresentingInAddMealMode{*/
        dismissViewControllerAnimated(true, completion: nil)
        /* }
         else{
         navigationController!.popViewControllerAnimated(true)
         }*/
    }
    
    /*@IBAction func testButtonPRess(sender: AnyObject) {
     
     dismissViewControllerAnimated(true, completion: nil)
     
     }
     @IBAction func soumettreButtonPress(sender: AnyObject) {
     
     dismissViewControllerAnimated(true, completion: nil)
     }*/
    /*override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        print(segue.identifier)
        let DestViewController: NouvelEchantillonTableViewController = segue.destinationViewController as! NouvelEchantillonTableViewController
        DestViewController.echantillons = panier?.contenu
    }*/
    
    @IBAction func buttonReturnPressed(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)
        
    }
}
