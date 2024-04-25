import SwiftUI

struct KicksView: View {
    @State private var userName = "John"
    @State private var searchText: String = ""
    @State private var isShowingAllItems = false
    @State private var navigationBarHidden = false
    @State private var showingPopover = false


    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    // New Arrival Section
                    SectionView(title: "New Arrival") {
                        ScrollView(.horizontal) {
                            HStack{
                                ForEach(1..<10) { index in
                                    NewArrivalCellView()
                                        .frame(width: 170, height: 170)

                                }
                            }
                            .padding(.horizontal)
                        }
                        .frame(height: 200)
                    }
                    
                    
                    
                    // Announcements Section
                    SectionView(title: "Announcements") {
                        ScrollView(.horizontal) {
                            HStack(spacing: 30) {
                                ForEach(1..<10) { index in
//                                    newArrivalsUIPage()
                                    AnnouncementsCellView()
                                }
                            }
                            .frame(height: 300)

                            .padding(.horizontal)
                        }
                        .frame(height: 200)
                    }
                    
                    SectionView(title: "New Feed") {
                        ScrollView(.horizontal) {
                            HStack (spacing: 30){
                                ForEach(1..<5) { index in
                                    AnnouncementsCellView()
                                        .frame(width: 300, height: 150)
                                }
                            }
                            .frame(height: 300)
                            .padding(.horizontal)
                        }
                        .frame(height: 200)
                    }
                }
                Spacer()
            }
            .navigationTitle("Hello, \(userName)")
            .navigationBarHidden(navigationBarHidden)
            .onAppear {
                navigationBarHidden = false
            }
            .onDisappear {
                navigationBarHidden = true
            }
            .searchable(text: $searchText)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Text(formattedDate(date: Date()))
                        .font(.body)
                        .fontWeight(.semibold)
                        .foregroundStyle(.secondary)
                        .padding(.bottom, -50)
                    

                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(action: {
                        // Add action for the navigation item
                    }) {
                        Image(systemName: "person.circle.fill")
                            .font(.title)
                            .foregroundColor(.blue)
                            
                        
                    }
                }
            }
            .sheet(isPresented: $isShowingAllItems) {
                // Present a sheet or navigate to another view to show all items
                Text("All Items")
            }
        }
    }

    func formattedDate(date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE d MMMM"
        return dateFormatter.string(from: date)
    }
}

struct SectionView<Content: View>: View {
    let title: String
    let content: () -> Content
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .lastTextBaseline){
                Text(title)
                    .font(.title2)
                    .fontWeight(.semibold)
                Spacer()
                Button("View all") {
                    

                }
                
            }.padding(.horizontal, 16)
            content()
        }
    }
}

struct NavigationBarAppearance: View {
    @Binding var shouldHideNavigationBar: Bool

    var body: some View {
        GeometryReader { geometry in
            Color.clear.preference(key: OffsetPreferenceKey.self, value: geometry.frame(in: .global).minY)
        }
        .onPreferenceChange(OffsetPreferenceKey.self) { offset in
            shouldHideNavigationBar = offset > 0
        }
    }
}

struct OffsetPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = .zero

    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}

struct KicksView_Previews: PreviewProvider {
    static var previews: some View {
        KicksView()
    }
}
