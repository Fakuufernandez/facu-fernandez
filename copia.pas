program copiar;

const
  Max = 50;
  
type
  TArre = array[1..Max] of integer;
  TData = record
        		num : TArre;
        		cant : 0..Max+1;
  end;
  
var
  a : TData;
  b : TData;
 
  procedure carga(var c : TData; d : TData);
  var
    i : integer;
  begin
    for i := 1 to c.cant do begin
      c.num[i] := random(10);
      d.num[i] := -1;
    end;
  end;
  
  procedure mostrar(c : TData);
  var 
    i : integer;
  begin
    for i := 1 to c.cant do begin
      write(c.num[i]);
    end;
  end;                
  
 procedure copiar(c : TData ; d : TData);
 var
   i : integer;
 begin
   for i := 1 to c.cant do begin
     d.num[i] := c.num[i];
   end;
 end;
 
 procedure mostrar2(d : TData);
 var
   i : integer;
   j : integer;
   res : boolean;
 begin
   res := true;
   for i := 1 to d.cant do begin
     for j := d.cant downto 1 do begin
       if d.num[i]=d.num[j]
       then begin
         res := false;
       end  
       else begin
         res := true;
       end;
     end;
   end;
   for i := 1 to d.cant do begin
     if res = true
     then begin
       write(d.num[i])
     end;
   end;
 end;                       
begin
  randomize;
  writeln('Ingrese una cantidad de numeros');
  readln(a.cant);
  carga(a,b);
  mostrar(a);
  writeln('                                        ');       
  copiar(a,b);
  mostrar2(b);        
end.       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
              
             
     		  
