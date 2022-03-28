import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Color.fromARGB(255, 72, 72, 72)),
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Profil',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: BackButton(
            onPressed: () {},
          ),
          title: const Text(
            'Profil',
            style: TextStyle(color: Color.fromARGB(255, 194, 194, 194)),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
          child: Column(
            //PROFIL
            children: [
              const SizedBox(height: 25),
              const CircleAvatar(
                backgroundImage: AssetImage('assets/img_profile.jpg'),
                radius: 45,
              ),
              Column(
                children: [
                  const SizedBox(height: 25),
                  Text(
                    'Hansen Charte',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 72, 72, 72),
                    ),
                  ),
                  Text(
                    'hansen.065119011@unpak.ac.id',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: const Color.fromARGB(255, 194, 194, 194),
                    ),
                  ),
                  Text(
                    '065119011',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: const Color.fromARGB(255, 194, 194, 194),
                    ),
                  ),
                ],
              ),
              //Informasi Studi Mahasiswa
              Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.fromLTRB(10, 0, 15, 12),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 116, 87, 152),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    //INFORMASI NPM
                    Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.white, width: 1),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'NPM',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                '065119011',
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.copy_outlined,
                                  color: Colors.white,
                                  size: 16,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // INFORMASI STATUS KEAKTIFAN
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                      decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: Colors.white, width: 1)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Status Keaktifan",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 14,
                              )),
                          Row(
                            children: [
                              Text("Aktif",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ],
                      ),
                    ),
                    //INFORMASI PRODI
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                      decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: Colors.white, width: 1)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Program Studi",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 14,
                              )),
                          Row(
                            children: [
                              Text("Ilmu Komputer",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ],
                      ),
                    ),
                    //INFORMASI JENJANG PENDIDIKAN
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Jenjang Pendidikan",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 14,
                              )),
                          Row(
                            children: [
                              Text("S1",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //INFORMASI DATA DIRI
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: Color.fromARGB(255, 117, 87, 153), width: 1)),
                ),
                margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Nama Lengkap",
                        style: GoogleFonts.poppins(
                            color: const Color.fromARGB(255, 72, 72, 72),
                            fontSize: 14,
                            fontWeight: FontWeight.w500)),
                    Row(
                      children: [
                        Text("Hansen Charte",
                            style: GoogleFonts.poppins(
                                color: const Color.fromARGB(255, 156, 156, 156),
                                fontSize: 14,
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: Color.fromARGB(255, 117, 87, 153), width: 1)),
                ),
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Panggilan",
                        style: GoogleFonts.poppins(
                            color: const Color.fromARGB(255, 72, 72, 72),
                            fontSize: 14,
                            fontWeight: FontWeight.w500)),
                    Row(
                      children: [
                        Text("Hansen",
                            style: GoogleFonts.poppins(
                                color: const Color.fromARGB(255, 156, 156, 156),
                                fontSize: 14,
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Alamat Rumah",
                        style: GoogleFonts.poppins(
                            color: const Color.fromARGB(255, 72, 72, 72),
                            fontSize: 14,
                            fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: Color.fromARGB(255, 117, 87, 153), width: 1)),
                ),
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Text(
                      "Perumahan Ciriung Cemerlang Blok AD NO 1",
                      style: GoogleFonts.poppins(
                        color: const Color.fromARGB(255, 156, 156, 156),
                        fontSize: 14,
                      ),
                    ))
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Kartu Mahasiswa",
                        style: GoogleFonts.poppins(
                            color: const Color.fromARGB(255, 72, 72, 72),
                            fontSize: 14,
                            fontWeight: FontWeight.w500)),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.badge,
                              color: Color.fromARGB(255, 117, 87, 153),
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
