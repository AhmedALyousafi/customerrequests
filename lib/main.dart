import 'package:customerrequests/core/cubit/cubit.dart';
import 'package:customerrequests/features/all_customer_order/view/custome_request.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const CustomerOrders());
}

class CustomerOrders extends StatelessWidget {
  const CustomerOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CustomerOrdersCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CustomeRequest(),
      ),
    );
  }
}
