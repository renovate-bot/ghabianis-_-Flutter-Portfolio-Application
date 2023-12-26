import 'package:flutter/material.dart';
import 'package:mycv/helpers/appScaffold.dart';

class ProfessionalExperiencePage extends StatefulWidget {
  const ProfessionalExperiencePage({Key? key}) : super(key: key);

  @override
  State<ProfessionalExperiencePage> createState() =>
      _ProfessionalExperiencePageState();
}

class _ProfessionalExperiencePageState
    extends State<ProfessionalExperiencePage> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Professional Experience',
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Image of the company (adjust width and height as needed)
                    Image.asset(
                      'assets/logo.png', // Replace with the actual path to your image
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                        width: 16), // Add some space between image and text
                    // Experience section
                    Expanded(
                      child: _buildExperienceSection(
                        '06/2022 - Present | TEKAB.DEV',
                        'Backend Developer',
                        ' • Database Management (PostgreSQL) \n • Backend service maintenance \n • Creation of functionalities\n • Implementation of unit and integration tests \n • Implementation of CI/CD \n • Docker configuration \n • Use of REST-API technologies',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Image of the company (adjust width and height as needed)
                    Image.asset(
                      'assets/beenomi.jpg', // Replace with the actual path to your image
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                        width: 16), // Add some space between image and text
                    // Experience section
                    Expanded(
                      child: _buildExperienceSection(
                        '04/2022 - 06/2022 | BEENOMI',
                        'Frontend Developer',
                        ' • Reparation de site web beenomi et leur application mobile creer un php.',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Image of the company (adjust width and height as needed)
                    Image.asset(
                      'assets/asm.png', // Replace with the actual path to your image
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                        width: 16), // Add some space between image and text
                    // Experience section
                    Expanded(
                      child: _buildExperienceSection(
                        '06/2022 - Present | TEKAB.DEV',
                        'Full Stack Developer',
                        " • Creation d'un systeme de gestion d'un parc automobile.",
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Image of the company (adjust width and height as needed)
                    Image.asset(
                      'assets/asm.png', // Replace with the actual path to your image
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                        width: 16), // Add some space between image and text
                    // Experience section
                    Expanded(
                      child: _buildExperienceSection(
                        '07/2021 - 08/2021 | ASM (All Soft Multimedia)',
                        'Full Stack Developer',
                        " • Projet de fin d'etude : creation d'un systeme de gestion des resources humains.",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExperienceSection(
      String duration, String title, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(duration,
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        const SizedBox(height: 8),
        Text(title,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        const SizedBox(height: 8),
        Text(description),
      ],
    );
  }
}
