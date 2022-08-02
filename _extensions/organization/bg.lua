local function copyResource(file)
    path = quarto.utils.resolvePath(file)
    quarto.doc.addFormatResource(path)
end

function Header(el)
    copyResource('logo.png')
    copyResource('space.png')
    if not el.attributes['background-image'] then
        el.attributes['background-image'] = 'logo.png'
        el.attributes['background-size'] = 'contain'
    end

    return el
end
