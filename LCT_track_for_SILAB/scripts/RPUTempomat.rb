# RPUTempomat
# Tempomat f�r LCT
# Erstellt: 31.05.2010 (SILABDPUWizard)
# Autor: C. Rommerskirchen

# Die Klasse RPUTempomat ist die Hauptklasse der RPU. 
# Ihre Methoden werden von SILAB w�hrend der Simulation aufgerufen. 
class RPUTempomat < RPU

    # In der Initialize-Methode angegebene Befehle werden 
    # eimal beim Laden der Versuchskonfiguration ausgef�hrt. 
	# In dieser Methode	sollten die Eingangs- und Ausgangsvariablen 
	# der RPU durch Aufrufe von  var_in  bzw.  var_out  erzeugt werden. 
	def initialize
		# Eing�nge der RPU
		var_in :@Vkmh, :@AcceleratorPedal
		# Ausg�nge der RPU
		var_out :@AcceleratorPedalnew
	end

	# Wird aufgerufen, sobald der Benutzer 'Launch' w�hlt.
	# Aufgabe: Vorbereitungsschritte, die bei jedem Start einer Simulation durchgef�hrt werden m�ssen.
	# R�ckgabe: true  -> Vorbereitungen waren erfolgreich.
	# 			 false -> Bei den Vorbereitungen ist ein Fehler aufgetreten.
	def start
		return true
	end
	
	# Wird periodisch aufgerufen, w�hrend die Simulation l�uft.
	# Aufgabe: Funktionalit�t der RPU w�hrend der Simulation. Die Vorg�nge in dieser Methode sollten
	#          nicht l�nger als ca. 1 ms dauern.
	# Parameter: time       -> Zeit seit dem Start der Simulation (in Millisekunden)
	#            time_error -> Aktuelle Rechenzeitverz�gerung (in Millisekunden)
	def trigger(time, time_error)
# 		if (@Vkmh>60)
# 			@AcceleratorPedalnew =0.0
# 		else
# 			@AcceleratorPedalnew = @AcceleratorPedal
# 		end
		@AcceleratorPedalnew=(60-@Vkmh)/2*@AcceleratorPedal
		
	end
	
end
