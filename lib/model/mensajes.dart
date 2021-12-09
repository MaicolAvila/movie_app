class Mensaje {
  final String texto;
  final DateTime fecha;
  final String email;
  final String name;
  final String photo;
  final String uid;

  Mensaje(this.texto, this.fecha, this.email, this.name, this.photo, this.uid);

  Mensaje.fromJson(Map<dynamic, dynamic> json)
      : fecha = DateTime.parse(json['fecha'] as String),
        texto = json['texto'] as String,
        email = json['email'] as String,
        name = json['name'] as String,
        photo = json['photo'] as String,
        uid = json['uid'] as String;

  Map<dynamic, dynamic> toJson() => <dynamic, dynamic>{
        'fecha': fecha.toString(),
        'texto': texto,
        'email': email,
        'name': name,
        'photo': photo,
        'uid': uid,
      };
}
