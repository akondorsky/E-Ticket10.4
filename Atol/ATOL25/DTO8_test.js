function AddLeft(str, add, len)
{
  // ������ ��� � JScript ��� ������� ���������������� ������
  str = String(str);
  while (str.length < len)
    str = add + str;
  return str;
}

function dump(Text)
{
  var DumpFolder = "C:\\DUMPS\\";
  var now = new Date();
  var DumpFile = now.getYear() + '_' + AddLeft(now.getMonth() + 1, '0', 2) + '_' + AddLeft(now.getDate(), '0', 2) + '_' + AddLeft(now.getHours(), '0', 2) + '_' + AddLeft(now.getMinutes(), '0', 2) + '_' + AddLeft(now.getSeconds(), '0', 2) + '_' + AddLeft(now.getMilliseconds(), '0',3) + ".txt";
  fso = new ActiveXObject("Scripting.FileSystemObject");
  if (!fso.FolderExists(DumpFolder))
    fso.CreateFolder(DumpFolder);
  ts = fso.OpenTextFile(DumpFolder + DumpFile, 8, true);
  ts.WriteLine(Text);  
  ts.Close();
}

// ������� ������ � ������� ���� 77�

// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
// --------------------------- ����������� � ���������� -----------------------------//
// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //

var driver = new ActiveXObject ("AddIn.FPrnM8");
driver.AddDevice();
driver.Model = 69;
driver.UseAccessPassword = 1;
driver.DefaultPassword = 30;
driver.PortNumber = 1008;
driver.BaudRate = 18;
driver.ShowProperties()
driver.DeviceEnabled = 1;


// ��� - 1, ���� - 8, ��� - 32 
driver.Mode = 0;
driver.SetMode();
driver.AttrNumber = 1062;
driver.ReadAttribute();
dump(driver.AttrValue);

// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
// ---------------------------------- ������� ����� ------------------------------------//
// // // // // // // // // // // // // // // // // // // // // // // // // // // // // // 

driver.Mode = 1;
driver.SetMode();
driver.NewDocument();
driver.AttrNumber = 1021;
driver.AttrValue = "������� ������ ������ �.�.";
driver.WriteAttribute();
driver.OpenSession();

// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
// ---------- ��� ������� ��� �������� ������������ ���� ���������� ---------- //
// // // // // // // // // // // // // // // // // // // // // // // // // // // // // // 

// Mode - �����:
// 	0 - ������
// 	1 - �����������
// 	2 - ������� ��� �������
// 	3 - ������� � ��������
driver.Mode = 1;
driver.SetMode();

driver.NewDocument();

// �������� ��������� � ��� �������
driver.AttrNumber = 1021;
driver.AttrValue = "������� ������ ������ �.�.";
driver.WriteAttribute();

// CheckType - ��� ����:
// 	1 - ������
// 	2 - ������� �������
// 	4 - ������
// 	5 - ������� �������
// 	7 - ��������� �������
// 	9 - ��������� �������
driver.CheckType = 1;
// CheckMode - ����� ������������ ����:
// 	0 - ������ � ����������� ���� ��� ������ �� ������� �����
// 	1 - �������� �� ������� �����
driver.CheckMode = 1;
driver.OpenCheck();

driver.AttrNumber = 1055;
// ����������� ������� ��������������� � ����:
// 	��� - 1
// 	��� ����� - 2
// 	��� �����-������ - 4
// 	���� - 8
// 	��� - 16
// 	��� - 32
driver.AttrValue = 8;
driver.WriteAttribute();

// ����������� ������ ��� ������
driver.Name = "������ 3.2%";
driver.Price = 50.33;
driver.Quantity = 2;
driver.Department = 0;
// TaxTypeNumber - ����� ������:
// 	0 - ����� �� ������
// 	1 - ��� 0%
// 	2 - ��� 10%
// 	3 - ��� 18%
// 	4 - ��� �� ����������
// 	5 - ��� � ��������� ������� 10%
// 	6 - ��� � ��������� ������� 18%
driver.TaxTypeNumber = 4;
// ������������� ������������ � �������� �� ���� �� �������, � ���������� �� ����������� ������� �������� ������������ ������� � �� ���������� ������ � ���, ������� ��� ��� ���������� ������ ���������������
// driver.DiscountValue = 10;
// // DiscountType - ��� ������:
// // 	0 - ��������
// // 	1 - ����������
// driver.DiscountType = 0;
driver.Registration();
driver.Caption = "� ��� ����� ������: 4.67\n���� ��� ������: 55.00";
driver.PrintString();

