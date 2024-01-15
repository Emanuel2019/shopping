import 'package:flutter/material.dart';
import 'package:shopping/Components/my_drawer.dart';
import 'package:shopping/Components/user_title.dart';
import 'package:shopping/pages/chat_page.dart';
import 'package:shopping/services/auth/auth_service.dart';
import 'package:shopping/services/chat/chat_service.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  void logout() {
    final _auth = AuthService();
    _auth.signOut();
  }

  final ChatService _chatService = ChatService();
  final AuthService _authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Home")),
        actions: [IconButton(onPressed: logout, icon: Icon(Icons.logout))],
      ),
      drawer: MyDrawer(),
      body: _buildUserList(),
    );
  }

  Widget _buildUserList() {
    return StreamBuilder(
        stream: _chatService.getUsersStream(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            // error
            return const Text("Error");
          }
          // loading ...
          if (snapshot.connectionState == ConnectionState.done) {
            return const Text("Loading...");
          }
    
          return ListView(
            children: snapshot.data!
                .map<Widget>(
                    (userData) => _buildUserListItem(userData, context))
                .toList(),
          );
        });
  }

  Widget _buildUserListItem(
      Map<String, dynamic> userData, BuildContext context) {
    return UserTitle(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ChatPage(
                      receiverEmail: userData["email"],
                    )));
      },
      text: userData["email"],
    );
  }
}
