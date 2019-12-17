module tablon(largo=300,grosor=4,cant_div=4,ancho_div=25, sep_div=1,
      cant_trav=4, med_trav=4,marg_trav=20,
      x=0,y=0,z=0)
{
 union()   
 {
  //-- Dibuja las divisiones del tablón   
  for (i=[0:cant_div-1]) 
   { translate([x,y+i*(ancho_div+sep_div),z]) 
     cube([largo,ancho_div,grosor]); }
  //-- Calcula los valores para los travesaños   
  dist_trav=(largo-marg_trav*2-cant_trav*med_trav)/(cant_trav-1);
  largo_trav=cant_div*ancho_div+(cant_div-1)*sep_div;
  x_trav=x+marg_trav;    
  //-- Dibuja los travesaños   
  for (i=[0:cant_trav-1]) 
   { translate([x_trav+i*(med_trav+dist_trav), y,z-med_trav]) 
     cube([med_trav,largo_trav,med_trav]); }
 }  
}

rotate([45,0,0])
tablon();
translate([0,10,0]) 
rotate([45,0,0])
tablon();
translate([0,20,0]) 
rotate([45,0,0])
tablon();