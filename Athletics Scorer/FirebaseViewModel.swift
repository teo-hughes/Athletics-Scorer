//
//  FirebaseViewModel.swift
//  Athletics Scorer
//
//  Created by Hughes, Teo (BJH) on 19/05/2022.
//

import Foundation
import FirebaseFirestore
import FirebaseCore
import FirebaseDatabase



class FirebaseViewModel: ObservableObject {
    @Published var athletes = [Athlete]()
    

    private lazy var databasePath: DatabaseReference? = {
       let ref = Database.database()
         .reference()
        .child("FirebaseData")
       return ref
     }()
    private let decoder = JSONDecoder()
    func listenForThoughts() {
        guard let databasePath = databasePath else {
          return
        }
        databasePath
          .observe(.childAdded) { [weak self] snapshot in
            guard
              let self = self,
              var json = snapshot.value as? [String: Any]
            else {
              return
            }

            json["id"] = snapshot.key
            print(snapshot.key)
            print(snapshot)

            do {
              let athleteData = try JSONSerialization.data(withJSONObject: json)
              let athlete = try self.decoder.decode(Athlete.self, from: athleteData)
              self.athletes.append(athlete)
            } catch {
              print("an error occurred", error)
            }
          }
      }
}
