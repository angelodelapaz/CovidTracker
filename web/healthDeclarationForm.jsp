<%-- 
    Document   : healthDeclarationForm
    Created on : 05 7, 23, 6:47:53 PM
    Author     : levinjacob
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Health Declaration Form</title>
        <link href="styles/hdfstyles.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="main-box">
            <div class="top-box">
                <p>Health Declaration Checklist Form</p>
            </div>

            <div class="purpose-of-visit">
                <p>Purpose of Visit:</p>
                <input type="radio" id="official" name="offical" checked>
                <label for="official">Official</label>
                <input type="radio" id="personal" name="personal">
                <label for="personal">Personal</label>
            </div>

            <div class="place-of-visit">
                <p>Place of Visit:</p>
                <input type="text" value="Manila Residences">
            </div>

            <div>
                <p>Temperature (&deg;C):</p>
                <input type="number" maxlength="4" placeholder="1 decimal digit required (ex. 37.0)">
            </div>

            <div class="symptoms">
                <p>1. Are you experiencing any of the following symptoms mentioned below in the past 2 weeks:</p>

                <div>
                    <p>a. Fever</p>
                    <input type="radio" name="fever" id="yes-fever">
                    <label for="yes-fever">YES</label>
                    <input type="radio" name="fever" id="no-fever" checked>
                    <label for="no-fever">NO</label>
                    <p>if yes, date started:</p>
                    <input type="date" name="date-fever" id="date-fever">
                </div>

                <div>
                    <p>b. Cough</p>
                    <input type="radio" name="cough" id="yes-cough">
                    <label for="yes-cough">YES</label>
                    <input type="radio" name="cough" id="no-cough" checked>
                    <label for="no-cough">NO</label>
                    <p>if yes, date started:</p>
                    <input type="date" name="date-cough" id="date-cough">
                </div>

                <div>
                    <p>c. Colds</p>
                    <input type="radio" name="colds" id="yes-colds">
                    <label for="yes-colds">YES</label>
                    <input type="radio" name="colds" id="no-colds" checked>
                    <label for="no-colds">NO</label>
                    <p>if yes, date started:</p>
                    <input type="date" name="date-colds" id="date-colds">
                </div>

                <div>
                    <p>d. Muscle & Joint Pains + Fever</p>
                    <input type="radio" name="painFever" id="yes-painFever">
                    <label for="yes-painFever">YES</label>
                    <input type="radio" name="painFever" id="no-painFever" checked>
                    <label for="no-painFever">NO</label>
                    <p>if yes, date started:</p>
                    <input type="date" name="date-painFever" id="date-painFever">
                </div>

                <div>
                    <p>e. Throat Pain</p>
                    <input type="radio" name="throatPain" id="yes-throatPain">
                    <label for="yes-throatPain">YES</label>
                    <input type="radio" name="throatPain" id="no-throatPain" checked>
                    <label for="no-throatPain">NO</label>
                    <p>if yes, date started:</p>
                    <input type="date" name="date-throatPain" id="date-throatPain">
                </div>   

                <div>
                    <p>f. Shortness of Breath</p>
                    <input type="radio" name="shortBreath" id="yes-shortBreath">
                    <label for="yes-shortBreath">YES</label>
                    <input type="radio" name="shortBreath" id="no-shortBreath" checked>
                    <label for="no-shortBreath">NO</label>
                    <p>if yes, date started:</p>
                    <input type="date" name="date-shortBreath" id="date-shortBreath">
                </div>  

                <div>
                    <p>g. Difficulty Breathing</p>
                    <input type="radio" name="diffBreath" id="yes-diffBreath">
                    <label for="yes-diffBreath">YES</label>
                    <input type="radio" name="diffBreath" id="no-diffBreath" checked>
                    <label for="no-diffBreath">NO</label>
                    <p>if yes, date started:</p>
                    <input type="date" name="date-diffBreath" id="date-diffBreath">
                </div>   

                <div>
                    <p>h. Diarrhea + Fever</p>
                    <input type="radio" name="diarrheaFever" id="yes-diarrheaFever">
                    <label for="yes-cough">YES</label>
                    <input type="radio" name="diarrheaFever" id="no-diarrheaFever" checked>
                    <label for="no-diarrheaFever">NO</label>
                    <p>if yes, date started:</p>
                    <input type="date" name="date-diarrheaFever" id="date-diarrheaFever">
                </div>       

                <div>
                    <p>i. Rash + Fever</p>
                    <input type="radio" name="rashFever" id="yes-rashFever">
                    <label for="yes-rashFever">YES</label>
                    <input type="radio" name="rashFever" id="no-rashFever" checked>
                    <label for="no-rashFever">NO</label>
                    <p>if yes, date started:</p>
                    <input type="date" name="date-rashFever" id="date-rashFever" checked>
                </div>         

                <div>
                    <p>j. Loss of Taste</p>
                    <input type="radio" name="lossTaste" id="yes-lossTaste">
                    <label for="yes-lossTaste">YES</label>
                    <input type="radio" name="lossTaste" id="no-lossTaste" checked>
                    <label for="no-lossTaste">NO</label>
                    <p>if yes, date started:</p>
                    <input type="date" name="date-lossTaste" id="date-lossTaste">
                </div>     

                <div>
                    <p>k. Loss of Smell</p>
                    <input type="radio" name="lossSmell" id="yes-lossSmell">
                    <label for="yes-lossSmell">YES</label>
                    <input type="radio" name="lossSmell" id="no-lossSmell" checked>
                    <label for="no-lossSmell">NO</label>
                    <p>if yes, date started:</p>
                    <input type="date" name="date-lossSmell" id="date-lossSmell">
                </div>

            </div>
            <div class="contact-sick">
                <p>2. Have you worked together or stayed in the same close environment of a confirmed COVID-19 case?</p>
                <p>For Health Care Professionals: Have you worked together or stayed in the same close environment of a confirmed COVID-19 case without wearing proper PPE? </p>
                <input type="radio" name="contactSick" id="yes-contactSick">
                <label for="yes-contactSick">YES</label>
                <input type="radio" name="contactSick" id="no-contactSick" checked>
                <label for="yes-contactSick">NO</label>
                <p>if yes, date of close contact</p>
                <input type="date" name="date-contactSick" id="date-contactSick">
            </div>
            <div class="diagnosis">
                <p>3. Are you recently diagnosed as a confirmed case of COVID-19 in the last 2 weeks?</p>
                <input type="radio" name="diagnosis" id="yes-diagnosis">
                <label for="yes-diagnosis">YES</label>
                <input type="radio" name="diagnosis" id="no-diagnosis" checked>
                <label for="yes-diagnosis">NO</label>
                <p>if yes, when</p>
                <input type="date" name="date-diagnosis" id="date-diagnosis">
            </div>
            <div class="international-travel">
                <p>4. Have you travelled outside the Philippines in the last 2 weeks?</p>
                <input type="radio" name="intTravel" id="yes-intTravel">
                <label for="yes-intTravel">YES</label>
                <input type="radio" name="intTravel" id="no-intTravel" checked>
                <label for="yes-diagnosis">NO</label>
                <p>a. Date of Travel</p>
                <input type="date" name="date-intTravel" id="date-intTravel">
                <p>b. Date of Arrival in the Philippines</p>
                <input type="date" name="date-arrival" id="date-arrival">
                <p>c. Country of Travel</p>
                <input type="text" name="country" id="country">

                <center>
                    <button class="submit" action="submit">Submit</button>
                </center>
            </div>
        </div>
    </body>
</html>
