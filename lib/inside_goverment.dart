import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';



class InsideGovernment extends StatelessWidget {
List<String> web=["http://meity.gov.in/content/multiplier-grants-scheme",
  "http://www.msips.in/MSIPS/HomePage",
"http://sfacindia.com/Procedure_For_VCA_Scheme.aspx",
"https://www.cgtmse.in/schemes.aspx",
"https://www.nsic.co.in/Schemes/Raw-Material-Against-BG.aspx",
"https://www.nsic.co.in/pdfs/faqinfra012017.pdf",
"http://www.dcmsme.gov.in/sido/Marketingod32_7_2007.htm",
"http://www.dcmsme.gov.in/schemes/SCLCS_FOR_TU_SSI_UNITS.pdf",
"https://www.aim.gov.in/",
"http://ireda.in/writereaddata/Bridge%20loan%20against%20Capital%20Subsidy.pdf",];
  Info(String uri1) async {
    // Android and iOS
    var uri = '$uri1';
    if (await canLaunch(uri)) {
      await launch(uri);
    } else {
      throw 'Could not launch $uri';
    }
  }
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: GradientAppBar(
      title: Text("Government Schemes",
        style: TextStyle(
          //fontFamily: 'COMIC',
          fontSize: 18.0,
        ),),
      backgroundColorStart: Colors.cyan,
      backgroundColorEnd: Colors.purpleAccent,
    ),
    body: ListView(
   padding: EdgeInsets.all(7),
      children: <Widget>[
        Image.asset('Images/s2.png',fit: BoxFit.fitWidth,),
        SizedBox(height: 10.0,),
        ExpansionTile(
    children: <Widget>[
            Padding(padding: EdgeInsets.all(10)),
          new Text("Launched by Department of Electronics and Information Technology (DeitY), MGS has been launched to encourage collaborative R&D between industry and academics/ R&D institutions for development of products and packages."
   " This startup scheme is valid till March 31st, 2020, and have a corpus of Rs 36 crore for Startups, incubator/academia/accelerators engaged in electronics and information technology domain. Applicable Industries: Artificial Intelligence, Technology, Hardware, Internet of Things, IT Services, Enterprise Software, Analytics.",
            style: TextStyle(fontSize: 17,),),
            InkWell(
              splashColor: Colors.blue,
              child: new Text("For more Info:",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 17)),
              onTap:()=>Info(web[0]),
            )

          ],

          title: new Text("#1 Multiplier Grants Scheme (MGS) for IT Research and Development",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21), ),

        ),
        Divider(),
        ExpansionTile(
          children: <Widget>[
            new Text("Launched by Department of Electronics and Information Technology (DeitY) and supported by Center for Development of Advanced Computing or CDAC, M-SIPS aims to ‘promote large-scale manufacturing in the Electronic System Design and Manufacturing (ESDM) sector.’"

  "Besides infusing the startups with funds for expansion, M-SIPS will also provide subsidy up to 25% in establishing offices, research centers in SEZs, all over the nation."

  "Applicable Industries: IT Hardware, Medical-tech, Solar Power, Automobiles, Healthcare, Semiconductors, Processors/Electronica, LEDs, LCDs, Avionics, Industrial Electronics, Nano-Electronics, Biotech, Strategic Electronics, Telecom and more. ",
              style: TextStyle(fontSize: 17,),),
            InkWell(
              child: new Text("For more Info:",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 17)),
              onTap:()=>Info(web[1])),


          ],

