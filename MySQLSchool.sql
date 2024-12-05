-- Tạo cơ sở dữ liệu
CREATE DATABASE StudentDB;

USE StudentDB;

-- Tạo bảng Students
CREATE TABLE Students (
    StudentID INT IDENTITY(1,1) PRIMARY KEY, -- Khóa chính tự tăng
    StudentName NVARCHAR(100) NOT NULL,
    StudentClass NVARCHAR(10) NOT NULL,
    StudentClassCode NVARCHAR(10) NOT NULL,
    StudentMhs NVARCHAR(50) NOT NULL,
    StudentMsv NVARCHAR(50) NOT NULL,
    StudentState NVARCHAR(50) NOT NULL,
    StudentSemester NVARCHAR(50) NOT NULL,
    StudentGender NVARCHAR(10) NOT NULL,
    StudentDantoc NVARCHAR(50) NOT NULL,
    StudentNs NVARCHAR(200) NOT NULL,
    StudentCCCD NVARCHAR(20) NOT NULL,
    StudentDob DATE NOT NULL,
    StudentEmail NVARCHAR(100),
    StudentNumber NVARCHAR(15),
    StudentAddress NVARCHAR(200),
    StudentResident NVARCHAR(200)
);
GO
INSERT INTO Students (
    studentName, studentClass, studentClassCode, studentMhs, studentMsv, 
    studentState, studentSemester, studentGender, studentDantoc, studentNs, 
    studentCCCD, studentDob, studentEmail, studentNumber, studentAddress, 
    studentResident
) VALUES
(N'Trịnh Đức Thủng', N'8', N'B', N'THCS_2113', N'MSV_001', N'Đang học', N'2021-2025', N'Male', N'Kinh', N'Bách Thuận, Vũ Thư, Thái Bình', N'034203005852', N'2003-07-28', N'trinhthuong26022003@gmail.com', N'0868472032', N'Định Công, Hoàng Mai, Hà Nội', N'Bách Thuận, Vũ Thư, Thái Bình'),
(N'Nguyễn Văn An', N'9', N'A', N'THCS_2114', N'MSV_002', N'Đang học', N'2021-2025', N'Male', N'Kinh', N'Hà Nội', N'034203005853', N'2004-05-15', N'nguyenvanan@gmail.com', N'0912345678', N'Cầu Giấy, Hà Nội', N'Hà Nội'),
(N'Lê Thị Bình', N'10', N'C', N'THCS_2115', N'MSV_003', N'Đang học', N'2021-2025', N'Female', N'Kinh', N'Hải Phòng', N'034203005854', N'2005-10-20', N'lethibinh@gmail.com', N'0987654321', N'Lê Chân, Hải Phòng', N'Hải Phòng'),
(N'Phạm Minh Hoàng', N'11', N'D', N'THCS_2116', N'MSV_004', N'Đang học', N'2021-2025', N'Male', N'Kinh', N'Đà Nẵng', N'034203005855', N'2004-12-12', N'phamminhhoang@gmail.com', N'0901234567', N'Hải Châu, Đà Nẵng', N'Đà Nẵng'),
(N'Trần Thị Hồng', N'12', N'E', N'THCS_2117', N'MSV_005', N'Đang học', N'2021-2025', N'Female', N'Kinh', N'Huế', N'034203005856', N'2003-05-05', N'tranthihong@gmail.com', N'0934567890', N'Phú Nhuận, Huế', N'Huế'),
(N'Ngô Văn Cường', N'8', N'F', N'THCS_2118', N'MSV_006', N'Đang học', N'2021-2025', N'Male', N'Kinh', N'Hà Nội', N'034203005857', N'2005-10-10', N'ngovancuong@gmail.com', N'0981234567', N'Hoàn Kiếm, Hà Nội', N'Hà Nội'),
(N'Đỗ Thị Lan', N'9', N'G', N'THCS_2119', N'MSV_007', N'Đang học', N'2021-2025', N'Female', N'Kinh', N'Hải Dương', N'034203005858', N'2004-02-22', N'dothilan@gmail.com', N'0976543210', N'Nam Sách, Hải Dương', N'Hải Dương'),
(N'Vũ Văn Nam', N'10', N'H', N'THCS_2120', N'MSV_008', N'Đang học', N'2021-2025', N'Male', N'Kinh', N'Quảng Ninh', N'034203005859', N'2003-03-30', N'vuvannam@gmail.com', N'0967890123', N'Hạ Long, Quảng Ninh', N'Quảng Ninh'),
(N'Lý Thị Hoa', N'11', N'I', N'THCS_2121', N'MSV_009', N'Đang học', N'2021-2025', N'Female', N'Kinh', N'Bắc Ninh', N'034203005860', N'2004-08-18', N'lythihoa@gmail.com', N'0954321098', N'Từ Sơn, Bắc Ninh', N'Bắc Ninh'),
(N'Trương Văn Bình', N'12', N'J', N'THCS_2122', N'MSV_010', N'Đang học', N'2021-2025', N'Male', N'Kinh', N'Hà Nam', N'034203005861', N'2003-12-25', N'truongvanbinh@gmail.com', N'0943210987', N'Phủ Lý, Hà Nam', N'Hà Nam'),
(N'Phan Thị Ngọc', N'8', N'K', N'THCS_2123', N'MSV_011', N'Đang học', N'2021-2025', N'Female', N'Kinh', N'Ninh Bình', N'034203005862', N'2005-04-14', N'phanthingoc@gmail.com', N'0932109876', N'Ninh Bình', N'Ninh Bình'),
(N'Hoàng Văn Phúc', N'9', N'L', N'THCS_2124', N'MSV_012', N'Đang học', N'2021-2025', N'Male', N'Kinh', N'Thanh Hóa', N'034203005863', N'2004-07-07', N'hoangvanphuc@gmail.com', N'0921098765', N'Thanh Hóa', N'Thanh Hóa'),
(N'Nguyễn Thị Hạnh', N'10', N'M', N'THCS_2125', N'MSV_013', N'Đang học', N'2021-2025', N'Female', N'Kinh', N'Nghệ An', N'034203005864', N'2003-01-01', N'nguyenthihanh@gmail.com', N'0910987654', N'Vinh, Nghệ An', N'Nghệ An'),
(N'Trần Văn Tùng', N'11', N'N', N'THCS_2126', N'MSV_014', N'Đang học', N'2021-2025', N'Male', N'Kinh', N'Hà Tĩnh', N'034203005865', N'2004-11-11', N'tranvantung@gmail.com', N'0909876543', N'Hà Tĩnh', N'Hà Tĩnh'),
(N'Lê Thị Mai', N'12', N'O', N'THCS_2127', N'MSV_015', N'Đang học', N'2021-2025', N'Female', N'Kinh', N'Quảng Bình', N'034203005866', N'2003-09-09', N'lethimai@gmail.com', N'0898765432', N'Đồng Hới, Quảng Bình', N'Quảng Bình'),
(N'Phạm Văn Hùng', N'8', N'P', N'THCS_2128', N'MSV_016', N'Đang học', N'2021-2025', N'Male', N'Kinh', N'Quảng Trị', N'034203005867', N'2005-06-06', N'phamvanhung@gmail.com', N'0887654321', N'Đông Hà, Quảng Trị', N'Quảng Trị'),
(N'Nguyễn Thị Thu', N'9', N'Q', N'THCS_2129', N'MSV_017', N'Đang học', N'2021-2025', N'Female', N'Kinh', N'Thừa Thiên Huế', N'034203005868', N'2004-03-03', N'nguyenthithu@gmail.com', N'0876543210', N'Huế', N'Thừa Thiên Huế'),
(N'Trần Văn Long', N'10', N'R', N'THCS_2130', N'MSV_018', N'Đang học', N'2021-2025', N'Male', N'Kinh', N'Quảng Nam', N'034203005869', N'2003-02-02', N'tranvanlong@gmail.com', N'0865432109', N'Tam Kỳ, Quảng Nam', N'Quảng Nam'),
(N'Lê Thị Hương', N'11', N'S', N'THCS_2131', N'MSV_019', N'Đang học', N'2021-2025', N'Female', N'Kinh', N'Gia Lai', N'034203005870', N'2004-01-01', N'lethihuong@gmail.com', N'0854321098', N'Gia Lai', N'Gia Lai');

SELECT * FROM Students;
