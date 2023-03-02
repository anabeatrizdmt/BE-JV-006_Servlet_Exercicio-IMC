<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>IMC</title>
</head>
<body>
<h1>Calculo do IMC</h1>
<form name="bmiForm" action="calc" method="GET">
    <table>
        <tr>
            <td><label for="weight">Seu peso (kg):</label></td>
            <td><input type="text" name="peso" id="weight"/></td>
        </tr>
        <tr>
            <td><label for="height">Sua altura (m) :</label></td>
            <td><input type="text" name="altura" id="height"/></td>
        </tr>
        <tr>
            <th><input type="submit" value="Enviar" name="find"/></th>
            <th><input type="reset" value="Limpar" name="reset"/></th>
        </tr>
    </table>

    </br></br>
    <h2>IMC: ${imc}</h2></br>

    <table>
        <thead>
        <tr>
            <td><b>Veja a interpretação do IMC</b></td>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>IMC</td>
            <td>Classificação</td>
            <td style="text-align: center">Obesidade <small>(grau)</small></td>
        </tr>

        <tr>
            <td>Menor que 18,5</td>
            <td>Magreza</td>
            <td style="text-align: center">0</td>
        </tr>

        <tr>
            <td>Entre 18,5 e 24,9</td>
            <td>Normal</td>
            <td style="text-align: center">0</td>
        </tr>

        <tr>
            <td>Entre 25,0 e 29,9</td>
            <td>Sobrepeso</td>
            <td style="text-align: center">I</td>
        </tr>

        <tr>
            <td>Entre 30,0 e 39,9</td>
            <td>Obesidade</td>
            <td style="text-align: center">II</td>
        </tr>

        <tr>
            <td>Maior que 40,0</td>
            <td>Obesidade Grave</td>
            <td style="text-align: center">III</td>
        </tr>
        </tbody>

    </table>
</form>
</body>
</html>