Vim�UnDo� ��zX��R;�|����Θ��s�f���I݋&I�                    .       .   .   .    U�:�   	 _�                            ����                                                                                                                                                                                                                                                                                                                                                             U�?�    �         #            if wd.nil?5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U�@     �         #      .      if wd.nil? && !d.GM1_GENE_RESULTS.blank?5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U�@    �         #      -      if wd.nil? && !.GM1_GENE_RESULTS.blank?5�_�                       	    ����                                                                                                                                                                                                                                                                                                                                                             U�@A    �         #      H      if wd > Date.parse('1999/12/31') && record.GM1_GENE_RESULTS == 'A'5�_�                          ����                                                                                                                                                                                                                                                                                                                                                             U�8    �         $          �         #    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U�8r     �         $          if !record.Dog_Id.nil?5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                             U�8s     �         $          f !record.Dog_Id.nil?5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                                             U�8s     �         $           !record.Dog_Id.nil?5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                             U�8s     �         $          !record.Dog_Id.nil?5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                             U�8s     �         $          record.Dog_Id.nil?5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U�8s     �         $          ecord.Dog_Id.nil?5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U�8w    �         $          unless ecord.Dog_Id.nil?5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U�9�     �         $          unless record.Dog_Id.nil?5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U�9�     �         $          unless record.Dog_Id.nil?5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U�9�     �         $          unless record.Id.nil?5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U�9�    �         $          unless record..nil?5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U�:     �                      case record.class.to_s5�_�                   	       ����                                                                                                                                                                                                                                                                                                                                                             U�:!     �      	                  begin5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                             U�:"     �      	          )          d = DogInfo.find(record.Dog_Id)5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                             U�:"     �      	                  rescue5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                             U�:#     �      	                    return true5�_�                     	   
    ����                                                                                                                                                                                                                                                                                                                                                             U�:$     �      	                  end5�_�      !              	       ����                                                                                                                                                                                                                                                                                                                                                             U�:(     �      
                 wd = d.WhelpDate5�_�       "           !   	       ����                                                                                                                                                                                                                                                                                                                                                             U�:+     �      
         #        wd = record.dog.d.WhelpDate5�_�   !   #           "   	       ����                                                                                                                                                                                                                                                                                                                                                             U�:+     �      
         "        wd = record.dog..WhelpDate5�_�   "   $           #          ����                                                                                                                                                                                                                                                                                                                                                             U�:.     �   
                     begin5�_�   #   %           $          ����                                                                                                                                                                                                                                                                                                                                                             U�:.     �   
             -          d = DogInfoTemp.find(record.Dog_Id)5�_�   $   &           %          ����                                                                                                                                                                                                                                                                                                                                                             U�:/     �   
                     rescue5�_�   %   '           &          ����                                                                                                                                                                                                                                                                                                                                                             U�:/     �   
                       return true5�_�   &   (           '      
    ����                                                                                                                                                                                                                                                                                                                                                             U�:1     �   
                     end5�_�   '   )           (          ����                                                                                                                                                                                                                                                                                                                                                             U�:5     �   
                    wd = d.WhelpDate5�_�   (   *           )          ����                                                                                                                                                                                                                                                                                                                                                             U�:N     �                      when 'Hr1'5�_�   )   +           *   	       ����                                                                                                                                                                                                                                                                                                                                                             U�:N     �      	                when 'Hr1Temp'5�_�   *   ,           +   	       ����                                                                                                                                                                                                                                                                                                                                                             U�:O     �      	                  wd = record.d.WhelpDate5�_�   +   -           ,   	       ����                                                                                                                                                                                                                                                                                                                                                             U�:P     �      	          	      end5�_�   ,   .           -          ����                                                                                                                                                                                                                                                                                                                                                             U�:[    �      	         !        wd = record.dog.WhelpDate5�_�   -               .          ����                                                                                                                                                                                                                                                                                                                                                             U�:�   	 �                    binding.pry5�_�                     	   
    ����                                                                                                                                                                                                                                                                                                                                                             U�:$     �      	          5�_�                          ����                                                                                                                                                                                                                                                                                                                                                             U�:     �      	        5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U�:     �      	        5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U�:     �      	        5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U�:     �      	        5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U�:     �      	        5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                                             U�:     �      	        5�_�                        
    ����                                                                                                                                                                                                                                                                                                                                                             U�:     �                     �      	               uu5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U�8	     �         #       5��