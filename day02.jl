fileHandle = open("data02.txt", "r")

sumMat = 0
sumRib = 0

for line in eachline(fileHandle)
    data = split(line, "x")
    l = parse(Int32, data[1])
    w = parse(Int32, data[2])
    h = parse(Int32, data[3])

    side_a = l*w
    side_b = w*h
    side_c = h*l

    sorted = sort([l,w,h])
    global sumRib += sorted[1]*2+sorted[2]*2 + l*w*h

    min = minimum([side_a, side_b, side_c])
    global sumMat += 2*l*w+2*w*h+2*h*l+min
end

println("Part one ", sumMat)
println("Part two ", sumRib)
