class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates_presence_of :codigo
  validates_uniqueness_of :codigo
  validate :validar_codigo
	  
  before_validation(on: :create) do
	validar_codigo
  end
    
  def validar_codigo
		codigo=self.codigo
		longitud_codigo=codigo.length
		bandera=1
		puts "longitud de codigo #{longitud_codigo}"
		i=0
		#Verificando formato de los codigo
		if longitud_codigo>4
			while bandera!=0 and i<longitud_codigo
				if i==4 and codigo[i]!='-'
					error="Considere el guión en su código"
					bandera=0	
				else
					if i!=4
						case codigo[i]
							when "0","1","2","3","4","5","6","7","8","9" 
							else 
								bandera=0
								error="Verifiquese los digitos"						
						end
					else
						#Verificar si año cumple con las cifras
						anio=codigo.split('-').first.to_i
						unless 1990<anio and anio<9999 
							error="El año no es correcto"
							bandera=0
						else
							#Verifica si el codigo base cumple con las cifras especificas
							base=codigo.split('-').last
							longitud_base=base.length
							puts "base #{base}"
							if longitud_base<5
								error="Faltan dígitos en tu código"
								bandera=0
							else
								if longitud_base>6
									error="Se excedido los digitos de su código"
									bandera=0
								else
									#Analisis de estudiantes
									#Analisis de docentes
									#Analisis de administrativos
								end
							end
						end			
					end
				end			
				i+=1		
			end	
		else
			error="Inválido"
			bandera=0
		end
		if bandera==0
			errors.add(:codigo,error)
		end
	end
end
