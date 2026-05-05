import SwiftUI

struct DashboardView: View {
    var body: some View {
        NavigationView {
            VStack {
                // টপ সেকশন: JIT স্ট্যাটাস
                HStack {
                    Circle().fill(Color.green).frame(width: 10, height: 10)
                    Text("64-bit Performance Engine Active").font(.caption2)
                }.padding(.top)

                ScrollView {
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 15) {
                        // লোকাল গেমিং (GTA V স্টাইল)
                        NavigationLink(destination: Text("Local Engine Loading...")) {
                            FeatureBox(title: "Local Play", icon: "desktopcomputer", color: .blue)
                        }
                        
                        // ক্লাউড গেমিং (Xbox/PS)
                        NavigationLink(destination: Text("Cloud Servers Online")) {
                            FeatureBox(title: "Cloud Gaming", icon: "cloud.sun.fill", color: .purple)
                        }
                        
                        // লাইব্রেরি ও সেটিংস
                        FeatureBox(title: "Library", icon: "gamecontroller.fill", color: .green)
                        FeatureBox(title: "Graphics Settings", icon: "bolt.fill", color: .orange)
                    }
                    .padding()
                }
            }
            .navigationTitle("Sifat's GameHub")
        }
    }
}

struct FeatureBox: View {
    let title: String; let icon: String; let color: Color
    var body: some View {
        VStack {
            Image(systemName: icon).font(.largeTitle).foregroundColor(.white)
            Text(title).font(.system(size: 14, weight: .bold)).foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, minHeight: 140)
        .background(color.gradient)
        .cornerRadius(20)
        .shadow(radius: 5)
    }
}
