//
//  ViewController.swift
//  Recipe_App
//
//  Created by Sarannya on 17/04/19.
//  Copyright © 2019 Sarannya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recipeImageView: UIImageView!
    
    @IBOutlet weak var recipeTitleLabel: UILabel!
    
    @IBOutlet weak var recipeMethodLabel: UILabel!
    
    var allRecipes = AllRecipe()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadRecipe()
    }

    @IBAction func newRecipePressed(_ sender: UIButton) {
            
        loadRecipe()
    }
    
    func loadRecipe(){
        
        let nextRecipe = allRecipes.getNextRecipe()
        
        self.recipeImageView.image = UIImage(named: nextRecipe.imageName)
        self.recipeTitleLabel.text = nextRecipe.name
        self.recipeMethodLabel.text = nextRecipe.method
    }
    
}

