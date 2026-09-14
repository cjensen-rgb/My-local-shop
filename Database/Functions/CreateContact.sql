CREATE   PROCEDURE dbo.CreateContact  
(  
    @ContactTypeName NVARCHAR(100),  
    @Name NVARCHAR(200),  
    @Title NVARCHAR(200),  
    @Email NVARCHAR(200),  
    @Mobile NVARCHAR(50),  
    @Note NVARCHAR(500),  
    @ContactID UNIQUEIDENTIFIER OUTPUT  
)  
AS  
BEGIN  
    SET NOCOUNT ON;  
  
    DECLARE @ContactTypeID UNIQUEIDENTIFIER;  
  
    -- 1) Find ContactTypeID automatisk  
    SELECT @ContactTypeID = ContactTypeID  
    FROM dbo.ContactType  
    WHERE ContactTypeName = @ContactTypeName;  
  
    IF @ContactTypeID IS NULL  
    BEGIN  
        RAISERROR('ContactTypeName not found: %s', 16, 1, @ContactTypeName);  
        RETURN;  
    END  
  
    -- 2) Generér ContactID  
    SET @ContactID = NEWID();  
  
    -- 3) Opret Contact  
    INSERT INTO dbo.Contact  
    (  
        ContactID,  
        ContactTypeID,  
        Name,  
        Title,  
        Email,  
        Mobile,  
        Note,  
        Active  
    )  
    VALUES  
    (  
        @ContactID,  
        @ContactTypeID,  
        @Name,  
        @Title,  
        @Email,  
              @Mobile,  
        @Note,  
        1   -- Active = TRUE  
    );  
END;  
