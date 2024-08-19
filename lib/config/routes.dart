enum Routes {
  contacts(path: '/'),
  contactDetails(path: 'details'),
  editContact(path: 'edit'),
  addContact(path: 'add');

  final String path;

  const Routes({required this.path});
}
