class Carta

    @numero
    @pinta

    def initialize( pinta)
        set_numero()
        set_pinta(pinta)
    end

    def set_numero()
      @numero = Random.rand(1..13)
    end

    def set_pinta(pinta)
    if pinta != 'C' && pinta != 'D' && pinta != 'E' && pinta != 'T' 
        return raise "La pinta solo puede ser C D E y T" 
    end
        @pinta = pinta
    end

    def get_pinta
        return @pinta
    end

    def get_numero
        return @numero
    end


end

baraja = Array.new
baraja[0] = Carta.new('C')
baraja[1] = Carta.new('D')
baraja[2] = Carta.new('E')
baraja[3] = Carta.new('T')
baraja[4] = Carta.new('C')

baraja.each do |c, index|
    puts "Carta #{index.to_s} Pinta: "+ c.get_pinta + " Numero: " + c.get_numero.to_s
end