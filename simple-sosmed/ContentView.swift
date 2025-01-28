//
//  ContentView.swift
//  simple-sosmed
//
//  Created by Maulana Ahmad Zahiri on 24/01/25.
//

import SwiftUI
import SwiftData

struct User {
    var username: String
    var friend: String
    var caption: String
}

let nama = User(username: "yolookings", friend: "yolooaster", caption: " So Adorable!")

struct ContentView: View {
    var body: some View {
        HStack(){
            Text("Yoloogram")
                .font(.headline)
                .fontWeight(.bold)
                .padding(.horizontal)
            Spacer()
        }
        Divider()
            .padding(.vertical, 6)
        HStack (spacing: 16) {
            ForEach(0..<5){ _ in
                Image(systemName: "person.crop.circle.fill")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .foregroundColor(.gray)
            }
        }
        VStack(alignment: .leading, spacing: 10) {
            // Header Profule
            HStack {
                Image(systemName: "person.crop.circle.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.blue)
                
                Text(nama.username)
                    .font(.headline)
                
                Spacer()
                
                Image(systemName: "ellipsis")
                    .foregroundColor(.black)
            }
            .padding(.horizontal)

            // Post Image/Video
            Rectangle()
                .fill(Color.gray.opacity(0.3))
                .frame(height: 300)
                .overlay(
                    Image(systemName: "play.circle.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.white)
                )
            
            // Actions (Like, Comment, Share, Save)
            HStack(spacing: 20) {
                Image(systemName: "heart.fill")
                    .foregroundColor(.red)
                Image(systemName: "bubble.right")
                Image(systemName: "paperplane")
                Spacer()
                Image(systemName: "bookmark.fill")
                    .foregroundColor(.yellow)
            }
            .padding(.horizontal)
            .font(.title3)
            Divider()
                .padding(.vertical, 6)
            // Caption and Comments
            VStack(alignment: .leading, spacing: 5) {
                Text(nama.friend)
                        .font(.headline) +
                    Text(nama.caption)
                        .font(.body)
                Text("View all 9 comments")
                    .foregroundColor(.gray)
                    .font(.subheadline)
                
                Text(nama.username)
                    .font(.headline) +
                Text(" That is dope!")
                    .font(.body)
            }
            .padding(.horizontal)
            
            Spacer()
        }
        .padding(.top)
    }
}
#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
