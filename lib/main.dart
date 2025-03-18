import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:luna/colors.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  bool isHoverFirstButton = false;
  bool isHoverTwoButton = false;
  bool isHoverThreeButton = false;
  bool isHoverFourButton = false;
  bool isHoverFiveButton = false;

  final String url = "https://alvaro-carlisbino.vercel.app/";

  _launchURL() async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Não foi possível abrir o link';
    }
  }

  String fullText = """
      Estudante de psicologia, empreendedora e criadora de conteúdo.

      Fascinada por autoconhecimento, neurociência na prática e evolução pessoal.

      Aos 12 anos fez um curso de YouTuber, criou uma marca de slimes e aprendeu a vender e fazer marketing pelo Instagram, inspirada por seu pai.

      Tem um Instagram que alcança em média 160k visualizações por mês, onde compartilha seu conhecimento sobre saúde emocional, produtividade e autoconhecimento. Luna inspira +5k de pessoas com seus conteúdos.

      Gerenciou o Psicologicamente, projeto social e criou a Mentalize uma comunidade que tornou a psicologia mais acessível e descomplicada para +10k pessoas.

      Participou de um evento de inovação e empreendedorismo organizado pelo Sebrae, e teve seu projeto em destaque, conquistando o terceiro lugar.

      Passou por uma fase de dificuldades emocionais e alimentares, sendo aconselhada a usar medicamentos para ansiedade, mas optou por buscar uma abordagem mais libertadora e natural, priorizando métodos de autoconhecimento, terapia e hábitos saudáveis para se recuperar e encontrar equilíbrio.

      Seu propósito é ajudar as pessoas a destravarem os padrões que as limitam, a fim de conhecerem seu verdadeiro potencial.
    """;

  String shortText =
      "Estudante de psicologia, empreendedora e criadora de conteúdo. Fascinada por autoconhecimento, neurociência na prática e evolução pessoal. Aos 12 anos fez um curso de YouTuber...";

  bool _expanded = false;
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                color: AppColors.firstColumnColor,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 200),
                      child: Text(
                        "Luna Machado",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * 0.03,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        "Te faço questionar sua vida para mudar padrões que te deixam empacado.",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.015,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),

                    MouseRegion(
                      onEnter: (event) {
                        setState(() {
                          isHoverFirstButton = true;
                        });
                      },
                      onExit: (event) {
                        setState(() {
                          isHoverFirstButton = false;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color:
                              isHoverFirstButton == false
                                  ? AppColors.firstColumnButtons
                                  : AppColors.firstColumnButtonsHover,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        width: double.infinity,
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "Quero saber mais sobre a moto elétrica",
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.02,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    MouseRegion(
                      onEnter: (event) {
                        setState(() {
                          isHoverTwoButton = true;
                        });
                      },
                      onExit: (event) {
                        setState(() {
                          isHoverTwoButton = false;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color:
                              isHoverTwoButton == false
                                  ? AppColors.firstColumnButtons
                                  : AppColors.firstColumnButtonsHover,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        width: double.infinity,
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "Meus itens diários",
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.02,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    MouseRegion(
                      onEnter: (event) {
                        setState(() {
                          isHoverThreeButton = true;
                        });
                      },
                      onExit: (event) {
                        setState(() {
                          isHoverThreeButton = false;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color:
                              isHoverThreeButton == false
                                  ? AppColors.firstColumnButtons
                                  : AppColors.firstColumnButtonsHover,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        width: double.infinity,
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "Vídeo novo no canal",
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.02,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    MouseRegion(
                      onEnter: (event) {
                        setState(() {
                          isHoverFourButton = true;
                        });
                      },
                      onExit: (event) {
                        setState(() {
                          isHoverFourButton = false;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color:
                              isHoverFourButton == false
                                  ? AppColors.firstColumnButtons
                                  : AppColors.firstColumnButtonsHover,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        width: double.infinity,
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "Meu PodCast",
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.02,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),

                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 5,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: AppColors.SocialMediaIcons,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: IconButton(
                                icon: FaIcon(FontAwesomeIcons.instagram),
                                onPressed: () {},
                              ),
                            ),

                            Container(
                              decoration: BoxDecoration(
                                color: AppColors.SocialMediaIcons,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: IconButton(
                                icon: FaIcon(FontAwesomeIcons.tiktok),
                                onPressed: () {},
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: AppColors.SocialMediaIcons,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: IconButton(
                                icon: FaIcon(FontAwesomeIcons.youtube),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                width: double.infinity,
                color: AppColors.firstColumnButtons,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Image(
                          image: Image.asset("assets/foto1.png").image,
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height - 400,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "Sobre Mim",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 46, 46, 46),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Text(
                              _expanded ? fullText : shortText,
                              style: GoogleFonts.inter(
                                fontSize: 16,
                                color: const Color.fromARGB(255, 46, 46, 46),
                              ),
                            ),
                            SizedBox(height: 8),
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  _expanded = !_expanded;
                                });
                              },
                              child: Text(
                                _expanded ? "Leia menos" : "Leia mais",
                                style: GoogleFonts.poppins(color: Colors.blue),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                width: double.infinity,
                color: Color.fromARGB(255, 56, 56, 56),
                child: Center(
                  child: TextButton(
                    onPressed: _launchURL,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Feito com ",
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Icon(Icons.favorite, color: Colors.red),
                        Text(
                          " por Alvaro Carlisbino",
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
