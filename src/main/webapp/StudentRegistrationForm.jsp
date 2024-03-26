<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>STUDENT REGISTRATION FORM</title>
<style>
	body{
	background-color:darkslategray;
	}
	h1{
	background-color:white;
	text-align:center;
	}
	h3{
	background-color: lavender;
	}
	input{
	width:300px;
	height:25px;
	margin:10px 0px 10px 0px;
	border:none;
	}
	label{
	text-align:center;
	margin:10px 0px 10px 0px;
	}
	select{
	width:200px;
	height:25px;
	margin:0px 30px 0px 30px;
	background-color: lavender;
	border:none;
	}
	td{
	width:330px;

	text-align:left;
	color:white;
	font-weight:bolder;
	}
	th h3{
	width:330px;
	
	text-align:left;
	}
	.submit{
			width:100px;
			height:25px;
			text-align:center;
			
	}
	
	.table2 input{
	width:150px;
	height:25px;
	}

	
</style>

</head>

<body>
    
    <main >
        <header><h1>STUDENT REGISTRATION FORM</h1></header>
        
        <section>
                    <fieldset>
                            
                     <form action="Registration" method="post">
                       
                         <table>
							<tr>
								<td><label for="">ADMISSION NUMBER</label></td>
								<td><input type="text" name="adno" id=""
									placeholder="Application number" autofocus></td>
							</tr>
							<tr>
								<th>
									<h3>PERSONAL DETAILS</h3>
								</th>
							</tr>
							<tr>
								<td><label for="">FIRST NAME </label></td>
								<td><input type="text" name="firstname"
									placeholder="Enter your firstname"></td>
							</tr>

							<tr>
								<td><label for="">LAST NAME</label></td>
								<td><input type="text" name="lastname"
									placeholder="Enter your lastname"></td>
							</tr>

							<tr>
								<td><label for="">FATHER'S NAME</label></td>
								<td><input type="text" name="fathername"
									placeholder="Enter your father's name"></td>
							</tr>

							<tr>
								<td><label for="">MOTHER'S NAME</label></td>
								<td><input type="text" name="mothername"
									placeholder="Enter your mother's name"></td>
							</tr>

							<tr>
								<td><label for="">DATE OF BIRTH</label></td>
								<td><input type="date" name="dob"></td>
							</tr>

							<tr>
								<td><label for=""> E-MAIL ID </label></td>
								<td><input type="email" name="email" id=""
									placeholder="abc@mail.com"></td>
							</tr>

							<tr>
								<td><label for="">MOBILE NUMBER </label></td>
								<td><input type="text" name="mobile" id=""
									placeholder="Enter your 10 dig mobile number"></td>
							</tr>

							
							
									<tr><td><label for="gen">GENDER</label></td></tr>
									<tr><td></td><td><input style="height:15px;" type="radio" name="gender" value="Male" id="gen">Male</td></tr>
									<tr><td></td><td><input style="height:15px;" type="radio" name="gender" value="Female" id="gen">Female</td></tr>
									<tr><td></td><td><input style="height:15px;" type="radio" name="gender" value="Others" id="gen">Others</td></tr>
                          
                          
                            <tr><th> <h3>ADDRESS</h3></th></tr>
                                   <tr><td> <label for="">FLAT NO/ STREET NAME / VILLAGE/CITY</label></td><td><input type="text" name="address" id="" placeholder="Enter your address"></td></tr>
                                    
                                      <tr><td><label for="">DISTRICT</label> </td><td><input type="text" name="district" id="" placeholder="Enter your district name"></td></tr>
                                 
                                     <tr><td><label for=""> PINCODE </label></td><td><input type="text" name="pincode" id="" placeholder="Enter your 6 dig  pincode"></td></tr>
                                  
                                     <tr><td><label for=""> STATE </label></td><td><input type="text" name="state" id="" placeholder="Enter your State name"></td></tr>
                              
                                    <tr><td> <label for=""> COUNTRY </label></td><td><input type="text" name="country" id="" placeholder="Enter your country name"></td></tr>
                                    
                               
                                  

                                   <tr> <th ><h3>QUALIFICATION</h3></th></tr>
                                    <tr><td></td><td><div class="table2"><table >
                                        <tr>
                                            <td style="color:white;text-align:center">S.No</td>
                                            <td style="color:white;text-align:center">EXAMINATION</td>
                                            <td style="color:white;text-align:center">SELECT</td>
                                            <td style="color:white;text-align:center">BOARD</td>
                                            <td style="color:white;text-align:center">PERCENTAGE</td>
                                            <td style="color:white;text-align:center">YEAR OF PASSING</td>
                                        </tr>

                                        <tr>
                                            <td>1</td>
                                            <td><label for="">PG</label></td><td><input type="checkbox" name="PGExam" value="PG" id=""></td>
                                            <td><input type="text" name="PGboard" id=""></td>
                                            <td><input type="text" name="PGper" id=""></td>
                                            <td><input type="text" name="PGyear" id=""></td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td><label for="">UG</label></td><td><input type="checkbox" name="UGExam" value="UG" id=""></td>
                                            <td><input type="text" name="UGboard" id=""></td>
                                            <td><input type="text" name="UGper" id=""></td>
                                            <td><input type="text" name="UGyear" id=""></td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td><label for="">XII-th</label></td><td><input type="checkbox" name="12Exam" value="XII-th" id=""></td>
                                            <td><input type="text" name="12board" id=""></td>
                                            <td><input type="text" name="12per" id=""></td>
                                            <td><input type="text" name="12year" id=""></td>
                                        </tr>

                                        <tr>
                                            <td>4</td>
                                            <td><label for="">X-th</label></td><td><input type="checkbox" name="10Exam" value="X-th" id=""></td>
                                            <td><input type="text" name="10board" id=""></td>
                                            <td><input type="text" name="10per" id=""></td>
                                            <td><input type="text" name="10year" id=""></td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td>(10 char maximum)</td>
                                            <td>(upto 2 decimal)</td>
                                            <td></td>
                                        </tr>
									</table></div></td></tr>
                                 
                          

                                   <tr><th><h3>COURSES APPLIED FOR</h3></th>
                                  <td><select for="" name="course">
                                    <option value="java" id="">JAVA</option>
                             
                                    <option value="python" id="">PYTHON</option>
                           
                                    <option value="dotnet" id="">DOT NET</option>
                                 
                                    <option value="testing" id="">TESTING</option>
                            
                                    <option value="sql" id="">SQL</option>
                                  </select></td></tr>
                            


                                   <tr><td></td><td><input class="submit" type="submit" name="submit" id=""></td>
                               		 
                                </table>
                            </form>
                        </fieldset>
                       
        </section>
    </main>
</body>
</html>