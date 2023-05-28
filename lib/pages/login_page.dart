
import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Fondo(),
          Contenido()
        ],
      ),
    );
  }
}

class Fondo extends StatelessWidget {
  const Fondo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blue.shade200,
            Colors.blue
          ],
          begin: Alignment.centerRight,
          end: Alignment.bottomLeft
        )
      ),
    );
  }
}

class Contenido extends StatefulWidget {
  const Contenido({super.key});

  @override
  State<Contenido> createState() => _ContenidoState();
}

class _ContenidoState extends State<Contenido> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          Text(
            'Login',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 5),
          Text(
            'welcome to your account',
            style: TextStyle(
              color:  Colors.white,
              fontSize: 10,
              letterSpacing:1.5, 
            ),
            ),
          SizedBox(height: 5),
          Datos()
        ],
      ),
    );
  }
}


class Datos extends StatefulWidget {
  const Datos({super.key});

  @override
  State<Datos> createState() => _DatosState();
}

class _DatosState extends State<Datos> {
  bool obs= true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(10),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        
        children: [

          const Text(
            'Email',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
            ),
          const SizedBox(height: 5),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'mail@example.com',
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            'Password',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 5),
          TextFormField(
            decoration:  InputDecoration(
              border: const OutlineInputBorder(),
              hintText: 'type your password',
              suffixIcon: IconButton(
                onPressed: ()  {
                  setState(() {
                    obs=obs == true ? false : true;
                  });
                  
                },
                icon: const Icon(Icons.remove_red_eye_outlined)
                )
            ),
            obscureText: obs,
          ),
          const Remember(),
          //SizedBox(height: 5),
          const Botones(),
        ]
      ),
      
    );
  }
}

class Remember extends StatefulWidget {
  const Remember({super.key});

  @override
  State<Remember> createState() => _RememberState();
}

class _RememberState extends State<Remember> {
  bool valor = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: valor,
         onChanged: (value){
          setState(() {
            valor == false ? valor = true : valor= false;
          });
         }
         ),
         const Text('Remember me'),
         const Spacer(),
         TextButton(
          onPressed: () {}, 
          child: const Text('Forgot password?')
          )
      ],
    );
  }
}


class Botones extends StatelessWidget {
  const Botones({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const SizedBox(
          width: double.infinity,
          height: 25,
        ),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(const Color(0xff122047))
            ),
            child:const Text(
              'Login',
              style: TextStyle(color: Colors.white),
              ) 
            ),
        ),
        const SizedBox (
          width: double.infinity,
          height: 25,
        ),
        const Text(
          'or sign with',
          style: TextStyle(
            color: Colors.grey
          ),
          ),
        const SizedBox(
          width: double.infinity,
          height: 25,
        ),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: OutlinedButton(
            onPressed: (){}, 
            child: const Text(
              'sign with Google',
              style: TextStyle(
                color:  Color(0xff142047),
                fontSize: 18,
              ),
              )
            ),
        ),//google
        const SizedBox(
          width: double.infinity,
          height: 25,
        ),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: OutlinedButton(
            onPressed: (){}, 
            child: const Text(
              'sign with Facebook',
              style: TextStyle(
                color:  Color(0xff142047),
                fontSize: 18,
              ),
              )
            ),
        ), //face
      ],
    );
  }
}