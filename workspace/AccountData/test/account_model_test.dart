import 'package:flutter_test/flutter_test.dart';
import 'package:untitled1/models/accounts_model.dart';

void main() {
  group('fromJson', () {
    test(
          'GIVEN a valid user json '
          'WHEN a json deserialization is performed'
          'THEN a user model is output',
          () {
        //given
        final json = {
          'odataContext': "",
          "value": [
            {
              "name" : "test",
              "address1_stateorprovince" : "test_address",
              "accountnumber" : "012345",
              "statecode" : 0,
              "entityimage_url" : ""


            },
            {
              "name" : "test1",
              "address1_stateorprovince" : "test1_address",
              "accountnumber" : "012345",
              "statecode" : 0,
              "entityimage_url" : ""


            }
          ]
        };

        //when
        final actual = AccountsModel.fromJson(json);
        const matcher = AccountsModel(odataContext: "",value: [
          Value(
              name: "test",
              address1_stateorprovince: "test_address",
              accountnumber: "012345",
              statecode: 0,
              entityimage_url: ""),
            Value(
            name: "test1",
            address1_stateorprovince: "test1_address",
            accountnumber: "012345",
            statecode: 0,
            entityimage_url: "")

        ]);

        //then
        expect(actual, matcher);
      },
    );
  });


}