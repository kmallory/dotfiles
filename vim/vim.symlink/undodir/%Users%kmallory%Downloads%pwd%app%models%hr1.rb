Vim�UnDo� �2�-�`�%^v�5a΅<[��	wDBT�f�o                                         U��   	 _�                    	       ����                                                                                                                                                                                                                                                                                                                                                             U���    �      
         u  belongs_to :dog, class_name: 'DogInfo', foreign_key: 'Dog_Id', :touch => true # update parent if this child changes5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U��g     �                 �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U��i     �                  #5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U��j     �                m  scope :submissions_report, -> { where('submitted_by is not null and upper(submitted_by) not in ("ZZ ZZ")')}5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U��k     �             �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U��l     �                 �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U��o     �             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             U��q     �                 5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             U��r    �                  # Scopes �                  # 5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U��v     �   
             `  #user ZZ ZZ = userid 20. old system filters this on submissions report for undocumented reason5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             U��x    �             �             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             U�]+    �                   �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U�^�    �                    binding.pry5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U��     �                -  before_validation :set_hr1_defaults_dogInfo5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U��     �                  def set_hr1_defaults_dogInfo5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U��     �                3    unless self.dog.nil? || self.dog.WhelpDate.nil?5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U��     �                T      if !self.GM1_PRE.nil? && self.dog.WhelpDate.to_date > Date.parse("01/09/1999")5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U��     �                j        errors[:GM1_PRE1999] << 'A dog whelped after Sept 1,1999 may not have a Pre 1999 GM1 Test Result.'5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U��     �                          false5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U��     �                	      end5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             U��     �                    end5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             U��   	 �                  end5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                             U��V     �   	   
       �      
         �  belongs_to :dog, c:dog,  -> { includes :admin_note }, lass_name: 'DogInfo', foreign_key: 'Dog_Id', :touch => true # update parent if this child changes5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                             U��Y     �      
         �  belongs_to :dog, :dog,  -> { includes :admin_note }, lass_name: 'DogInfo', foreign_key: 'Dog_Id', :touch => true # update parent if this child changes5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                             U��Y     �      
         �  belongs_to :dog, dog,  -> { includes :admin_note }, lass_name: 'DogInfo', foreign_key: 'Dog_Id', :touch => true # update parent if this child changes5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                             U��Y     �      
         �  belongs_to :dog, og,  -> { includes :admin_note }, lass_name: 'DogInfo', foreign_key: 'Dog_Id', :touch => true # update parent if this child changes5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                             U��Z     �      
         �  belongs_to :dog, g,  -> { includes :admin_note }, lass_name: 'DogInfo', foreign_key: 'Dog_Id', :touch => true # update parent if this child changes5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                             U��Z     �      
         �  belongs_to :dog, ,  -> { includes :admin_note }, lass_name: 'DogInfo', foreign_key: 'Dog_Id', :touch => true # update parent if this child changes5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                             U��Z     �      
         �  belongs_to :dog,   -> { includes :admin_note }, lass_name: 'DogInfo', foreign_key: 'Dog_Id', :touch => true # update parent if this child changes5�_�      	              	       ����                                                                                                                                                                                                                                                                                                                                                             U��Z     �      
         �  belongs_to :dog,  -> { includes :admin_note }, lass_name: 'DogInfo', foreign_key: 'Dog_Id', :touch => true # update parent if this child changes5�_�      
           	   	       ����                                                                                                                                                                                                                                                                                                                                                             U��Z    �      
         �  belongs_to :dog, -> { includes :admin_note }, lass_name: 'DogInfo', foreign_key: 'Dog_Id', :touch => true # update parent if this child changes5�_�   	               
   	   0    ����                                                                                                                                                                                                                                                                                                                                                             U��^    �      
         �  belongs_to :dog, -> { includes :admin_note }, class_name: 'DogInfo', foreign_key: 'Dog_Id', :touch => true # update parent if this child changes5��