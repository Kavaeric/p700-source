module Jekyll
    module Power
        ##
        # A simple script that adds power functions.
        ##

        def exponent(value, exp=1)
            ##
            # Raises the value to the specified exponent.
            # 
            # Usage:
            # {{ examplenumber }} >>> 3
            # {{ examplenumber | exponent: 3 }} >>> 27
            ##
            begin
                value = value.to_f
            rescue Exception => e
                puts "#{e.class} #{e}"
                return value
            end

            if exp == 1
                return value
            end

            value **= exp
            return value
        end

        def expTen(value, exp=0)
            ##
            # 10 is raised to the given exponent.
            # The resulting power is multipled by the value.
            # 
            # Usage:
            # {{ examplenumber }} >>> 2.3
            # {{ examplenumber | exponent: 4 }} >>> 23000
            # {{ examplenumber | exponent: -2 }} >>> 0.023
            ##
            begin
                value = value.to_f
            rescue Exception => e
                puts "#{e.class} #{e}"
                return value
            end

            if exp == 0
                return value
            end

            value *= 10.0**exp
            return value
        end
    end
end

Liquid::Template.register_filter(Jekyll::Power)
