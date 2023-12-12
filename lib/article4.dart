import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class article4 extends StatelessWidget {
  const article4({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Why does it seem that depression is caused by stress "),
          backgroundColor: Colors.deepOrange,
        ),
        body: Container(
          child: Text(
              "  The fact is that the depressive disorders, as is true of most of the physical disorders, are reactive to stress. This is due to the physiological impact of stress as well as the psychological impact. For instance, if a person has the common cold, their body will marshal the defenses such as producing white blood cells, adrenalin, and cortisol to fight the invading germs. When the body does this it requires additional energy and it reduces the functioning of other systems to obtain this energy. Therefore, a person will feel fatigued and will tend to be less active. \n  The problem is that we only have so much in terms of physiological resources. In addition, the psychological impact of stress is that a person finds it more difficult to do the necessary self-care. With a common cold, for example, it may be hard to obtain the necessary rest. As a result of the physiological and psychological factors, it becomes more difficult to recover from the common cold. \n  This same process occurs with clinical depression. The more stressors in a person's life, the more difficult it becomes to recover from the depression. Therefore, many people will tend to associate the presence of these stressors as the cause of the depression. However, that is not the case. The stressors may impact the depression and make it worse or more difficult to recover, but they are not typically the cause. In fact, if a stressor is the cause, it is likely a different condition known as an adjustment disorder rather than depression which we will discuss later. \n    "),
        ));
  }
}
