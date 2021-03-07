class CuentaBancaria
    @nombre_de_usuario
    @numero_de_cuenta
    @vip = false
    attr_accessor :vip

    def get_nombre_de_usuario
        @nombre_de_usuario
    end

    def get_numero_de_cuenta
        @numero_de_cuenta
    end

    def set_nombre_de_usuario(nombre)
        @nombre = nombre
    end

    def set_numero_de_cuenta(numero)
        if numero.digits.count != 8
            return raise RangeError, "Los dígitos del número de cuenta deben ser iguales a 8"
        end
        @numero_de_cuenta = numero
    end

    def numero_de_cuenta
        if @vip
            return '1-'+@numero_de_cuenta.to_s
        end
        
        @numero_de_cuenta.to_s
        
    end

end

cuenta = CuentaBancaria.new
cuenta.set_numero_de_cuenta(12345678)
cuenta.set_nombre_de_usuario('Tulio Triviño')

puts cuenta.numero_de_cuenta

cuenta.vip = true

puts cuenta.numero_de_cuenta

