//
//  PanierTableViewController.swift
//  Prototype02052016
//
//  Created by  administrateur on 23/05/2016.
//  Copyright © 2016 administrateur. All rights reserved.
//

import UIKit

class PanierTableViewController: UITableViewController {
    
    var paniers = [Panier]()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        //chargerPaniers()
        
        if let savedPaniers = chargerNouveauxPaniers(){
            
            paniers += savedPaniers
            
        }
        else{
            
            chargerPaniers()
        }
    }
    
    
    func chargerPaniers() {
        
        //Echantillons
        let echantillon1 = Echantillon(nomEchantillon: "Lexomil", referenceEchantillon: "010255555", quantiteEchantillon: 50)
        let echantillon2 = Echantillon(nomEchantillon: "Doliprane", referenceEchantillon: "010256655", quantiteEchantillon: 10)
        
        let echantillon3 = Echantillon(nomEchantillon: "Dafalgan", referenceEchantillon: "010256655", quantiteEchantillon: 60)
        let echantillon4 = Echantillon(nomEchantillon: "Medoc1", referenceEchantillon: "010256655", quantiteEchantillon: 5)
        let echantillon5 = Echantillon(nomEchantillon: "Propofol", referenceEchantillon: "010256655", quantiteEchantillon: 80)
        let echantillon6 = Echantillon(nomEchantillon: "AutreMedoc", referenceEchantillon: "010256655", quantiteEchantillon: 20)
        let echantillon7 = Echantillon(nomEchantillon: "Des Pommes", referenceEchantillon: "010256655", quantiteEchantillon: 15)
        let echantillon8 = Echantillon(nomEchantillon: "MedocTruc", referenceEchantillon: "010256655", quantiteEchantillon: 100)
        
        //Paniers
        let panier1 = Panier(nom: "un panier", medecin: "Dr Machin", etat: .provisoire, contenu: [echantillon1!, echantillon2!])!
        let panier2 = Panier(nom: "un autre panier", medecin: nil, etat: .provisoire, contenu: [echantillon1!, echantillon8!, echantillon4!])!
        let panier3 = Panier(nom: "un gros panier", medecin: nil, etat: .provisoire, contenu: [echantillon8!, echantillon2!])!
        let panier4 = Panier(nom: "The panier", medecin: nil, etat: .provisoire, contenu: [echantillon8!, echantillon3!, echantillon7!, echantillon6!, echantillon5!, echantillon3!, echantillon7!, echantillon6!, echantillon5!])!
        let panier5 = Panier(nom: "panier", medecin: nil, etat: .provisoire, contenu: [echantillon8!, echantillon4!, echantillon4!])!
        let panier6 = Panier(nom: "pa gniééééééé", medecin: nil, etat: .provisoire, contenu: [echantillon5!, echantillon4!])!
        let panier7 = Panier(nom: "le panier 7", medecin: nil, etat: .provisoire, contenu: [echantillon7!])!
        let panier8 = Panier(nom: "petit panier", medecin: nil, etat: .provisoire, contenu: [echantillon1!, echantillon6!])!
        let panier9 = Panier(nom: "bébé panier", medecin: nil, etat: .provisoire, contenu: [echantillon6!, echantillon5!, echantillon4!])!
        let panier10 = Panier(nom: "Panier qui crash plus", medecin: nil, etat: .provisoire, contenu: nil)!
        
        paniers += [panier1, panier2, panier3, panier4, panier5, panier6, panier7, panier8, panier9, panier10]
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        print(paniers.count)
        return paniers.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cellIdentifier = "PanierTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! PanierTableViewCell
        print("paniertableviewctr")
        print(paniers[indexPath.row])
        let panier = paniers[indexPath.row]
        
        cell.nomPanier.text = panier.nom
        cell.etatPanier.text = String(panier.etat)
        
        // Configure the cell...
        
        
        
        return cell
    }
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    
    // Override to support editing the table view.
    /* override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
     if editingStyle == .Delete {
     // Delete the row from the data source
     tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
     } else if editingStyle == .Insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }*/
    
    
    /*
     // Override to support rearranging the table view.
     override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        print(segue.identifier)
        if segue.identifier == "ShowDetail" {
            
            let nav = segue.destinationViewController as! UINavigationController
            let panierDetailViewController = nav.topViewController as! PanierViewController
            if let selectedPanierCell = sender as? PanierTableViewCell{
                let indexPath = tableView.indexPathForCell(selectedPanierCell)!
                let selectedPanier = paniers[indexPath.row]
                print(selectedPanier.nom)
                panierDetailViewController.panier = selectedPanier
            }
            
        }
        else if segue.identifier == "AddPanier" {
            
            let nav = segue.destinationViewController as! UINavigationController
            let panierAjoutViewController = nav.topViewController as! AjouterPanierViewController
            print(segue.identifier)
            panierAjoutViewController.paniersAjout = paniers
        }
        
        
    }
    
    // Override to support editing the table view.
    /*override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
     if editingStyle == .Delete {
     // Delete the row from the data source
     paniers.removeAtIndex(indexPath.row)
     //saveMeals()
     tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
     } else if editingStyle == .Insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    
    
    /*@IBAction func unwindToMealList(sender:UIStoryboardSegue){
     
     if let sourceViewController = sender.sourceViewController as? PanierViewController, panier = sourceViewController.panier{
     
     if let selectedIndexPath = tableView.indexPathForSelectedRow{
     //maj d'un plat existant
     paniers[selectedIndexPath.row] = panier
     tableView.reloadRowsAtIndexPaths([selectedIndexPath], withRowAnimation: .None)
     }
     else{
     //ajouter un nouveau plat
     let newIndexPath = NSIndexPath(forRow: paniers.count, inSection: 0)
     paniers.append(panier)
     tableView.insertRowsAtIndexPaths([newIndexPath], withRowAnimation: .Bottom)
     }
     //saveMeals()
     }
     }*/
    
    
    //MARK: NSCoding
    /*func sauverPaniers(){
     
     let isSuccessfulSave = NSKeyedArchiver.archiveRootObject(paniers, toFile: Panier.ArchiveURL.path!)
     
     if !isSuccessfulSave {
     print("erreur enregistrement")
     }
     
     }*/
    
    func chargerNouveauxPaniers() -> [Panier]? {
        
        return NSKeyedUnarchiver.unarchiveObjectWithFile(Panier.ArchiveURL.path!) as? [Panier]
        
    }
    
}