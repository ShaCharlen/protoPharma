//
//  NouveauAjouterPanierViewController.swift
//  Prototype02052016
//
//  Created by  administrateur on 24/05/2016.
//  Copyright © 2016 administrateur. All rights reserved.
//

import UIKit

class NouveauAjouterPanierViewController: UIViewController {

    /*@IBOutlet weak var nomPanierInput: UITextField!
     @IBOutlet weak var nomMedecinInput: UITextField!*/
    
    @IBOutlet weak var nomMedecinInput: UITextField!
    @IBOutlet weak var nomPanierInput: UITextField!
    
    var nouveauPanier: Panier?
    var paniersAjout : [Panier] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func buttonReturnPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
    @IBAction func valideAjoutPanier(sender: AnyObject) {
        
        nouveauPanier = Panier(nom: nomPanierInput.text!, medecin: nomMedecinInput.text, etat: .provisoire, contenu: nil)
        print("lalalalalala;D")
        print(nouveauPanier?.nom)
        paniersAjout += [nouveauPanier!]
        
        print(paniersAjout.count)
        
        sauverPaniers()
        
        /*let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
         
         let nextViewController = storyBoard.instantiateViewControllerWithIdentifier("PanierTableView") as! PanierTableViewController
         self.presentViewController(nextViewController, animated: true, completion: nil)*/
        
    }
    
    /*@IBAction func valideAjout(sender: AnyObject) {
     
     print("lalalalalalala")
     dismissViewControllerAnimated(true, completion: nil)
     
     }*/
    
    //MARK: NSCoding
    func sauverPaniers(){
        
        let isSuccessfulSave = NSKeyedArchiver.archiveRootObject(paniersAjout, toFile: Panier.ArchiveURL.path!)
        
        if !isSuccessfulSave {
            print("erreur enregistrement")
        }
        
    }
    
}
