CREATE VIEW dbo.DistrictZipView
AS

SELECT
      d.DistrictID
    , d.DistrictName
    , z.ZipID
    , z.ZipCode
    , z.ZipName
    , z.CountryID
FROM dbo.Zip z
INNER JOIN dbo.District d
    ON z.DistrictID = d.DistrictID;
GO
