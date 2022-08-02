local function copyResource(file)
    path = quarto.utils.resolvePath(file)
    quarto.doc.addFormatResource(path)
end

function Header(el)
    copyResource('logo.png')
    copyResource('space.jpg')
    return el
end
