//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.2.8-b130911.1802 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2019.02.13 at 10:56:24 PM MSK 
//


package by.it.zagurskaya.jd02_09.beans;

import java.math.BigInteger;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for Duties complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="Duties">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="idDuties" type="{http://www.w3.org/2001/XMLSchema}integer"/>
 *         &lt;element name="idUser" type="{http://www.w3.org/2001/XMLSchema}integer"/>
 *         &lt;element name="appno" type="{http://www.w3.org/2001/XMLSchema}integer"/>
 *         &lt;element name="dateDuties" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="numberDuties" type="{http://www.w3.org/2001/XMLSchema}integer"/>
 *         &lt;element name="open1OrClose2" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "Duties", propOrder = {
    "idDuties",
    "idUser",
    "appno",
    "dateDuties",
    "numberDuties",
    "open1OrClose2"
})
public class Duties {

    @XmlElement(required = true)
    protected BigInteger idDuties;
    @XmlElement(required = true)
    protected BigInteger idUser;
    @XmlElement(required = true)
    protected BigInteger appno;
    @XmlElement(required = true)
    protected String dateDuties;
    @XmlElement(required = true)
    protected BigInteger numberDuties;
    protected int open1OrClose2;

    /**
     * Gets the value of the idDuties property.
     * 
     * @return
     *     possible object is
     *     {@link BigInteger }
     *     
     */
    public BigInteger getIdDuties() {
        return idDuties;
    }

    /**
     * Sets the value of the idDuties property.
     * 
     * @param value
     *     allowed object is
     *     {@link BigInteger }
     *     
     */
    public void setIdDuties(BigInteger value) {
        this.idDuties = value;
    }

    /**
     * Gets the value of the idUser property.
     * 
     * @return
     *     possible object is
     *     {@link BigInteger }
     *     
     */
    public BigInteger getIdUser() {
        return idUser;
    }

    /**
     * Sets the value of the idUser property.
     * 
     * @param value
     *     allowed object is
     *     {@link BigInteger }
     *     
     */
    public void setIdUser(BigInteger value) {
        this.idUser = value;
    }

    /**
     * Gets the value of the appno property.
     * 
     * @return
     *     possible object is
     *     {@link BigInteger }
     *     
     */
    public BigInteger getAppno() {
        return appno;
    }

    /**
     * Sets the value of the appno property.
     * 
     * @param value
     *     allowed object is
     *     {@link BigInteger }
     *     
     */
    public void setAppno(BigInteger value) {
        this.appno = value;
    }

    /**
     * Gets the value of the dateDuties property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getDateDuties() {
        return dateDuties;
    }

    /**
     * Sets the value of the dateDuties property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setDateDuties(String value) {
        this.dateDuties = value;
    }

    /**
     * Gets the value of the numberDuties property.
     * 
     * @return
     *     possible object is
     *     {@link BigInteger }
     *     
     */
    public BigInteger getNumberDuties() {
        return numberDuties;
    }

    /**
     * Sets the value of the numberDuties property.
     * 
     * @param value
     *     allowed object is
     *     {@link BigInteger }
     *     
     */
    public void setNumberDuties(BigInteger value) {
        this.numberDuties = value;
    }

    /**
     * Gets the value of the open1OrClose2 property.
     * 
     */
    public int getOpen1OrClose2() {
        return open1OrClose2;
    }

    /**
     * Sets the value of the open1OrClose2 property.
     * 
     */
    public void setOpen1OrClose2(int value) {
        this.open1OrClose2 = value;
    }

}
