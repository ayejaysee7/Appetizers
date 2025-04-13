import SwiftUI

struct AppetizerTabView: View {
    
    @EnvironmentObject var order: Order
    
    init() {
        let appearance = UITabBarAppearance()
        appearance.configureWithDefaultBackground() // ✅ Restores default grey background
        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
    
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem { Label("Home", systemImage: "house")   }
            
            AccountView()
                .tabItem { Label("Account", systemImage: "person")}
            
            OrderView()
                .tabItem { Label("Order", systemImage: "bag") }
                .badge(order.items.count)
        }
    }
}

#Preview {
    AppetizerTabView()
}
