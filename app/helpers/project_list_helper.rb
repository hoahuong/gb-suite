module ProjectListHelper
	def limitrow
		h = Hash.new()
	     return h=  
	     { '1'=>'',
	      	'2'=>'5',
	      	'3'=>'10',
	      	'4'=>'15',
	      	'5'=>'20'
	      }    
    end

    def company
		h = Hash.new()
	     return h=  
	     { '1'=>'IBSVN',
	      	'2'=>'IBSALL',
	      	'3'=>'IBSPART',
	      	'4'=>'IBSTOKYO',
	      	'5'=>'IBSOTHER'
	      }    
    end
end
