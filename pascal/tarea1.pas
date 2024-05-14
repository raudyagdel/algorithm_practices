program tarea1;

const 
  SEPARADOR = ' ';
  FINALIZADOR = '.';
  MAXIMO = 1;
  MINIMO = 32767;

var 
  fin: boolean;
  largo , cantPalabras, masLarga, masCorta: integer;

procedure leerPalabraLargo (var largo : integer; var fin : boolean);
var
  letra: char;
begin
  // Inicializo variables
  largo := 0;
  fin := false; 

  // Leo la palabra hasta que encuentro el SEPARADOR o FINALIZADOR
  repeat
    // Leo cada letra de la palabra
    read(letra);

    // Si la letra no es SEPARADOR o FINALIZADOR incremento el largo
    if ((letra <> SEPARADOR) and (letra <> FINALIZADOR))  then
      largo := largo + 1;
     
  until (letra = FINALIZADOR) or (letra = SEPARADOR); 

  // Pregutno si la ultima letra es FINALIZADOR
  if (letra = FINALIZADOR) then
    fin := true
 

end;

procedure leerOracionDatos (var cantPalabras, masLarga, masCorta : integer);
var
  cant: integer;
  letra: char;
begin
 // Inicializo variables
  cantPalabras := 0;
  masLarga := MAXIMO;
  masCorta := MINIMO;
  cant := 0;

  // Leo la oracion hasta que encuentro el FINALIZADOR
  write('Ingrese la oración: ');
  repeat
    // Leo cada letra de la oración
    read(letra);
    
    // Cuando encuentro un SEPARADOR o FINALIZADOR significa que encontre una nueva palabra en la oración
    if ( (letra = SEPARADOR) or (letra = FINALIZADOR) ) then
      begin
        // Incremento el contador de palabras
        cantPalabras := cantPalabras + 1;

        // Si la cantidad de caracteres de la palabra actual es mayor a la mas larga
        if(cant > masLarga) then
          masLarga := cant;

        // Si la cantidad de caracteres de la palabra actual es menor a la mas corta
        if(cant < masCorta) then
          masCorta := cant;  

        // Reseteo el contador para contar la siguiente palabra
        cant := 0;
      end
    else
        cant := cant + 1;
    
  until letra = FINALIZADOR;   


end;

begin

  // Prueba de Procedimiento "leerOracionDatos"
  leerOracionDatos(cantPalabras, masLarga, masCorta);

  write('Tiene ');
  write(cantPalabras);
  write(' palabras.');
  writeln();

  write('La palabra más larga tiene ');
  write(masLarga);
  write(' letras.');
  writeln();

  write('La palabra más corta tiene ');
  write(masCorta);
  write(' letras.');
  writeln();


 
  // Prueba de Procedimiento "leerPalabraLargo"
  // leerPalabraLargo(largo, fin);
  // writeln(largo);
  // writeln(fin);
end.
