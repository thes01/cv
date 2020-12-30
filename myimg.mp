prologues:=3; % Do výstupního EPS souboru vložit fonty.
filenametemplate "%j-%3c.mps"; % Výstupní soubory pojmenovávat ve tvaru 
                               % <jméno_dokumentu>-<trojmístné_číslo_obrázku>.mps

verbatimtex 
\documentclass{minimal}
\usepackage[resetfonts]{cmap}
\usepackage{lmodern}
\usepackage[czech]{babel}
\usepackage[T1]{fontenc}
\begin{document}
etex; % Nastavení pro TeXové úseky kódu -- česká sazba Latin Modern fonty. 
      % Obrázky překládáme příkazem "mpost -tex=latex mpobrazek.mp".

beginfig(1);
    pickup pensquare scaled 0.5 mm; % Od této chvíle se bude kreslit čtvercovým 
                                % perem s tloušťkou 0,5 mm.

    % RIGHT chaple
    z1 = (0 mm, 0 mm);
    z2 = (22 mm, 0 mm);
    z3 = z2 - (0, 55mm);
    z4 = z3 + (33 mm, 0);
    z5 = z4 + (0, 30 mm);

    z7 = z2 + (11 mm, -11 mm);
    z6 = z7 + (11 mm, 0);
    z8 = z7 + (0, 11 mm);

    z9 = z2 + (0, 9mm);
    z11 = z9 - (10mm, 0);
    z10 = z11 + (5mm, 30mm);

    % LEFT chaple
    z12 = z1 - (0, 11mm);
    z13 = z12 - (0, 42mm);
    z14 = z13 + (17 mm, -11 mm);
    z15 = z14 - (0, 16 mm);
    z16 = z15 - (27.8 mm, 0);
    z17 = z12 - (11 mm, 0);
    z18 = z17 - (15 mm, 0);
    z19 = z18 + (12 mm, 17mm);
    z20 = z17 + (2mm, 0);

    path left;
    left = z12--z13--z14--z15--z16--z17--z18--z19--z20--cycle;
    path right;
    right = z1--z2--z3--z4--z5--z6--z7--z8--z9--z10--z11--cycle;

    color blue; blue := (0,80/255,143/255);
    fill left withcolor blue;
    draw left withcolor blue;
    fill right withcolor blue;
    draw right withcolor blue;

endfig;

end; % Konec souboru.