// swift-tools-version:4.2
import PackageDescription

let package = Package(
  name: "CodableCSV",
  products: [
    .library(
      name: "CodableCSV",
      targets: ["CodableCSV"]),
  ],
  dependencies: [
  ],
  targets: [
    .target(
      name: "CodableCSV",
      dependencies: [],
      path: "Souces"),
    .testTarget(
      name: "CodableCSVTests",
      dependencies: ["CodableCSV"],
      path: "Tests"),
  ]
)