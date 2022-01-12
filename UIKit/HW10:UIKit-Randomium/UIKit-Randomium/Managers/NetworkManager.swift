//
//  NetworkManager.swift
//  UIKit-RandomCinema
//
//  Created by Kalabishka Ivan on 08.10.2021.
//

import Foundation

class NetworkManager {
    
    static let shared = NetworkManager()
    
    private init() {}
    
    //    func fetchCinema(with completion: @escaping (Cinema) -> ()) {
    //        guard let url = URL(string: ApiManager.shared.cinemaURL) else { return }
    //
    //        URLSession.shared.dataTask(with: url) { ( data, _, error) in
    //            if let error = error {
    //                print("This error - \(error.localizedDescription)")
    //                return
    //            }
    //            guard let data = data else { return }
    //
    //            do {
    //                let cinema = try JSONDecoder().decode(Cinema.self, from: data)
    //                completion(cinema)
    //            } catch let jsonError {
    //                print("Ошибка получения данных", jsonError)
    //            }
    //        }.resume()
    //    }
    
    func fetchCinema(with completion: @escaping (Cinema) -> ()) {
        guard let url = URL(string: ApiManager.shared.cinemaURL) else { return }
        
        URLSession.shared.dataTask(with: url) { ( data, _, error) in
            if let error = error {
                print("This error - \(error.localizedDescription)")
                return
            }
            guard let data = data else { return }
            
            do {
                let cinema = try JSONDecoder().decode(Cinema.self, from: data)
                DispatchQueue.main.async {
                    completion(cinema)
                }
            } catch let jsonError {
                print("Ошибка получения данных", jsonError)
            }
        }.resume()
    }
    
    func fetchMusicAlbum(completion: @escaping (MusicAlbum) -> ()) {
        
        guard let url = URL(string: ApiManager.shared.musicURL) else { return }
        URLSession.shared.dataTask(with: url) { ( data, _, error) in
            
            if let error = error {
                print("This id error - \(error.localizedDescription)")
                return
            }
            guard let data = data else { return }
            
            do {
                let musicAlbum = try JSONDecoder().decode(MusicAlbum.self, from: data)
                completion(musicAlbum)
            } catch let jsonError {
                print("Ошибка получения данных", jsonError)
            }
        }.resume()
    }
}