          title: new Text("#2 Modified Special Incentive Package Scheme (M-SIPS)",

          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21), ),

        ),

        Divider(),
        ExpansionTile(
          children: <Widget>[
            new Text("Launched in 2012 by Small Farmers’ Agri-Business Consortium (SFAC), this special scheme aims to assist agriculture based entrepreneurs to kickstart their agri-business."
  "SFAC has tied up with 42 banks, which help them to disperse interest-free loans to farmers (individuals/groups), partnership firms, self-help groups, agriculture pass out/graduates, agri-preneurs, producer groups, and companies ",
              style: TextStyle(fontSize: 17,),),
            InkWell(
              child: new Text("For more Info:",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 17)),
              onTap:()=>Info(web[2]),
            )

          ],

          title: new Text("#3: The Venture Capital Assistance Scheme",

            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21), ),

        ),
        Divider(),
        ExpansionTile(
          children: <Widget>[
            new Text("Credit Guarantee Fund Trust for Micro and Small Enterprises (CGTMSE) has launched this unique Government scheme to help assist retailers, educational institutes, self-help groups, farmers and SMEs."
  "Basically, the Credit Guarantee scheme has been launched to smoothen credit delivery system, as guarantee cover up to 85% is provided to the SMEs for loans up to Rs 5 lakh. ",
              style: TextStyle(fontSize: 17,),),
            InkWell(
              child: new Text("For more Info:",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 17)),
              onTap:()=>Info(web[3]),
            )

          ],

          title: new Text("#4: Credit Guarantee",

            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21), ),

        ),

        Divider(),
        ExpansionTile(
          children: <Widget>[
            new Text("National Small Industries Corporation or NSIC has launched Raw Material Assistance scheme, which aims to assist manufacturers and MSMEs with procuring raw materials, both indigenous & imported."
 " As per the Government Schemes helps the manufacturer’s to focus on the quality of their products, as they can avail low-interest loans and financial help to get raw materials.Applicable Industries: Manufacturing, MSMEs",
              style: TextStyle(fontSize: 17,),),
            InkWell(
              child: new Text("For more Info:",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 17)),
              onTap:() =>Info(web[4]),
            )

          ],

          title: new Text("#5 Raw Material Assistance",

            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21), ),

        ),

        Divider(),
        ExpansionTile(
          children: <Widget>[
            new Text("National Small Industries Corporation (NSIC) has launched this unique scheme to help startups establish their own offices and infrastructure."

  "However, only those companies which fall under the official definition of startups, as highlighted by the Ministry of Micro, Small and Medium Enterprises can avail this grant."

  "Startups which are not registered with Software Technology Parks Of India Scheme can now get office space ranging from 467 sq.ft. to 8,657 sq.ft.There is no lock-in period, and it is applicable to all industries",
              style: TextStyle(fontSize: 17,),),
            InkWell(
              child: new Text("For more Info:",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 17)),
              onTap:()=> Info(web[5]),
            )

          ],

          title: new Text("#6 Infrastructure Development Scheme",

            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21), ),

        ),

        Divider(),
        ExpansionTile(
          children: <Widget>[
            new Text("Office of the Development Commissioner (MSME) has launched this scheme to help SMEs and small retailers get more attention at international trade fairs and exhibitions."

  "Companies registered with Directorate of Industries/District Industries Centre can get up to 100% reimbursement on air-fares and cost of placing their stalls in such fairs/exhibitions, all over the world."

  "This scheme is not specific to any industry and applicable to SMEs, retailers, and startups.",
              style: TextStyle(fontSize: 17,),),
            InkWell(
              child: new Text("For more Info:",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 17)),
              onTap:()=>Info(web[6]),
            )

          ],

          title: new Text("#7 MSME Market Development Assistance",

            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21), ),

        ),

        Divider(),
        ExpansionTile(
          children: <Widget>[
            new Text("Office of the Development Commissioner (MSME) has launched this Government scheme to help manufacturers, SMEs, and agri-startups to upgrade their existing machines and technologies."

  "In case any SMEs registered with State Directorate of Industries have upgraded their machines, plants with state of the art technology, then they can apply for this grant, and receive funds to compensate their expenses."

  "Applicable Industries: Khadi, Village or Coir industry, Manufacturing, Small Scale Industry, SMEs:",
              style: TextStyle(fontSize: 17,),),
            InkWell(
              child: new Text("For more Info:",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 17)),
              onTap:()=>Info(web[7]),
            )

          ],

          title: new Text("#8 Credit Linked Capital Subsidy for Technology Upgradation",

            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21), ),

        ),

        Divider(),
        ExpansionTile(
          children: <Widget>[
            new Text("Headed by Atal Innovation Mission, AIC aims to promote innovation and entrepreneurship in India. Approved startups can get funding up toRs 10 crore for a maximum period of 5 years, to cover capital and operational expenses."

  "Industries Applicable: AI, AR/VR, Automobiles, Telecom, Healthcare, Aeronautics, Aviation, Chemicals, Nano-Tech, Pets, Animals, IT, Computers, Design, Non-Renewable Energy, Social Impact, Food and more.",
              style: TextStyle(fontSize: 17,),),
            InkWell(
              child: new Text("For more Info:",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 17)),
              onTap:()=>Info(web[8]),
            )

          ],

          title: new Text("#9 Atal Incubation Centres (AIC)",

            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21), ),

        ),
        Divider(),
        ExpansionTile(
          children: <Widget>[
            new Text("Launched by Indian Renewable Energy Development Agency (IREDA), Bridge Loan Against MNRE Capital Subsidy aims to promote startups engaged in renewable energy ideas such as biomass power and small hydropower projects. Up to 80% of the project cost will be funded by IREDA, and the minimum funding allocated shall be Rs 20 lakh."

            "Applicable Industries: Renewable Energy startups and companies",
              style: TextStyle(fontSize: 17,),),
            InkWell(
              child: new Text("For more Info:",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 17)),
              onTap:()=>Info(web[9]),
            )

          ],

          title: new Text("#10 Bridge Loan Against MNRE Capital Subsidy",

            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21,), ),

        ),
















































































    ],),
  );
}}