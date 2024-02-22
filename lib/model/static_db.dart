class StaticDb {
  static List<Map<String, dynamic>> homecard = [
    {
      'title': 'Hospital',
      'asset': "assets/images/hsptl.jpg"
      // 'data':
    },
    {
      'title': 'Police',
      'asset': "assets/images/police.jpg"
      // 'data':
    },
    {
      'title': 'Fire & Safty',
      'asset': "assets/images/fire&safty.jpg"
      // 'data':
    },
    {
      'title': 'Blood Bank',
      'asset': "assets/images/bloodbnk.jpg"
      // 'data':
    },
    {
      'title': 'Ambulance',
      'asset': "assets/images/ambulance.jpg"
      // 'data':
    },
    {
      'title': 'Towing & Recovery',
      'asset': "assets/images/tow.jpg"
      // 'data':
    },
  ];

  static Map<String, dynamic> profileDetails = {
    'username': 'Anand',
    'phoneno': '1234567890',
    'image': "assets/images/profile.jpg"
  };
  static Map<String, List<String>> mainData = {
    'Trivandrum': ['Neyyattinkara', 'Attingal', 'Kazhakuttam'],
    'Kollam': ['Kollam Town', 'Punalur', 'Karunagappally'],
    'Alappuzha': ['Alappuzha Town', 'Cherthala', 'Kayamkulam'],
    'Pathanamthitta': ['Adoor', 'Thiruvalla', 'Pathanamthitta Town'],
    'Kottayam': ['Kottayam Town', 'Changanassery', 'Vaikom'],
    'Idukki': ['Idukki Town', 'Thodupuzha', 'Adimali'],
    'Ernakulam': ['Kochi', 'Kothamangalam', 'Aluva'],
    'Thrissur': ['Thrissur', 'Kodungallur', 'Chalakudy'],
    'Palakkad': ['Palakkad', 'Ottapalam', 'Chittur'],
    'Malappuram': ['Malappuram', 'Manjeri', 'Perinthalmanna'],
    'Kozhikode': ['Kozhikode', 'Vadakara', 'Koyilandy'],
    'Wayanad': ['Kalpetta', 'Sulthan Bathery', 'Mananthavady'],
    'Kannur': ['Kannur', 'Thalassery', 'Mattannur'],
    'Kasaragod': ['Kasaragod', 'Kanhangad', 'Nileshwaram'],
  };
}
