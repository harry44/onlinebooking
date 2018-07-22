package com.jtechies

class Company {
Integer id
String companyName
String companyHeader, companyFooter,companyInfo
String companyEmail
String companyPhone1
String companyPhone2 
String companyWebsite
String fb,twitter,google
byte[] companyLogo,headerBanner


/////////////////////////////////
Date dateCreated ,lastUpdated 

    static constraints = {
		//id nullable:false
		companyEmail email: true, nullable:false
		fb url: true, nullable:true
		twitter url:true ,nullable:true
		google url:true , nullable:true
		companyPhone2 nullable:true
		companyWebsite nullable:true
    }
	static mapping ={
		companyHeader sqlType:'text'
		companyFooter sqlType:'text'
		companyInfo sqlType:'text'
	}
}
