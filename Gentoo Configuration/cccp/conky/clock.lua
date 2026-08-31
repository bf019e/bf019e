function conky_show_digit(pos_raw)
    -- CONVERSIÓN: Transforma el texto de Conky en un número de Lua
    local pos = tonumber(pos_raw)

    -- Hora
    local time_str = os.date("%I%M%S") 
    local digit = string.sub(time_str, pos, pos)
    
    -- Var
    local path = "/home/cccp/.config/conky/"
    local width_img = 45   -- Ancho
    local height_img = 100    -- Alto
    local left_margin = 0 -- Margen
    local y_pos = 0          -- Margen
    local separator = 25	--Separador
    
    -- LOL
    local x_pos = left_margin + ((pos - 1) * width_img)

    if pos > 2 then
        x_pos = x_pos + separator
    end

    local path = path .. digit .. ".png"
    -- String
    return string.format("${image %s -p %d,%d -s %dx%d}", path, x_pos, y_pos, width_img, height_img)
end
