import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Porsche 911 GT3 RS'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              // Sign out user when logout button is pressed
              FirebaseAuth.instance.signOut().then((_) {
                Navigator.of(context).pushReplacementNamed('/signin');
              });
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Static image of Porsche 911 GT3 RS
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: NetworkImage('https://pics.porsche.com/rtt/iris?COSY-EU-100-1713c6eK12UC31P3T5JOCU%25hjdmiTDDmvMXlHWguCuq6Q44RtRHo9ZAaDj6u5PNI7tGW3rNbZJNKXv9Z7KcQQ%25yFN5tFAsXrw4r3wo0qnqZr8MCnR4i84tV2YN2OmNyW1QGWgCWKMUuyO3L7KMHfehQ5YCqgfNP9KyXd67Q9br3uwrD1XEUAVY8QwZoh4XP49WLrNbMOtw9xeXi69skh5H'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Porsche 911 GT3 RS',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'The Porsche 911 GT3 RS is a high-performance version of the 911 sports car, known for its precision engineering and track-focused features. It offers an exhilarating driving experience with a powerful naturally aspirated engine, lightweight construction, and advanced aerodynamics.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),

            // Horizontal list of additional images
            SizedBox(
              height: 200, // Set a height for the image list
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildImage('https://files.porsche.com/filestore/galleryimagerwd/multimedia/none/modelseries-911gt3-rs-gallery-05/zoom2/6ed1b862-28ef-11ed-80f7-005056bbdc38;sR;twebp/porsche-zoom2.webp'),
                  _buildImage('https://files.porsche.com/filestore/galleryimagerwd/multimedia/none/modelseries-911gt3-rs-gallery-06/zoom2/b108eb0a-117c-11ed-80f5-005056bbdc38;sR;twebp/porsche-zoom2.webp'),
                  _buildImage('https://files.porsche.com/filestore/galleryimagerwd/multimedia/none/modelseries-911gt3-rs-gallery-01/zoom2/6d533072-117c-11ed-80f5-005056bbdc38;sR;twebp/porsche-zoom2.webp'),
                  _buildImage('https://files.porsche.com/filestore/galleryimagerwd/multimedia/none/modelseries-911gt3-rs-gallery-02/zoom2/7439f13f-117c-11ed-80f5-005056bbdc38;sR;twebp/porsche-zoom2.webp'),
                  _buildImage('https://files.porsche.com/filestore/galleryimagerwd/multimedia/none/modelseries-911gt3-rs-gallery-03/zoom2/7aff50b3-117c-11ed-80f5-005056bbdc38;sO;twebp/porsche-zoom2.webp'),
                  _buildImage('https://pics.porsche.com/rtt/iris?COSY-EU-100-1713c6eK12UC31P3T5JOCU%25hjdmiTDDmvMXlHWguCuq6Q44RtRHo9ZAaDj6u5PNI7tGW3rNbZJNKXv9L7KcQQ%25yFN5tFAsXrw4r3wo0qnqZr8MCnR4i84tV2YN2OmNyW1QGWgCWKMUuyO3L7KMHfehQ5YCqgfNP9KyXd67Q9br3uwrD1XEUAVY8QwZoh4XP49WLrNbMOtw9xeXi69skh5H'),
                  _buildImage('https://pics.porsche.com/rtt/iris?COSY-EU-100-1713c6eK12UC31P3T5JOCU%25hjdmiTDDmvMXlHWguCuq6Q44RtRHo9ZAaDj6u5PNI7tGW3rNbZJNKXv9U7KcQQ%25yFN5tFAsXrw4r3wo0qnqZr8MCnR4i84tV2YN2OmNyW1QGWgCWKMUuyO3L7KMHfehQ5YCqgfNP9KyXd67Q9br3uwrD1XEUAVY8QwZoh4XP49WLrNbMOtw9xeXi69skh5H'),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Grid view for buttons
            Expanded(
              child: GridView.count(
                crossAxisCount: 2, // Two buttons per row
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                children: [
                  _buildButton(context, "Specifications", Icons.tune, () {
                    // Add functionality for Specifications
                  }),
                  _buildButton(context, "Gallery", Icons.photo, () {
                    // Add functionality for Gallery
                  }),
                  _buildButton(context, "Reviews", Icons.rate_review, () {
                    // Add functionality for Reviews
                  }),
                  _buildButton(context, "Performance", Icons.speed, () {
                    // Add functionality for Performance
                  }),
                  _buildButton(context, "Dealers", Icons.store, () {
                    // Add functionality for Dealers
                  }),
                  _buildButton(context, "Contact Us", Icons.contact_mail, () {
                    // Add functionality for Contact Us
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImage(String imageUrl) {
    return Container(
      margin: const EdgeInsets.only(right: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover, // Make the image fit the container
        ),
      ),
      width: 150, // Fixed width for images
    );
  }

  Widget _buildButton(BuildContext context, String title, IconData icon, VoidCallback onPressed) {
    return SizedBox(
      height: 50, // Reduced button height
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255), // Dark button background color
          foregroundColor: const Color.fromARGB(255, 2, 2, 2), // Text color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8), // Rounded corners
          ),
        ),
        onPressed: onPressed,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 25, color: const Color.fromARGB(255, 10, 10, 10)), // Dark icon color
            const SizedBox(height: 5),
            Text(title, style: const TextStyle(fontSize: 14)), // Reduced button text size
          ],
        ),
      ),
    );
  }
}
