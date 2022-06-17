class Contact {
  final String name;
  final String phone;
  final String avatar;
  final String? info;

  Contact({
    required this.name,
    required this.phone,
    required this.avatar,
    this.info,
  });

  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(
      name: json['name'] as String,
      phone: json['phone'] as String,
      avatar: json['avatar'] as String,
      info: json['info'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'phone': phone,
      'avatar': avatar,
      'info': info,
    };
  }
}

// List<Contact> contacts = [
//   Contact(name: 'Nhung', phone: '123123213123', avatar: 'avatar'),
//   Contact(name: 'Phong', phone: '123123213123', avatar: 'avatar'),
//   Contact(name: 'Nam', phone: '123123213123', avatar: 'avatar'),
//   Contact(name: 'Duc', phone: '123123213123', avatar: 'avatar'),
//   Contact(name: 'Nhung', phone: '123123213123', avatar: 'avatar'),
//   Contact(name: 'Nhung', phone: '123123213123', avatar: 'avatar'),
//   Contact(name: 'Nhung', phone: '123123213123', avatar: 'avatar'),
//   Contact(name: 'Nhung', phone: '123123213123', avatar: 'avatar'),
//   Contact(name: 'Nhung', phone: '123123213123', avatar: 'avatar'),
//   Contact(name: 'Nhung', phone: '123123213123', avatar: 'avatar'),
//   Contact(name: 'Nhung', phone: '123123213123', avatar: 'avatar'),
// ];
