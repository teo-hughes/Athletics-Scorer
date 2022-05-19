//
//  EventsView.swift
//  Athletics Scorer
//
//  Created by Hughes, Teo (BJH) on 19/05/2022.
//

import SwiftUI


struct EventsView: View {
    @StateObject var viewModel = FirebaseViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.athletes) { event in
                VStack(alignment: .leading) {
                    Text(event.Name)
                        .font(.headline)
                    Text("\(event.Score)")
                        .font(.subheadline)
                    Text("\(event.Points)")
                        .font(.subheadline)
                }
            }
            .onAppear {
                viewModel.listenForThoughts()
            }
            .navigationBarTitle("Events")
        }
    }
}
