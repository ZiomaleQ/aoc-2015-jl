str = open(io->read(io, String), "data01.txt")

up = 0
down = 0

for ch in str
    if ch == '('
        global up += 1
    end

    if ch == ')'
        global down += 1
    end
end

println("part one ", up - down)

count = 0
idx = 0

for ch in str
    if ch == '('
        global count += 1
    end

    if ch == ')'
        global count -= 1
    end

    global idx += 1
    if count < 0
        println("part two ", idx)
        break
    end
end
