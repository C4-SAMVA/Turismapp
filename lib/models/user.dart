class User {
  // var _uid;
  var _nombres;
  var _email;
  var _password;
  var _genre;
  var _favoritesGenres;
  var _bornDate;

  User(this._nombres, this._email, this._password);

  User.Empty();

  // get uid => _uid;
  //
  // set uid(value) {
  //   _uid = value;
  // }

  User.fromJson(Map<String, dynamic> json)
      :
        // _uid = json['uid'],
        _nombres = json['nombres'],
        _email = json['email'],
        _password = json['password'],
        _genre = json['genre'],
        _favoritesGenres = json['favoritesGenres'],
        _bornDate = json['bornDate'];

  Map<String, dynamic> toJson() => {
    // 'uid': _uid,
    'nombres': _nombres,
    'email': _email,
    'password': _password,
    'genre': _genre,
    'favoritesGenres': _favoritesGenres,
    'bornDate': _bornDate
  };

  get elNombre => _nombres;

  set elNombre (value) {
    _nombres = value;
  }

  get email => _email;

  get bornDate => _bornDate;

  set bornDate(value) {
    _bornDate = value;
  }

  get favoritesGenres => _favoritesGenres;

  set favoritesGenres(value) {
    _favoritesGenres = value;
  }

  get genre => _genre;

  set genre(value) {
    _genre = value;
  }

  get password => _password;

  set password(value) {
    _password = value;
  }

  set email(value) {
    _email = value;
  }
}