// ������ ������ (���������� ���� ��� ������������� �� ��������). ������ �� ��� �������� ������ ��� ��� ���������� �� �����. ����� ������� ����������: ��������, ���������� "�� �������", ���������� ��������.  SummCharge(), PercentsCharge(), PercentsDiscount () � ResetChargeDiscount () ����� ����������
// Destination - ���������� ������:
// 	0 - �� ���
// 	1 - �� ������� (����������)
driver.Destination = 0;
driver.Summ = 0.66;
driver.SummDiscount();

// ������������ ������ � ����������� �� ������� ����
driver.Caption = "--������ �� ����--";
driver.PrintString();
driver.Caption = "����� ���� ��� ������ 110.00";
driver.PrintString();
driver.Caption = "������ �� �����: 9.34";
driver.PrintString();
driver.Caption = "����������: 0.66";
driver.PrintString();

// ������ � �������� ����
// TypeClose - ��� ������:
// 	0 - ���������
// 	1 - ������������ ���������� �������
driver.TypeClose = 0;
driver.Summ = 500.00;
driver.Payment();
driver.CloseCheck();

// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
// ----- ��� �������� ������� ��� �������� ������������ ���� ���������� ---- //
// // // // // // // // // // // // // // // // // // // // // // // // // // // // // // 

// Mode - �����:
// 	0 - ������
// 	1 - �����������
// 	2 - ������� ��� �������
// 	3 - ������� � ��������
driver.Mode = 1;
driver.SetMode();

driver.NewDocument();

// �������� ��������� � ��� �������
driver.AttrNumber = 1021;
driver.AttrValue = "������� ������ ������ �.�.";
driver.WriteAttribute();

// CheckType - ��� ����:
// 	1 - ������
// 	2 - ������� �������
// 	4 - ������
// 	5 - ������� �������
// 	7 - ��������� �������
// 	9 - ��������� �������
driver.CheckType = 2;
// CheckMode - ����� ������������ ����:
// 	0 - ������ � ����������� ���� ��� ������ �� ������� �����
// 	1 - �������� �� ������� �����
driver.CheckMode = 1;
driver.OpenCheck();

driver.AttrNumber = 1055;
// ����������� ������� ��������������� � ����:
// 	��� - 1
// 	��� ����� - 2
// 	��� �����-������ - 4
// 	���� - 8
// 	��� - 16
// 	��� - 32
driver.AttrValue = 8;
driver.WriteAttribute();

// ����������� ������ ��� ������
driver.Name = "������ 3.2%";
driver.Price = 50.33;
driver.Quantity = 2;
driver.Department = 0;
// TaxTypeNumber - ����� ������:
// 	0 - ����� �� ������
// 	1 - ��� 0%
// 	2 - ��� 10%
// 	3 - ��� 18%
// 	4 - ��� �� ����������
// 	5 - ��� � ��������� ������� 10%
// 	6 - ��� � ��������� ������� 18%
driver.TaxTypeNumber = 4;
// ������������� ������������ � �������� �� ���� �� �������, � ���������� �� ����������� ������� �������� ������������ ������� � �� ���������� ������ � ���, ������� ��� ��� ���������� ������ ���������������
// driver.DiscountValue = 10;
// // DiscountType - ��� ������:
// // 	0 - ��������
// // 	1 - ����������
// driver.DiscountType = 0;
driver.Registration();
driver.Caption = "� ��� ����� ������: 4.67\n���� ��� ������: 55.00";
driver.PrintString();

// ������ ������ (���������� ���� ��� ������������� �� ��������). ������ �� ��� �������� ������ ��� ��� ���������� �� �����. ����� ������� ����������: ��������, ���������� "�� �������", ���������� ��������.  SummCharge(), PercentsCharge(), PercentsDiscount () � ResetChargeDiscount () ����� ����������
// Destination - ���������� ������:
// 	0 - �� ���
// 	1 - �� ������� (����������)
driver.Destination = 0;
driver.Summ = 0.66;
driver.SummDiscount();

