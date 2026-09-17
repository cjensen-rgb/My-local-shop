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
