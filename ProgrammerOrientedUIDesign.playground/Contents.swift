import SwiftUI
import PlaygroundSupport

struct CellTitle: View {
    var text: String

    var body: some View {
        Text(text)
            .font(.system(size: 17))
            .foregroundColor(Color.black)
    }
}

struct CellLabel: View {
    var text: String

    var body: some View {
        Text(text)
            .font(.system(size: 17))
            .foregroundColor(Color(.sRGB, red: 60 / 255, green: 60 / 255, blue: 67 / 255, opacity: 0.6))
    }
}

struct Cell1: View {
    var body: some View {
        ZStack {
            HStack {
                CellTitle(text: "Title")
                Spacer()
            }
            HStack {
                Spacer()
                CellLabel(text: "Label")
            }
        }
        .padding(.horizontal, 16)
        .frame(maxWidth: .infinity, minHeight: 44)
        .background(Color.white)
    }
}

struct Cell2: View {
    var body: some View {
        HStack {
            CellTitle(text: "Title")
            Spacer()
            CellLabel(text: "Label")
        }
        .padding(.horizontal, 16)
        .frame(maxWidth: .infinity, minHeight: 44)
        .background(Color.white)
    }
}

struct Cell3: View {
    var body: some View {
        HStack {
            CellTitle(text: "Title")
                .background(Color.green)
            Spacer()
            CellLabel(text: "Label")
                .background(Color.yellow)
        }
        .padding(.horizontal, 16)
        .frame(maxWidth: .infinity, minHeight: 44)
        .background(Color.white)
    }
}

struct Cell4: View {
    var body: some View {
        HStack {
            CellTitle(text: "Title")
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.green)
            Spacer(minLength: 16)
            CellLabel(text: "Label")
                .frame(maxWidth: 65, alignment: .trailing)
                .background(Color.yellow)
        }
        .padding(.horizontal, 16)
        .frame(maxWidth: .infinity, minHeight: 44)
        .background(Color.white)
    }
}

struct Cell5: View {
    var body: some View {
        HStack {
            CellTitle(text: "A Long Enough Title That Will Take Two Lines")
                .lineLimit(1)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.green)
            Spacer(minLength: 16)
            CellLabel(text: "Label")
                .frame(maxWidth: 65, alignment: .trailing)
                .background(Color.yellow)
        }
        .padding(.horizontal, 16)
        .frame(maxWidth: .infinity, minHeight: 44)
        .background(Color.white)
    }
}

struct Cell6: View {
    var body: some View {
        HStack {
            CellTitle(text: "A Long Enough Title That Will Take Two Lines")
                .lineLimit(1)
                .minimumScaleFactor(0.5)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.green)
            Spacer(minLength: 16)
            CellLabel(text: "Label")
                .frame(maxWidth: 65, alignment: .trailing)
                .background(Color.yellow)
        }
        .padding(.horizontal, 16)
        .frame(maxWidth: .infinity, minHeight: 44)
        .background(Color.white)
    }
}

struct Cell7: View {
    var body: some View {
        HStack(alignment: .lastTextBaseline) {
            CellTitle(text: "A Long Enough Title That Will Take Two Lines")
                .lineLimit(1)
                .minimumScaleFactor(0.1)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.green)
            Spacer(minLength: 16)
            CellLabel(text: "Label")
                .frame(maxWidth: 65, alignment: .trailing)
                .background(Color.yellow)
        }
        .padding(.horizontal, 16)
        .frame(maxWidth: .infinity, minHeight: 44)
        .background(Color.white)
    }
}

struct Cell8: View {
    var body: some View {
        HStack {
            CellTitle(text: "A Long Enough Title That Will Take Two Lines")
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.green)
            Spacer(minLength: 16)
            CellLabel(text: "Label")
                .frame(maxWidth: 65, alignment: .trailing)
                .background(Color.yellow)
        }
        .padding(.horizontal, 16)
        .frame(maxWidth: .infinity, minHeight: 44)
        .background(Color.white)
    }
}

struct Cell9: View {
    var body: some View {
        HStack {
            CellTitle(text: "A Long Enough Title That Will Take Two Lines")
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.green)
            Spacer(minLength: 16)
            CellLabel(text: "Label")
                .frame(maxWidth: 65, alignment: .trailing)
                .background(Color.yellow)
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 10)
        .frame(maxWidth: .infinity, minHeight: 44)
        .background(Color.white)
    }
}

struct Preview: View {
    var body: some View {
        VStack(spacing: 16) {
            Cell1()
            Cell2()
            Cell3()
            Cell4()
            Cell5()
            Cell6()
            Cell7()
            Cell8()
            Cell9()
        }
        .frame(width: 375)
        .background(Color(red: 239 / 255, green: 239 / 255, blue: 244 / 255))
    }
}

PlaygroundPage.current.setLiveView(Preview())
