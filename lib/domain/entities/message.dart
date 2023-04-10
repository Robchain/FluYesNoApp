enum FromWho {me, hers}

class Message {

   final String text;
   final String? gif;
   final FromWho fromwho;

  Message({
    required this.text, 
    this.gif, 
    required this.fromwho});

   

}