/*
 * Cau 1
 * Viết stored-procedure tính tổng 2 số a, b và in kết quả theo định dạng sau:
 * ‘Tổng 2 số’ + @a + ‘và’ + @b ‘là:’ + @kq
*/

IF OBJECT_ID('uspTong', 'P') IS NOT NULL
	DROP PROC uspTong
GO

CREATE PROC uspTong
	@a int,
	@b int
AS
	return (@a + @b)
GO

-- Goi
DECLARE @tong int = 0, @a int = 2, @b int = 3
EXEC @tong = uspTong @a, @b
PRINT N'Tổng 2 số' + CAST(@a AS varchar) + N' và ' + CAST(@b AS varchar) + N'là:' + CAST(@tong AS varchar)