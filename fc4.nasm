global start 

section .text

start :

                                                     xor    eax,eax
                                                      push   eax
                                     push   0x77712277
                                           push   0x20797120
                                              push   0x23727071
                                             push   0x78772025
                                             push   0x22757220
                                              push   0x70277973
                                           push   0x71232320
                                             push   0x74717672
                                             push   0x73792772
                                             push   0x76712424
                                            push   0x72732474
                                              push   0x71207925
                                             push   0x74747127
                                              push   0x75237123
                                              push   0x20757278
                                             push   0x75762274
				push   0x20247224
                                             push   0x23797523
                                             push   0x27702476
                                        push   0x24767624
                                           push   0x73247874
                                             push   0x77702027
                                             push   0x77272025
                                            push   0x70772372
                                              push   0x77707622
                                              push   0x23737424
                                            push   0x25227172
                                              push   0x23227375
                                             push   0x73707077
                                           push   0x25242071
                                            push   0x70707872
                                             push   0x78722223
                                                      push   esp
                                                   pop    esi
                                                      mov    edi,esi
                                                     mov    edx,edi
                                                         cld    
                                              mov    ecx,0x80
                                             mov    ebx,0x41
                                                      xor    eax,eax
                                                          push   eax
							testing:
                                                          lodsb  
                                                       xor    eax,ebx
                                                          stosb
							loop testing
                                                      
                                                      push   esp
                                                        pop    esi
                                                  int3   

