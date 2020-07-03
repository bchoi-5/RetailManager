CREATE PROCEDURE [dbo].[spSale_Insert]
	@Id INT OUTPUT,
	@CashierId NVARCHAR(128),
	@SaleDate DATETIME2,
	@SubTotal MONEY,
	@Tax MONEY,
	@TOTAL MONEY
AS

BEGIN
	SET NOCOUNT ON;

	INSERT INTO dbo.Sale(CashierId, SaleDate, Subtotal, Tax, Total)
	VALUES (@CashierId, @SaleDate, @Subtotal, @Tax, @Total)

	SELECT @Id = @@IDENTITY;
END
