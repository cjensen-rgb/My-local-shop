Contact = Juridisk eller organisatorisk enhed

CREATE member Flow Fase1 følger følgende 9 trin
TRIN 1
Find ContactTypeID for virksomheden

TRIN 2
Opret Butik Contact

TRIN 3
Gem ShopContactID

TRIN 4
IF @PrimaryContactName IS NOT NULL

TRIN 5
Find ContactTypeID for Butikschef/Ejer

TRIN 6
Opret Primær Kontakt

TRIN 7
ReferenceContactID = ShopContactID

TRIN 8
IsPrimaryContact = 1

TRIN 9
Returnér begge GUID'er

Tjek om adressen findes i forvejen. (ved ansatte i virksomheder; ved flere medlemmer pr. hustand)
1. Find ZipID
2. Check om Address allerede findes
3. Hvis JA
      brug eksisterende AddressID
4. Hvis NEJ
      opret ny Address
5. Opret Contact
