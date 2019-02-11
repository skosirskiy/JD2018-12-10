<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:template match="/users">
        <table border="1">
            <tr><td>idUser</td><td>login</td><td>password</td><td>description</td></tr>
            <xsl:apply-templates/>
        </table>
    </xsl:template>
    <!--<xsl:template match="/users/user">-->
        <!--<tr><xsl:apply-templates/></tr>-->
    <!--</xsl:template>-->
    <xsl:template match="/users/user/idUser">
        <tr><xsl:apply-templates/></tr>
    </xsl:template>
    <xsl:template match="/users/user/login">
        <tr><xsl:apply-templates/></tr>
    </xsl:template>
    <xsl:template match="/users/user/password">
        <tr><xsl:apply-templates/></tr>
    </xsl:template>
    <xsl:template match="/users/user/description">
        <tr><xsl:apply-templates/></tr>
    </xsl:template>
    <xsl:template match="/users/user/description">
        <table border="1">
            <tr><td>operations</td><td>kassa</td><td>password</td><td>description</td></tr>
            <xsl:apply-templates/>
        </table>
    </xsl:template>
    <xsl:template match="/users/user/description/operations">
        <tr><xsl:apply-templates/></tr>
    </xsl:template>
    <xsl:template match="/users/user/description/kassa">
        <tr><xsl:apply-templates/></tr>
    </xsl:template>
    <xsl:template match="/users/user/description/duties">
        <tr><xsl:apply-templates/></tr>
    </xsl:template>
    </xsl:stylesheet>

