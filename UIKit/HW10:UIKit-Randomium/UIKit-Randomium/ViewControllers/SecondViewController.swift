//
//  SecondViewController.swift
//  UIKit-RandomCinema
//
//  Created by Kalabishka Ivan on 06.10.2021.
//

import UIKit

class SecondViewController: UIViewController {
    
    private var cinema: Cinema?
    
    @IBOutlet var cinemaCover: UIImageView!
    @IBOutlet var yearLabel: UILabel!
    @IBOutlet var movieLength: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        activityIndicator.startAnimating()
        activityIndicator.hidesWhenStopped = true
        
        fetchContent()
    }
    
    @IBAction func backButtonPressed() {
        dismiss(animated: true)
    }
    
    @IBAction func reloadButtonPressed() {
        ApiManager.shared.randomPage()
        fetchContent()
        activityIndicator.startAnimating()
    }
}

extension SecondViewController {
    private func fetchContent() {
        NetworkManager.shared.fetchCinema { cinema in
            let imageString = "\(cinema.docs.first?.poster.url ?? "Empty")"
            guard let imageURL = URL(string: imageString) else { return }
            guard let imageData = try? Data(contentsOf: imageURL) else { return }
            
            self.yearLabel.text = "\(cinema.docs.first?.year ?? 0)"
            self.descriptionLabel.text = cinema.docs.first?.description ?? "Empty"
            self.cinemaCover.image = UIImage(data: imageData)
            self.movieLength.text = "\(cinema.docs.first?.movieLength ?? 0)"
            self.activityIndicator.stopAnimating()
            //            DispatchQueue.main.async {
            //                self.yearLabel.text = "\(cinema.docs.first?.year ?? 0)"
            //                self.descriptionLabel.text = cinema.docs.first?.description ?? "Empty"
            //                self.cinemaCover.image = UIImage(data: imageData)
            //                self.movieLength.text = "\(cinema.docs.first?.movieLength ?? 0)"
            //                self.activityIndicator.stopAnimating()
            //            }
        }
    }
}