// ������������ ������ � ����������� �� ������� ����
driver.Caption = "--������ �� ����--";
driver.PrintString();
driver.Caption = "����� ���� ��� ������ 110.00";
driver.PrintString();
driver.Caption = "������ �� �����: 9.34";
driver.PrintString();
driver.Caption = "����������: 0.66";
driver.PrintString();

// ������ � �������� ����
// TypeClose - ��� ������:
// 	0 - ���������
// 	1 - ������������ ���������� �������
driver.TypeClose = 0;
driver.Summ = 100.00;
driver.Payment();
driver.CloseCheck();

// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
// ---------- ��� ������� � ��������� ������������ ���� ���������� ---------- //
// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //

// Mode - �����:
// 	0 - ������
// 	1 - �����������
// 	2 - ������� ��� �������
// 	3 - ������� � ��������
driver.Mode = 1;
driver.SetMode();

driver.NewDocument();

// �������� ��������� � ��� �������
driver.AttrNumber = 1021;
driver.AttrValue = "������� ������ ������ �.�.";
driver.WriteAttribute();

// CheckType - ��� ����:
// 	1 - ������
// 	2 - ������� �������
// 	4 - ������
// 	5 - ������� �������
// 	7 - ��������� �������
// 	9 - ��������� �������
driver.CheckType = 1;
// CheckMode - ����� ������������ ����:
// 	0 - ������ � ����������� ���� ��� ������ �� ������� �����
// 	1 - �������� �� ������� �����
driver.CheckMode = 1;
driver.OpenCheck();

driver.AttrNumber = 1055;
// ����������� ������� ��������������� � ����:
// 	��� - 1
// 	��� ����� - 2
// 	��� �����-������ - 4
// 	���� - 8
// 	��� - 16
// 	��� - 32
driver.AttrValue = 1;
driver.WriteAttribute();

// ������ �������� ���������� ��� �������� ������������ ����
driver.AttrNumber = 1008;
driver.AttrValue = "+79091235566";
driver.WriteAttribute();

// ����������� ������ ��� ������
driver.Name = "�������� ������� Ҹ��";
driver.Price = 47.70;
driver.Quantity = 6;
driver.Department = 0;
// driver.DiscountType = 0;
// TaxTypeNumber - ����� ������:
// 	0 - ����� �� ������
// 	1 - ��� 0%
// 	2 - ��� 10%
// 	3 - ��� 18%
// 	4 - ��� �� ����������
// 	5 - ��� � ��������� ������� 10%
// 	6 - ��� � ��������� ������� 18%
driver.TaxTypeNumber = 4;
// ������������� ������������ � �������� �� ���� �� �������, � ���������� �� ����������� ������� �������� ������������ ������� � �� ���������� ������ � ���, ������� ��� ��� ���������� ������ ���������������
// driver.DiscountValue = 10;
// // DiscountType - ��� ������:
// // 	0 - ��������
// // 	1 - ����������
driver.Registration();

driver.Caption = "� ��� ����� ������ 10%: 5.30 \n���� ��� ������: 53.00";
driver.PrintString();

driver.Name = "������ ������ 0,5";
driver.Price = 813.50;
driver.Quantity = 1;
driver.Department = 0;
// TaxTypeNumber - ����� ������:
// 	0 - ����� �� ������
// 	1 - ��� 0%
// 	2 - ��� 10%
// 	3 - ��� 18%
// 	4 - ��� �� ����������
// 	5 - ��� � ��������� ������� 10%
// 	6 - ��� � ��������� ������� 18%
driver.TaxTypeNumber = 3;
// ������������� ������������ � �������� �� ���� �� �������, � ���������� �� ����������� ������� �������� ������������ ������� � �� ���������� ������ � ���, ������� ��� ��� ���������� ������ ���������������
// driver.DiscountValue = 10;
// // DiscountType - ��� ������:
// // 	0 - ��������
// // 	1 - ����������
// driver.DiscountType = 0;
driver.Registration();

