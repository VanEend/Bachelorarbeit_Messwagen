#= This script installs the packages required for the course "Programmieren in Petrologie und Geochemie (JULIA)" and run some tests.
 
    Instructions:
    - Open VSCode and open the directory where the script is located
    - open the script and click "Run" (or press Ctrl+Enter)
    - Wait until the installation is finished
    - Report any error to pierre Lanari (pierre.lanari@unibe.ch)
    
Author: Pierre Lanari, University of Bern
Version 2, 16.09.2024
=#

# You can install (install = true) or uninstall (install = false) the packages. Note that if the packages are already installed, the installation will check and install updates.
install = true

# Perform the installation or uninstallation of the packages
import Pkg;

if install == true

    Pkg.add("Plots")
    Pkg.add("StatsPlots")
    Pkg.add("DataFrames")
    Pkg.add("CSV")
    Pkg.add("KernelDensity")
    Pkg.add("Tables")
    Pkg.add("Images")

else

    Pkg.rm("Plots")
    Pkg.rm("StatsPlots")
    Pkg.rm("DataFrames")
    Pkg.rm("CSV")
    Pkg.rm("KernelDensity")
    Pkg.rm("Tables")
    Pkg.rm("Images")

end

# Test the installation
println("Testing packages: ")

using Plots
using StatsPlots
using DataFrames
using CSV
using KernelDensity
using Tables
using Images

# Test the installation of Plots
x = 1:10; y = rand(10); # These are the plotting data
plot(x,y, label="line") # Plots a line
scatter!(x,y, label="points") # Plots points
println("    - Plot: OK")

# Test the installation of StatsPlots
x = rand(1000)
y = rand(1000)
histogram2d(x, y, nbins=20, c=:blues, lab="2D Histogram")
println("    - StatsPlots: OK")

# Test the installation of DataFrames
df = DataFrame(A = 1:4, B = ["M", "F", "F", "M"])
df[!, :C] = [missing, "x", missing, "z"]
#df
println("    - DataFrames: OK")

# Test the installation of CSV
df = DataFrame(A = 1:4, B = ["M", "F", "F", "M"])
CSV.write("data.csv", df)
df = DataFrame(CSV.File("data.csv"))
#df
rm("data.csv")
println("    - CSV: OK")

# Test the installation of KernelDensity
x = randn(1000)
kde_values = kde(x)
plot(kde_values.x, kde_values.density)
println("    - KernelDensity: OK")

println("\n\n ------------------------------------------- \n The installation of the packages is finished. \n\n You can close Julia.")
