SELECT i.Session AS QuoteId,  po.PaidStatus,  po.PriceOption,  po.YearlyAmount,  p.StartDate, u.Email, i.FirstName,  i.LastName, u.Phone, i.Address, i.City, i.Zip 
FROM PriceOptionData po
JOIN ProductData p ON po.Session = p.Session
JOIN UserData u ON po.Session = u.Session 
JOIN InsurantData i ON po.Session = i.Session
--WHERE po.Session =  '{B[newQuoteID]}';

SELECT i.Session AS QuoteId,  po.PaidStatus,  po.PriceOption,  po.YearlyAmount,  p.StartDate, u.Email, i.FirstName,  i.LastName, u.Phone, i.Address, i.City, i.Zip 
FROM 
    PriceOptionData po
JOIN ProductData p ON po.Session = p.Session
JOIN UserData u ON po.Session = u.Session 
JOIN InsurantData i ON po.Session = i.Session
WHERE 
    po.Session =  '581122651';


--with Tosca buffer
SELECT i.Session AS QuoteId,  po.PaidStatus,  po.PriceOption,  po.YearlyAmount,  p.StartDate, u.Email, i.FirstName,  i.LastName, u.Phone, i.Address, i.City, i.Zip 
FROM PriceOptionData po
JOIN ProductData p ON po.Session = p.Session
JOIN UserData u ON po.Session = u.Session 
JOIN InsurantData i ON po.Session = i.Session
WHERE po.Session =  '{B[newQuoteID]}';