// ������ ������ (���������� ���� ��� ������������� �� ��������). ������ �� ��� �������� ������ ��� ��� ���������� �� �����. ����� ������� ����������: ��������, ���������� "�� �������", ���������� ��������.  SummCharge(), PercentsCharge(), PercentsDiscount () � ResetChargeDiscount () ����� ����������
// Destination - ���������� ������:
// 	0 - �� ���
// 	1 - �� ������� (����������)
driver.Destination = 0;
driver.Summ = 0.70;
driver.SummDiscount();

// ������������ ������ � ����������� �� ������� ����
driver.Caption = "--������ �� ����--";
driver.PrintString();
driver.Caption = "����� ���� ��� ������ 1131.50";
driver.PrintString();
driver.Caption = "������ �� �����: 31.80";
driver.PrintString();
driver.Caption = "����������: 0.70";
driver.PrintString();

// TypeClose - ��� ������:
// 	0 - ���������
// 	1 - ������������ ���������� �������
driver.TypeClose = 0;
driver.Summ = 1500.00;
driver.Payment();
driver.CloseCheck();

// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
// ---------- ��� ������� � ��������� ������������ ���� ���������� -----------//
// ---------------------------- ��� ������ �� ������� ����� ---------------------------//
// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //

// Mode - �����:
// 	0 - ������
// 	1 - �����������
// 	2 - ������� ��� �������
// 	3 - ������� � ��������
driver.Mode = 1;
driver.SetMode();

driver.NewDocument();

// �������� ��������� � ��� �������
driver.AttrNumber = 1021;
driver.AttrValue = "������� ������ ������ �.�.";
driver.WriteAttribute();

// CheckType - ��� ����:
// 	1 - ������
// 	2 - ������� �������
// 	4 - ������
// 	5 - ������� �������
// 	7 - ��������� �������
// 	9 - ��������� �������
driver.CheckType = 1;
// CheckMode - ����� ������������ ����:
// 	0 - ������ � ����������� ���� ��� ������ �� ������� �����
// 	1 - �������� �� ������� �����
driver.CheckMode = 0;
driver.OpenCheck();

driver.AttrNumber = 1055;
// ����������� ������� ��������������� � ����:
// 	��� - 1
// 	��� ����� - 2
// 	��� �����-������ - 4
// 	���� - 8
// 	��� - 16
// 	��� - 32
driver.AttrValue = 1;
driver.WriteAttribute();

// ������ �������� ���������� ��� �������� ������������ ����
driver.AttrNumber = 1008;
driver.AttrValue = "+79091235566";
driver.WriteAttribute();

// ����������� ������ ��� ������
driver.Name = "�������� ������� Ҹ��";
driver.Price = 47.70;
driver.Quantity = 6;
driver.Department = 0;
// driver.DiscountType = 0;
// TaxTypeNumber - ����� ������:
// 	0 - ����� �� ������
// 	1 - ��� 0%
// 	2 - ��� 10%
// 	3 - ��� 18%
// 	4 - ��� �� ����������
// 	5 - ��� � ��������� ������� 10%
// 	6 - ��� � ��������� ������� 18%
driver.TaxTypeNumber = 4;
// ������������� ������������ � �������� �� ���� �� �������, � ���������� �� ����������� ������� �������� ������������ ������� � �� ���������� ������ � ���, ������� ��� ��� ���������� ������ ���������������
// driver.DiscountValue = 10;
// // DiscountType - ��� ������:
// // 	0 - ��������
// // 	1 - ����������
driver.Registration();

driver.Caption = "� ��� ����� ������ 10%: 5.30 \n���� ��� ������: 53.00";
driver.PrintString();

driver.Name = "������ ������ 0,5";
driver.Price = 813.50;
driver.Quantity = 1;
driver.Department = 0;
// TaxTypeNumber - ����� ������:
// 	0 - ����� �� ������
// 	1 - ��� 0%
// 	2 - ��� 10%
// 	3 - ��� 18%
// 	4 - ��� �� ����������
// 	5 - ��� � ��������� ������� 10%
// 	6 - ��� � ��������� ������� 18%
driver.TaxTypeNumber = 3;
// ������������� ������������ � �������� �� ���� �� �������, � ���������� �� ����������� ������� �������� ������������ ������� � �� ���������� ������ � ���, ������� ��� ��� ���������� ������ ���������������
// driver.DiscountValue = 10;
// // DiscountType - ��� ������:
// // 	0 - ��������
// // 	1 - ����������
// driver.DiscountType = 0;
driver.Registration();

