class Class_Client
{
  void client()
  {
    // データ送信しているクライアントの確認
    Client myClient = myServer.available();
    // != null はクライアントがあるという意味
    if ( myClient != null ) {
      // readString() でデータ受信
      String recvStr = myClient.readString();
      String [] data=split(recvStr, ',');
      answer=data[0];
      button=int(data[1]);
      //println(button+","+marubatsu_flag);
    }
  }
}
