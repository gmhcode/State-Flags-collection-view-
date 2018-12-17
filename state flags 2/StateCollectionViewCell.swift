//
//  StateCollectionViewCell.swift
//  state flags 2
//
//  Created by Greg Hughes on 12/17/18.
//  Copyright © 2018 Greg Hughes. All rights reserved.
//

import UIKit

class StateCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var flagImageView: UIImageView!
    @IBOutlet weak var stateNameLabel: UILabel!
    
    var state : State?{
        didSet{
            updateViews()
        }
    }
    
   
    
    func updateViews(){
        guard let state = state else {return}
        
        
        stateNameLabel.text = state.name
        flagImageView.image = UIImage(named: state.abbreviation)
        
        
    }
    
    
    
    
    
    
}