// ������ ������ (���������� ���� ��� ������������� �� ��������). ������ �� ��� �������� ������ ��� ��� ���������� �� �����. ����� ������� ����������: ��������, ���������� "�� �������", ���������� ��������.  SummCharge(), PercentsCharge(), PercentsDiscount () � ResetChargeDiscount () ����� ����������
// Destination - ���������� ������:
// 	0 - �� ���
// 	1 - �� ������� (����������)
driver.Destination = 0;
driver.Summ = 0.70;
driver.SummDiscount();

// ������������ ������ � ����������� �� ������� ����
driver.Caption = "--������ �� ����--";
driver.PrintString();
driver.Caption = "����� ���� ��� ������ 1131.50";
driver.PrintString();
driver.Caption = "������ �� �����: 31.80";
driver.PrintString();
driver.Caption = "����������: 0.70";
driver.PrintString();

// TypeClose - ��� ������:
// 	0 - ���������
// 	1 - ������������ ���������� �������
driver.TypeClose = 0;
driver.Summ = 1500.00;
driver.Payment();
driver.CloseCheck();

// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
// ----------------------------- ��� ��������� ������� ------------------------------- //
// // // // // // // // // // // // // // // // // // // // // // // // // // // // // // 

// Mode - �����:
// 	0 - ������
// 	1 - �����������
// 	2 - ������� ��� �������
// 	3 - ������� � ��������
driver.Mode = 1;
driver.SetMode();

driver.NewDocument();

// �������� ��������� � ��� �������
driver.AttrNumber = 1021;
driver.AttrValue = "������� ������ ������ �.�.";
driver.WriteAttribute();

// CheckType - ��� ����:
// 	1 - ������
// 	2 - ������� �������
// 	4 - ������
// 	5 - ������� �������
// 	7 - ��������� �������
// 	9 - ��������� �������
driver.CheckType = 7;
// CheckMode - ����� ������������ ����:
// 	0 - ������ � ����������� ���� ��� ������ �� ������� �����
// 	1 - �������� �� ������� �����
driver.CheckMode = 1;
driver.OpenCheck();

// ����������� ����� ���������. � ����� ��������� ����� ���������������� ������ ���� ������� � ���������� 1 �� ����� ���������. ���������� ���,  ������/��������, ��������� ������ ���������. ��� ��������� ����� ������ ������� ��� ����� �� ������ ���� ������.
driver.Name = "��������� �������";
driver.Price = 99.33;
driver.Quantity = 1;
driver.Department = 0;

// ??????????? ��������� �� ���������� ���???
// TaxTypeNumber - ����� ������:
// 	0 - ����� �� ������
// 	1 - ��� 0%
// 	2 - ��� 10%
// 	3 - ��� 18%
// 	4 - ��� �� ����������
// 	5 - ��� � ��������� ������� 10%
// 	6 - ��� � ��������� ������� 18%
driver.TaxTypeNumber = 4;
driver.Registration();
// ������ � �������� ����
// TypeClose - ��� ������:
// 	0 - ���������
// 	1 - ������������ ���������� �������
driver.TypeClose = 0;
driver.Summ = 99.33;
driver.CloseCheck();

// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
// ---------------------------------- ������� ����� -------------------------------------//
// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //

driver.Mode = 3;
driver.SetMode();
driver.NewDocument();
driver.AttrNumber = 1021;
driver.AttrValue = "������� ������ ������ �.�.";
driver.WriteAttribute();
driver.ReportType = 1;
driver.Report();

// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
// ------------------------- ����� � ��������� �������� ------------------------------//
// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //

driver.Mode = 2;
driver.SetMode();
driver.NewDocument();
driver.AttrNumber = 1021;
driver.AttrValue = "������� ������ ������ �.�.";
driver.WriteAttribute();
driver.ReportType = 42;
driver.Report();

// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
// ----------- ��������� ��������� ����� ����������� ���������� --------------//
// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //

