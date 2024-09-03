### UserDefaults

 - integer(forKey:) returns an integer if the key existed, or 0 if not.
 - bool(forKey:) returns a boolean if the key existed, or false if not.
 - float(forKey:) returns a float if the key existed, or 0.0 if not.
 - double(forKey:) returns a double if the key existed, or 0.0 if not.
 - object(forKey:) returns Any? so you need to conditionally typecast it to your data type.
