// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:untitled1/main.dart';
import 'package:untitled1/models/list_state.dart';
import 'package:untitled1/providers/account_provider.dart';
import 'package:untitled1/providers/account_state_provider.dart';
import 'package:untitled1/ui/views/dashboad_view.dart';
import 'package:untitled1/ui/widgets/errod_found_widget.dart';
import 'package:untitled1/ui/widgets/list_populate_widget.dart';
import 'package:untitled1/ui/widgets/no_record_found.dart';
import 'package:untitled1/ui/widgets/tile_skeleton_widget.dart';

void main() {

  testWidgets('TileSkeletonWidget widget rendering tests when state is loading', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    final mockAccountStateProvider =
    StateNotifierProvider<AccountStateNotifier, ListState>((ref) => AccountStateNotifier(ref: ref,listState: const ListState.dataLoading([]),isTesting: true));
    await tester.pumpWidget(isEvenTestWidget(mockAccountStateProvider));


    expect(find.byType(TileSkeletonWidget), findsOneWidget);
   
  });


  testWidgets('ErrorFound widget rendering tests when state is error', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    final mockAccountStateProvider =
    StateNotifierProvider<AccountStateNotifier, ListState>((ref) => AccountStateNotifier(ref: ref,listState: const ListState.error(""),isTesting: true));
    await tester.pumpWidget(isEvenTestWidget(mockAccountStateProvider));


    expect(find.byType(ErrorFound), findsOneWidget);

  });


  testWidgets('NoRecordFound widget rendering tests when state has data but no record in list', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    final mockAccountStateProvider =
    StateNotifierProvider<AccountStateNotifier, ListState>((ref) => AccountStateNotifier(ref: ref,listState: const ListState.data([], false, 0),isTesting: true));
    await tester.pumpWidget(isEvenTestWidget(mockAccountStateProvider));


    expect(find.byType(NoRecordFound), findsOneWidget);

  });



}

Widget isEvenTestWidget(StateNotifierProvider<AccountStateNotifier, ListState> mockProvider) {
  return ProviderScope(
    overrides: [
      accountStateNotifierProvider.overrideWithProvider(mockProvider),
    ],
    child: const MaterialApp(
      home: ListPopulateWidget(),
    ),
  );
}

