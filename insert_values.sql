Insert into users values
('1000', 'Pratham', 'Roy', 'prat4628@gmail.com', 28, '9682568456'),
('1001', 'Shraddha', 'Advani', 'shraddha_advani6248@gmail.com', 26, '9632798647'),
('1002', 'Rahul', 'Kulkarni', 'rahul.kulkarni8648@gmail.com', 48, '9635472848'),
('1003', 'Preran', 'Goswami', 'prerangoswami1186@gmail.com', 16, '8635262747'),
('1004', 'Prithvi', 'Rao', 'prithviroa8864@gmail.com', 24, '6852796434'),
('1005', 'Shreya', 'Raj', 'shreyaraj6518@gmail.com', 22, '8624125186');
('1006', 'Rahul', 'Aggarwal', 'prithviroa8864@gmail.com', 17, '8643521789'),
('1007', 'Hardhik', 'Sharma', 'shreyaraj6518@gmail.com', 35, '6842164678'),
('1008', 'Racheal', 'Aniston', 'rachgreen6248@gmail.com', 28, '8412536748'),
('1009', 'Jeniffer', 'Green', 'jeniffergreen6848@gmail.com', 29, '9721465368');











Insert into Theatre values
('TH1', 'INOX Movies', 3, 'Jayanagar, Bengaluru South'),
('TH2', 'PVR Cinemas', 2, 'JP nagar , Bengaluru South'),
('TH3', 'Cinepolis', 2, 'Yeswanthpur, Bengaluru North'),
('TH4', 'PVR Cinemas1', 2, 'Bannerghattha Road, Bengaluru South'),
('TH5', 'Cinepolis1', 3, 'Yelahankha, Bengaluru North');













Insert into Screen values
('TH11', 40, 60, 'TH1'), 
('TH12', 40, 60, 'TH1'),
('TH13', 40, 60, 'TH1'), 
('TH21', 36, 64, 'TH2'), 
('TH22', 36, 64, 'TH2'), 
('TH31', 50, 50, 'TH3'), 
('TH32', 50, 50, 'TH3'),
('TH41', 40, 60, 'TH4'), 
('TH42', 40, 60, 'TH4'),
('TH51', 50, 50, 'TH5'), 
('TH52', 50, 50, 'TH5'),
('TH53', 50, 50, 'TH5');














Insert into Movie values
('001', 'movie1', 'English','Fantasy/Adventure', 'U/A'),
('002', 'movie2',  'English','Fantasy/SciFi', 'U/A'),
('003', 'movie3','Kannada', 'Fantasy/Action', 'U/A'),
('004', 'movie4', 'Telugu','Drama/Comedy', 'U/A'),
('005', 'movie5', 'Hindi','Romance','R'),
('006', 'movie6','English','Horror' ,'A');













Insert into Shows values
('SHTH110001', '09:00:00 AM', '18/08/22', 40, 60, 400, 350, 'TH11', '001'),
('SHTH110002', '04:00:00 PM', '18/08/22', 38, 60, 400, 350, 'TH11', '002'),
('SHTH120001', '09:00:00 AM', '18/08/22', 40, 60, 400, 350, 'TH12', '003'),
('SHTH130001', '09:00:00 AM', '18/08/22', 40, 60, 400, 350, 'TH13', '004'),
('SHTH210001', '09:00:00 AM', '18/08/22', 36, 64, 415, 375, 'TH21', '003'),
('SHTH220001', '04:00:00 PM', '18/08/22', 36, 64, 415, 375, 'TH22', '002'),
('SHTH310001', '09:00:00 AM', '18/08/22', 50, 50, 480, 380, 'TH31', '002'),
('SHTH310002', '04:00:00 PM', '20/08/22', 50, 50, 480, 380, 'TH31', '004'),
('SHTH320001', '09:00:00 AM', '18/08/22', 50, 46, 480, 380, 'TH32', '005'),
('SHTH320002', '04:00:00 PM', '20/08/22', 50, 50, 480, 380, 'TH32', '006'),
('SHTH410001', '09:00:00 AM', '20/08/22', 40, 60, 415, 375, 'TH41', '001'),
('SHTH420001', '09:00:00 AM', '20/08/22', 40, 60, 415, 375, 'TH42', '004'),
('SHTH510001', '09:00:00 AM', '20/08/22', 50, 50, 480, 380, 'TH51', '002'),
('SHTH520001', '09:00:00 AM', '20/08/22', 50, 50, 480, 380, 'TH52', '003'),
('SHTH530001', '09:00:00 AM', '20/08/22', 50, 50, 480, 380, 'TH53', '005');
















INSERT into Booking values('BOOK0001', 2, 800, '8249621092163126', 'Pratham Roy', 1000,'SHTH110002');
INSERT into Ticket values('TIDBOOK0001001', 'BOOK0001', 'GLD',  400);
INSERT into Ticket values('TIDBOOK0001002', 'BOOK0001', 'GLD',  400);

INSERT into Booking values('BOOK0002', 4, 1520, '9261738271340646', 'Shraddha Advani', 1001, 'SHTH320001');
INSERT into Ticket values('TIDBOOK0002001', 'BOOK0002', 'SLV',  380);
INSERT into Ticket values('TIDBOOK0002002', 'BOOK0002', 'SLV',  380);
INSERT into Ticket values('TIDBOOK0002003', 'BOOK0002', 'SLV',  380);
INSERT into Ticket values('TIDBOOK0002004', 'BOOK0002', 'SLV',  380);

INSERT into Booking values('BOOK0003', 4, 1660, '9864821890538268', 'Hardhik Sharma', 1007, 'SHTH410001');
INSERT into Ticket values('TIDBOOK0003001', 'BOOK0003', 'GLD',  415);
INSERT into Ticket values('TIDBOOK0003002', 'BOOK0003', 'GLD',  415);
INSERT into Ticket values('TIDBOOK0003003', 'BOOK0003', 'GLD',  415);
INSERT into Ticket values('TIDBOOK0003004', 'BOOK0003', 'GLD',  415);

INSERT into Booking values('BOOK0004', 2, 960, '8261723854786968', 'racheal Aniston', 1008, 'SHTH520001');
INSERT into Ticket values('TIDBOOK0004001', 'BOOK0004', 'GLD',  480);
INSERT into Ticket values('TIDBOOK0004002', 'BOOK0004', 'GLD',  480);

INSERT into Booking values('BOOK0005', 2, 960, '6826145790463578', 'Jeniffer Green', 1009, 'SHTH530001');
INSERT into Ticket values('TIDBOOK0005001', 'BOOK0005', 'GLD',  480);
INSERT into Ticket values('TIDBOOK0005002', 'BOOK0005', 'GLD',  480);


