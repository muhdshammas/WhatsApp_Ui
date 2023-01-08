class Data {
  //name,profile pic, msg, time
  var chat = {
    0: [
      'Abby William',
      'assets/images/logo.jpeg',
      'Hi sorry about earlier, was a bit busy',
      '10:30 pm',
    ],
    1: [
      'Williams Anders',
      'assets/images/logo.jpeg',
      'Hey whatsup bro',
      '10:03 pm',
    ],
    2: [
      'Brunedette',
      null,
      'Can u email the pic?',
      '08:00 pm',
    ],
    3: [
      'Mom',
      'assets/images/logo.jpeg',
      'Had dinner yet?',
      '07:40 pm',
    ],
    4: [
      'Dad',
      'assets/images/logo.jpeg',
      'Hey kid, get a smoothie on ur way back',
      '07:30 pm'
    ],
    5: [
      'Cayne Don',
      'assets/images/logo.jpeg',
      'Thanks for the party :D',
      '06:30 pm',
    ],
    6: [
      'Hannah',
      'assets/images/logo.jpeg',
      'Meet me at 8 tomorrow',
      '05:30 pm',
    ],
    7: ['Abby Gale', 'assets/images/logo.jpeg', 'Party!!!', '04:30 pm']
  };
  //name,profile pic,no. of divisions, space,time,last tile or not
  dynamic statusList = {
    0: ['Williams Anders', 'assets/images/logo.jpeg', 3.0, 4.5, '1 minute ago', false],
    1: [
      'Mom',
      'assets/images/logo.jpeg',
      1.0,
      0.0,
      '20 minutes ago',
      false,
    ],
    2: [
      'Hannah',
      'assets/images/logo.jpeg',
      5.0,
      2.5,
      '28 minutes ago',
      false,
    ],
    3: [
      'Dad',
      'assets/images/logo.jpeg',
      2.0,
      3.5,
      '53 minutes ago',
      false,
    ],
    4: [
      'Cayne Don',
      'logo.jpeg',
      4.0,
      3.0,
      'Today 04:30 pm',
      false,
    ],
    5: [
      'Abby Gale',
      'logo.jpeg',
      1.0,
      0.0,
      'Today 03:30 pm',
      false
    ]
  };
  //name,profile pic,vid or aud call, missed call or not, incoming or outgoing, time, last value or not
  var calls = {
    0: [
      'William Anders',
      'assets/images/logo.jpeg',
      0,
      false,
      false,
      '20 minutes ago',
      false,
    ],
    1: [
      'Mom',
      'images/cliffside-unsplash.jpg',
      0,
      false,
      true,
      '45 minutes ago',
      false,
    ],
    2: [
      'Hannah',
      'assets/images/logo.jpeg',
      1,
      false,
      false,
      '55 minutes ago',
      false,
    ],
    3: [
      'Dad',
      'assets/images/logo.jpeg',
      0,
      true,
      true,
      '58 minutes ago',
      false,
    ],
    4: [
      'Cayne Don',
      'assets/images/logo.jpeg',
      0,
      true,
      true,
      'Today 04:30 pm',
      false,
    ],
    5: [
      'Abby Gale',
      'assets/images/logo.jpeg',
      1,
      true,
      true,
      'Today 03:30 pm',
      false,
    ],
    6: [
      'William Anders',
      'assets/images/logo.jpeg',
      0,
      false,
      true,
      'Today 12:15 pm',
      false,
    ],
    7: [
      'William Anders',
      'assets/images/logo.jpeg',
      1,
      true,
      true,
      'Today 12:10 pm',
      false,
    ],
    8: [
      'Hannah',
      'assets/images/logo.jpeg',
      1,
      false,
      true,
      'Today 11:30 pm',
      true,
    ]
  };
  //message, who is sender
  var chatMsgs = {
    0: [
      'Hey how are you',
      true,
    ],
    1: [
      'Hey I am fine been a while',
      false,
    ],
    2: [
      'How are you',
      false,
    ],
    3: ['I\'m fine.', true],
    4: [
      'What have you been upto these days!',
      true,
    ],
    5: [
      'I have been learning flutter from youtube channels',
      false,
    ]
  };
}