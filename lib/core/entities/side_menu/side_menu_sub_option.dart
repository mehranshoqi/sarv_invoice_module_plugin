import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class SideMenuSubOption extends Equatable {
  final String label;
  final IconData icon;
  final Widget child;

  const SideMenuSubOption(this.label, this.icon, this.child);

  @override
  List<Object?> get props => [label, icon, child];
}
