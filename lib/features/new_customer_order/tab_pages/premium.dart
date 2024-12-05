//الاقساط
import 'package:customerrequests/core/cubit/cubit.dart';
import 'package:customerrequests/core/cubit/state.dart';
import 'package:customerrequests/features/new_customer_order/tab_pages/premium_Table.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Premium extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomerOrdersCubit, CustomerOrdersState>(
        builder: (context, state) {
      var cubit = context.read<CustomerOrdersCubit>();
      return Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(width: 8),
                  Expanded(
                    child: _buildDropdown('طريقة التوزيع*'),
                  ),
                  SizedBox(width: 30),
                  Expanded(child: _buildTextField('عدد الاقساط*')),
                  SizedBox(width: 30),
                  Expanded(child: _buildTextField('نسبة الدفعة المقدمة')),
                  SizedBox(width: 30),
                  Expanded(child: _buildTextField('مبلغ الدفعة المقدمة')),
                  _buildExecuteButton(),
                ],
              ),
              SizedBox(height: 16),
              DataTableExample13(),
            ],
          ),
        ),
      );
    });
  }

  Widget _buildTextField(String label) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.grey),
        border: UnderlineInputBorder(),
      ),
    );
  }

  Widget _buildDropdown(String label) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: DropdownButtonFormField2<String>(
            decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffd6d6d6))),
                contentPadding: EdgeInsets.all(10)),
            iconStyleData: IconStyleData(
                icon: Icon(Icons.keyboard_arrow_down), iconSize: 24),
            hint: Text(
              label,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            items: [
              DropdownMenuItem(
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text("اخر كل شهر")),
                value: "1",
              ),
              DropdownMenuItem(
                child: Align(
                    alignment: Alignment.centerRight, child: Text("يومي")),
                value: "2",
              ),
            ],
            onChanged: (value) {},
          ),
        ),
      ),
    );
  }

  Widget buildDropdoField(String label, List<String> items) {
    return BlocBuilder<CustomerOrdersCubit, CustomerOrdersState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: SizedBox(
              height: 70,
              child: Row(
                children: [
                  SizedBox(
                    width: 300,
                    child: DropdownButtonFormField2<String>(
                      decoration: InputDecoration(
                          labelText: label,
                          labelStyle: TextStyle(color: Colors.grey),
                          fillColor: Colors.white,
                          filled: true),
                      items: items
                          .map((item) => DropdownMenuItem<String>(
                                value: item,
                                child: Container(
                                  height: 250,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 0.0, vertical: 0.0),
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Color(0xffD6D6D6),
                                      ),
                                    ),
                                  ),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      item,
                                      style: const TextStyle(
                                        fontFamily: 'ReadexPro',
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xff474747),
                                      ),
                                    ),
                                  ),
                                ),
                              ))
                          .toList(),
                      onChanged: (value) {
                        switch (value) {
                          case 'اخر كل شهر':
                            context
                                .read<CustomerOrdersCubit>()
                                .selectmonth(value!);
                            break;
                          case 'يومي':
                            context
                                .read<CustomerOrdersCubit>()
                                .selectday(value!);
                            break;
                          default:
                            break;
                        }
                      },
                    ),
                  ),
                  if (state.month)
                    Expanded(
                      child: Row(
                        children: [
                          _buildTextField('رقم البنك*'),
                          _buildTextField('تاريخ الشيك*'),
                          _buildTextField('رقم الشيك/الاشعار*'),
                          _buildTextField('مبلغ البنك*'),
                        ],
                      ),
                    ),
                  if (state.day)
                    Expanded(
                      child: Row(
                        children: [
                          _buildTextField('رقم البنك*'),
                          _buildTextField('رقم الشيك/الاشعار*'),
                          _buildTextField('مبلغ البنك*'),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

Widget _buildExecuteButton() {
  return Row(
    children: [
      Directionality(
        textDirection: TextDirection.rtl,
        child: ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(
            Icons.close,
            size: 24,
          ),
          label: Text('أضافة'),
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.grey,
          ),
        ),
      ),
    ],
  );
}
