// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../providers/database_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$databaseHash() => r'2002390d7f0b9e5627158d9a0ec2c04149395ac9';

/// Provides direct level access to the database service.
///
/// Note that the database service does not have a mechanism
/// for listening to updates.
/// Consider wrapping this provider in another object,
/// if you need to subscribe to updates in the stored data
///
/// Copied from [database].
@ProviderFor(database)
final databaseProvider = FutureProvider<DatabaseService>.internal(
  database,
  name: r'databaseProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$databaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef DatabaseRef = FutureProviderRef<DatabaseService>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