<!--<users>-->
    <!--<user>-->
        <!--<idUser>5</idUser>-->
        <!--<login>IvanovaVP</login>-->
        <!--<password>qwerty</password>-->
    <!--<description>-->
        <!--<operations>-->
            <!--<operation>-->
                <!--<idOperation>1000</idOperation>-->
                <!--<nameOperation>Подкрепление</nameOperation>-->
                <!--<printForm>1000</printForm>-->
                <!--<skreanForm>1000</skreanForm>-->
                <!--<specification>Получены денежные средства</specification>-->
                <!--<entrys>-->
                    <!--<entry>-->
                        <!--<idEntry> 100001</idEntry>-->
                        <!--<nameEntry>Получено валюты</nameEntry>-->
                        <!--<currencyEntry>840</currencyEntry>-->
                        <!--<accauntDebitEntry> </accauntDebitEntry>-->
                        <!--<accauntKreditEntry>1010000000005</accauntKreditEntry>-->
                        <!--<sumEntry>1000</sumEntry>-->
                        <!--<comingOrSpeting>0</comingOrSpeting>-->
                        <!--<rateEntry>2.1</rateEntry>-->
                    <!--</entry>-->
                    <!--<entry>-->
                        <!--<idEntry> 100002</idEntry>-->
                        <!--<nameEntry>Получено рублей</nameEntry>-->
                        <!--<currencyEntry>933</currencyEntry>-->
                        <!--<accauntDebitEntry> </accauntDebitEntry>-->
                        <!--<accauntKreditEntry>1010000000005</accauntKreditEntry>-->
                        <!--<sumEntry>1000</sumEntry>-->
                        <!--<comingOrSpeting>0</comingOrSpeting>-->
                        <!--<rateEntry>1</rateEntry>-->
                    <!--</entry>-->
                <!--</entrys>-->
            <!--</operation>-->
            <!--<operation>-->
                <!--<idOperation>10</idOperation>-->
                <!--<nameOperation>Покупка валюты</nameOperation>-->
                <!--<printForm>10</printForm>-->
                <!--<skreanForm>10</skreanForm>-->
                <!--<specification>В личное пользование </specification>-->
                <!--<entrys>-->
                    <!--<entry>-->
                        <!--<idEntry> 1001</idEntry>-->
                        <!--<nameEntry>Покупка валюты</nameEntry>-->
                        <!--<currencyEntry>840</currencyEntry>-->
                        <!--<accauntDebitEntry>1010000000005</accauntDebitEntry>-->
                        <!--<accauntKreditEntry>6901000000840</accauntKreditEntry>-->
                        <!--<sumEntry>100</sumEntry>-->
                        <!--<comingOrSpeting>0</comingOrSpeting>-->
                        <!--<rateEntry>2.1</rateEntry>-->
                    <!--</entry>-->
                    <!--<entry>-->
                        <!--<idEntry> 1002</idEntry>-->
                        <!--<nameEntry>Рублевый эквивалент</nameEntry>-->
                        <!--<currencyEntry>933</currencyEntry>-->
                        <!--<accauntDebitEntry>6911000000840</accauntDebitEntry>-->
                        <!--<accauntKreditEntry>1010000000005</accauntKreditEntry>-->
                        <!--<sumEntry>210</sumEntry>-->
                        <!--<comingOrSpeting>1</comingOrSpeting>-->
                        <!--<rateEntry>1</rateEntry>-->
                    <!--</entry>-->
                <!--</entrys>-->
            <!--</operation>-->
            <!--<operation>-->
            <!--<idOperation>998</idOperation>-->
            <!--<nameOperation>Коммунальный платеж</nameOperation>-->
                <!--<printForm>998</printForm>-->
                <!--<skreanForm>998</skreanForm>-->
                <!--<specification> За питание в СД№3 </specification>-->
                <!--<add>2121212</add>-->
            <!--<entrys>-->
                <!--<entry>-->
                    <!--<idEntry> 99801</idEntry>-->
                    <!--<nameEntry>Приход денежных средст в кассу</nameEntry>-->
                    <!--<currencyEntry>933</currencyEntry>-->
                    <!--<accauntDebitEntry>1010000000005</accauntDebitEntry>-->
                    <!--<accauntKreditEntry>3819000000000</accauntKreditEntry>-->
                    <!--<sumEntry>56</sumEntry>-->
                    <!--<comingOrSpeting>0</comingOrSpeting>-->
                    <!--<rateEntry>1</rateEntry>-->
                <!--</entry>-->
            <!--</entrys>-->
        <!--</operation>-->
        <!--</operations>-->
        <!--<kassa>-->
            <!--<currencys>-->
                <!--<currency>-->
                    <!--<idCurrency>840</idCurrency>-->
                    <!--<receivedCurrency>1000</receivedCurrency>-->
                    <!--<comingCurrency>100</comingCurrency>-->
                    <!--<spendingCurrency>0</spendingCurrency>-->
                    <!--<hendedCurrency>0</hendedCurrency>-->
                    <!--<balanceCarrency>1100</balanceCarrency>-->
                <!--</currency>-->
                <!--<currency>-->
                    <!--<idCurrency>933</idCurrency>-->
                    <!--<receivedCurrency>1000</receivedCurrency>-->
                    <!--<comingCurrency>100</comingCurrency>-->
                    <!--<spendingCurrency>210</spendingCurrency>-->
                    <!--<hendedCurrency>0</hendedCurrency>-->
                    <!--<balanceCarrency>690</balanceCarrency>-->
                <!--</currency>-->
            <!--</currencys>-->
        <!--</kassa>-->
        <!--<duties>-->
            <!--<idDuties>1</idDuties>-->
            <!--<idUser>5</idUser>-->
            <!--<appno>15703</appno>-->
            <!--<dateDuties>01/01/2019</dateDuties>-->
            <!--<numberDuties>1</numberDuties>-->
            <!--<open1OrClose2>1</open1OrClose2>-->
        <!--</duties>-->
    <!--</description>-->
    <!--</user>-->
    <!--<user>-->
        <!--<idUser>6</idUser>-->
        <!--<login>PetrovaTI</login>-->
        <!--<password>qazwsx</password>-->
        <!--<description>-->
            <!--<operations>-->
                <!--<operation>-->
                    <!--<idOperation>1000</idOperation>-->
                    <!--<nameOperation>Подкрепление</nameOperation>-->
                    <!--<printForm>1000</printForm>-->
                    <!--<skreanForm>1000</skreanForm>-->
                    <!--<specification> Получены денежные средства</specification>-->
                    <!--<entrys>-->
                        <!--<entry>-->
                            <!--<idEntry> 100001</idEntry>-->
                            <!--<nameEntry>Получено валюты</nameEntry>-->
                            <!--<currencyEntry>840</currencyEntry>-->
                            <!--<accauntDebitEntry> </accauntDebitEntry>-->
                            <!--<accauntKreditEntry>1010000000005</accauntKreditEntry>-->
                            <!--<sumEntry>1000</sumEntry>-->
                            <!--<comingOrSpeting>0</comingOrSpeting>-->
                            <!--<rateEntry>2.1</rateEntry>-->
                        <!--</entry>-->
                        <!--<entry>-->
                            <!--<idEntry> 100002</idEntry>-->
                            <!--<nameEntry>Получено рублей</nameEntry>-->
                            <!--<currencyEntry>933</currencyEntry>-->
                            <!--<accauntDebitEntry> </accauntDebitEntry>-->
                            <!--<accauntKreditEntry>1010000000005</accauntKreditEntry>-->
                            <!--<sumEntry>1000</sumEntry>-->
                            <!--<comingOrSpeting>0</comingOrSpeting>-->
                            <!--<rateEntry>1</rateEntry>-->
                        <!--</entry>-->
                    <!--</entrys>-->
                <!--</operation>-->
                <!--<operation>-->
                    <!--<idOperation>20</idOperation>-->
                    <!--<nameOperation>Продажа валюты</nameOperation>-->
                    <!--<printForm>20</printForm>-->
                    <!--<skreanForm>20</skreanForm>-->
                    <!--<specification> В личное пользование</specification>-->
                    <!--<entrys>-->
                        <!--<entry>-->
                            <!--<idEntry> 2001</idEntry>-->
                            <!--<nameEntry>Продажа валюты</nameEntry>-->
                            <!--<currencyEntry>840</currencyEntry>-->
                            <!--<accauntDebitEntry>6901000000840</accauntDebitEntry>-->
                            <!--<accauntKreditEntry>1010000000000</accauntKreditEntry>-->
                            <!--<sumEntry>200</sumEntry>-->
                            <!--<comingOrSpeting>1</comingOrSpeting>-->
                            <!--<rateEntry>2.15</rateEntry>-->
                        <!--</entry>-->
                        <!--<entry>-->
                            <!--<idEntry> 2002</idEntry>-->
                            <!--<nameEntry>Рублевый эквивалент</nameEntry>-->
                            <!--<currencyEntry>933</currencyEntry>-->
                            <!--<accauntDebitEntry>1010000000000</accauntDebitEntry>-->
                            <!--<accauntKreditEntry>6911000000840</accauntKreditEntry>-->
                            <!--<sumEntry>430</sumEntry>-->
                            <!--<comingOrSpeting>0</comingOrSpeting>-->
                            <!--<rateEntry>1</rateEntry>-->
                        <!--</entry>-->
                    <!--</entrys>-->
                <!--</operation>-->
                <!--<operation>-->
                    <!--<idOperation>998</idOperation>-->
                    <!--<nameOperation>Коммунальный платеж</nameOperation>-->
                    <!--<printForm>998</printForm>-->
                    <!--<skreanForm>998</skreanForm>-->
                    <!--<specification> За мобильный телефор</specification>-->
                    <!--<entrys>-->
                        <!--<entry>-->
                            <!--<idEntry> 99801</idEntry>-->
                            <!--<nameEntry>Приход денежных средст в кассу</nameEntry>-->
                            <!--<currencyEntry>933</currencyEntry>-->
                            <!--<accauntDebitEntry>1010000000005</accauntDebitEntry>-->
                            <!--<accauntKreditEntry>3819000000000</accauntKreditEntry>-->
                            <!--<sumEntry>20</sumEntry>-->
                            <!--<comingOrSpeting>0</comingOrSpeting>-->
                            <!--<rateEntry>1</rateEntry>-->
                        <!--</entry>-->
                    <!--</entrys>-->
                <!--</operation>-->
            <!--</operations>-->
            <!--<kassa>-->
                <!--<currencys>-->
                    <!--<currency>-->
                        <!--<idCurrency>840</idCurrency>-->
                        <!--<receivedCurrency>1000</receivedCurrency>-->
                        <!--<comingCurrency>0</comingCurrency>-->
                        <!--<spendingCurrency>200</spendingCurrency>-->
                        <!--<hendedCurrency>0</hendedCurrency>-->
                        <!--<balanceCarrency>800</balanceCarrency>-->
                    <!--</currency>-->
                    <!--<currency>-->
                        <!--<idCurrency>933</idCurrency>-->
                        <!--<receivedCurrency>1000</receivedCurrency>-->
                        <!--<comingCurrency>450</comingCurrency>-->
                        <!--<spendingCurrency>0</spendingCurrency>-->
                        <!--<hendedCurrency>0</hendedCurrency>-->
                        <!--<balanceCarrency>1450</balanceCarrency>-->
                    <!--</currency>-->
                <!--</currencys>-->
            <!--</kassa>-->
            <!--<duties>-->
                <!--<idDuties>2</idDuties>-->
                <!--<idUser>6</idUser>-->
                <!--<appno>15704</appno>-->
                <!--<dateDuties>01/01/2019</dateDuties>-->
                <!--<numberDuties>1</numberDuties>-->
                <!--<open1OrClose2>1</open1OrClose2>-->
            <!--</duties>-->
        <!--</description>-->
    <!--</user>-->
<!--</users>-->