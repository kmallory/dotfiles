Vim�UnDo� �#��X��޼�co���{ܫ�I��l���Ul�"Y�   	   m    scope :other_groups, -> { where('disease_group not in ( 'EYES', 'ORTHOPEDIC' )').group('DISEASE_GROUP') }      ;                       U�v�    _�                        +    ����                                                                                                                                                                                                                                                                                                                                                             U�vO     �         	      E    scope :eyes, -> { where(disease_group:'eyes').order("DIAGNOSIS")}5�_�                       +    ����                                                                                                                                                                                                                                                                                                                                                             U�vQ     �         	      F    scope :eyes, -> { where(disease_group:'weyes').order("DIAGNOSIS")}5�_�                       +    ����                                                                                                                                                                                                                                                                                                                                                             U�vR     �         	      A    scope :eyes, -> { where(disease_group:'').order("DIAGNOSIS")}5�_�                       ;    ����                                                                                                                                                                                                                                                                                                                                                             U�vV     �         	      i    scope :other_groups, -> {where("disease_group not in ('eyes', 'ORTHOPEDIC')").group("DISEASE_GROUP")}5�_�                       ;    ����                                                                                                                                                                                                                                                                                                                                                             U�vW    �         	      e    scope :other_groups, -> {where("disease_group not in ('', 'ORTHOPEDIC')").group("DISEASE_GROUP")}5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             U�vh     �                i    scope :other_groups, -> {where("disease_group not in ('EYES', 'ORTHOPEDIC')").group("DISEASE_GROUP")}5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             U�vk    �      	          S    scope :other, -> (group) {where("disease_group = ?", group).order("DIAGNOSIS")}5�_�      	                 :    ����                                                                                                                                                                                                                                                                                                                                                             U�vu     �         	      i    scope :other_groups, -> {where('disease_group not in ('EYES', 'ORTHOPEDIC')').group('DISEASE_GROUP')}5�_�      
           	      O    ����                                                                                                                                                                                                                                                                                                                                                             U�vx    �         	      j    scope :other_groups, -> {where('disease_group not in ( 'EYES', 'ORTHOPEDIC')').group('DISEASE_GROUP')}5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                             U�v�     �         	      k    scope :other_groups, -> {where('disease_group not in ( 'EYES', 'ORTHOPEDIC' )').group('DISEASE_GROUP')}5�_�   
                    k    ����                                                                                                                                                                                                                                                                                                                                                             U�v�     �         	      l    scope :other_groups, -> { where('disease_group not in ( 'EYES', 'ORTHOPEDIC' )').group('DISEASE_GROUP')}5�_�                       R    ����                                                                                                                                                                                                                                                                                                                                                             U�v�     �      	   	      S    scope :other, -> (group) {where('disease_group = ?', group).order('DIAGNOSIS')}5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U�v�     �      	   	      T    scope :other, -> (group) {where('disease_group = ?', group).order('DIAGNOSIS') }5�_�                       ;    ����                                                                                                                                                                                                                                                                                                                                                             U�v�     �         	      m    scope :other_groups, -> { where('disease_group not in ( 'EYES', 'ORTHOPEDIC' )').group('DISEASE_GROUP') }5�_�                       O    ����                                                                                                                                                                                                                                                                                                                                                             U�v�    �         	      l    scope :other_groups, -> { where('disease_group not in ('EYES', 'ORTHOPEDIC' )').group('DISEASE_GROUP') }5�_�                       $    ����                                                                                                                                                                                                                                                                                                                                                             U�v�     �         	      k    scope :other_groups, -> { where('disease_group not in ('EYES', 'ORTHOPEDIC')').group('DISEASE_GROUP') }5�_�                        P    ����                                                                                                                                                                                                                                                                                                                                                             U�v�    �         	      k    scope :other_groups, -> { where("disease_group not in ('EYES', 'ORTHOPEDIC')').group('DISEASE_GROUP') }5��