var textForPrint = "";
driver.Mode = 0;
driver.SetMode();
// ��� ������ ����
driver.RegisterNumber = 43;
driver.OFDLastError = 1;
driver.GetRegister();
textForPrint += "��� ������ ����: " + driver.OFDLastError + "\n";
//  ��� ������ ���
driver.RegisterNumber = 43;
driver.OFDLastError = 2;
driver.GetRegister();
textForPrint += "��� ������ ���: " + driver.OFDLastError + "\n";
// ��� ������ ��
driver.RegisterNumber = 43;
driver.OFDLastError = 3;
driver.GetRegister();
textForPrint += "��� ������ ��: " + driver.OFDLastError;
dump(textForPrint);
driver.Caption = textForPrint;
driver.PrintString();

// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
// ----------- ��������� ���������� �������������� ���������� � --------------//
//------------------- ���� ������ ������� ��������������� -------------------------//
// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //

var textForPrint = "";
driver.Mode = 0;
driver.SetMode();
// ���������� �������������� ����������:
driver.RegisterNumber = 44;
driver.GetRegister();
textForPrint += "���������� �������������� ����������: " + driver.Count + "\n";
// ���� ������ ������� ��������������� ���������
driver.RegisterNumber = 45;
driver.GetRegister();
textForPrint += "���� ������ ������� ��������������� ���������: " + driver.Day + "." + driver.Month + "." + driver.Year + " " + driver.Hour + ":" + driver.Minute;
dump(textForPrint);
driver.PrintString();

// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
// ----------- ��������� ��������������� ������ ��� ----------------------------//
// // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
var textForPrint = "";
driver.Mode = 0;
driver.SetMode();

// ������������ ������������
driver.AttrNumber = 1048;
driver.ReadAttribute();
textForPrint += "������������ ������������: " + driver.AttrValue + "\n";

// ��� ������������
driver.AttrNumber = 1018;
driver.ReadAttribute();
textForPrint += "��� ������������: " + driver.AttrValue + "\n";

// ����� ��������� ��� � ���� �������� � ���������� ������� ����������, ������� � �������� ������������� ������� �����. �������� 41 ������������� ����� 101001 (��� 1, ��� ����� 0, ��� �����-������ 0, ���� 1, ��� 0, ��� 1)
driver.AttrNumber = 1062;
driver.ReadAttribute();
textForPrint += "��������� ���: " + driver.AttrValue + "\n";

// ��������������� ����� ���
driver.AttrNumber = 1037;
driver.ReadAttribute();
textForPrint += "��������������� ����� ���: " + driver.AttrValue + "\n";
// ����������� ������� ������������� � ��������� ��������

// ����� ����������� ����������
driver.RegisterNumber = 47;
driver.GetRegister();
textForPrint += "����� ����������� ����������: " + driver.SerialNumber + "\n";

// ����� ����������� ��������� ��������� �����������/���������������, � ����� ���� � �����
driver.RegisterNumber = 48;
driver.GetRegister();
textForPrint += "����� �� ��������� �����������/���������������: " + driver.DocNumber + "\n";
textForPrint += "���� �� ��������� �����������/���������������: " + driver.Day + "." + driver.Month + "." + driver.Year + " " + driver.Hour + ":" + driver.Minute + "\n";

// ������ �� ���������� ����������� ��������� ����
driver.RegisterNumber = 51;
driver.GetRegister();
textForPrint += "����� ����������� ���������: " + driver.DocNumber + "\n";
textForPrint += "��� ����: " + driver.LastCheckType + "\n";
textForPrint += "����� ����: " + driver.Summ + "\n";
textForPrint += "���� � ����� ����: " + driver.Day + "." + driver.Month + "." + driver.Year + " " + driver.Hour + ":" + driver.Minute + "\n";
textForPrint += "���������� ������� ���������: " + driver.FiscalSign + "\n";

// ������ �� ���������� ����������� ���������
driver.RegisterNumber = 52;
driver.GetRegister();
textForPrint += "����� ����������� ���������: " + driver.DocNumber + "\n";
textForPrint += "��� ����: " + driver.LastCheckType + "\n";
textForPrint += "����� ����: " + driver.Summ + "\n";
textForPrint += "���� � ����� ����: " + driver.Day + "." + driver.Month + "." + driver.Year + " " + driver.Hour + ":" + driver.Minute + "\n";
textForPrint += "���������� ������� ���������: " + driver.FiscalSign + "\n";

dump(textForPrint);
// driver.Caption = textForPrint;
// driver.PrintString();
