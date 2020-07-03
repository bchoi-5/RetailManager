CREATE PROCEDURE [dbo].[spSale_Insert]
	@Id INT OUTPUT,
	@CashierId NVARCHAR(128),
	@SaleDate DATETIME2,
	@Subtotal MONEY,
	@Tax MONEY,
	@Total MONEY
AS

BEGIN
	SET NOCOUNT ON;

	INSERT INTO dbo.Sale(CashierId, SaleDate, Subtotal, Tax, Total)
	VALUES (@CashierId, @SaleDate, @Subtotal, @Tax, @Total);

	SELECT @Id = @@IDENTITY;
END
