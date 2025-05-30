// Mocks generated by Mockito 5.4.5 from annotations
// in notd_mobile/test/helper/test_helper.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i7;
import 'dart:ui' as _i9;

import 'package:dio/dio.dart' as _i5;
import 'package:flutter/widgets.dart' as _i10;
import 'package:get/utils.dart' as _i3;
import 'package:get_storage/get_storage.dart' as _i2;
import 'package:get_storage/src/value.dart' as _i4;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i8;
import 'package:notd_mobile/api/dio_client.dart' as _i11;
import 'package:notd_mobile/apps/profile/models/profile.dart' as _i13;
import 'package:notd_mobile/apps/profile/repo/profile_repo.dart' as _i12;
import 'package:notd_mobile/base/resource.dart' as _i6;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: must_be_immutable
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeMicrotask_0 extends _i1.SmartFake implements _i2.Microtask {
  _FakeMicrotask_0(Object parent, Invocation parentInvocation)
    : super(parent, parentInvocation);
}

class _FakeGetQueue_1 extends _i1.SmartFake implements _i3.GetQueue {
  _FakeGetQueue_1(Object parent, Invocation parentInvocation)
    : super(parent, parentInvocation);
}

class _FakeValueStorage_2<T> extends _i1.SmartFake
    implements _i4.ValueStorage<T> {
  _FakeValueStorage_2(Object parent, Invocation parentInvocation)
    : super(parent, parentInvocation);
}

class _FakeBaseOptions_3 extends _i1.SmartFake implements _i5.BaseOptions {
  _FakeBaseOptions_3(Object parent, Invocation parentInvocation)
    : super(parent, parentInvocation);
}

class _FakeHttpClientAdapter_4 extends _i1.SmartFake
    implements _i5.HttpClientAdapter {
  _FakeHttpClientAdapter_4(Object parent, Invocation parentInvocation)
    : super(parent, parentInvocation);
}

class _FakeTransformer_5 extends _i1.SmartFake implements _i5.Transformer {
  _FakeTransformer_5(Object parent, Invocation parentInvocation)
    : super(parent, parentInvocation);
}

class _FakeInterceptors_6 extends _i1.SmartFake implements _i5.Interceptors {
  _FakeInterceptors_6(Object parent, Invocation parentInvocation)
    : super(parent, parentInvocation);
}

class _FakeResponse_7<T> extends _i1.SmartFake implements _i5.Response<T> {
  _FakeResponse_7(Object parent, Invocation parentInvocation)
    : super(parent, parentInvocation);
}

class _FakeDio_8 extends _i1.SmartFake implements _i5.Dio {
  _FakeDio_8(Object parent, Invocation parentInvocation)
    : super(parent, parentInvocation);
}

class _FakeResource_9<T, E> extends _i1.SmartFake
    implements _i6.Resource<T, E> {
  _FakeResource_9(Object parent, Invocation parentInvocation)
    : super(parent, parentInvocation);
}

/// A class which mocks [GetStorage].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetStorage extends _i1.Mock implements _i2.GetStorage {
  MockGetStorage() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.Microtask get microtask =>
      (super.noSuchMethod(
            Invocation.getter(#microtask),
            returnValue: _FakeMicrotask_0(this, Invocation.getter(#microtask)),
          )
          as _i2.Microtask);

  @override
  _i3.GetQueue get queue =>
      (super.noSuchMethod(
            Invocation.getter(#queue),
            returnValue: _FakeGetQueue_1(this, Invocation.getter(#queue)),
          )
          as _i3.GetQueue);

  @override
  set queue(_i3.GetQueue? _queue) => super.noSuchMethod(
    Invocation.setter(#queue, _queue),
    returnValueForMissingStub: null,
  );

  @override
  _i7.Future<bool> get initStorage =>
      (super.noSuchMethod(
            Invocation.getter(#initStorage),
            returnValue: _i7.Future<bool>.value(false),
          )
          as _i7.Future<bool>);

  @override
  set initStorage(_i7.Future<bool>? _initStorage) => super.noSuchMethod(
    Invocation.setter(#initStorage, _initStorage),
    returnValueForMissingStub: null,
  );

  @override
  Map<String, dynamic> get changes =>
      (super.noSuchMethod(
            Invocation.getter(#changes),
            returnValue: <String, dynamic>{},
          )
          as Map<String, dynamic>);

  @override
  _i4.ValueStorage<Map<String, dynamic>> get listenable =>
      (super.noSuchMethod(
            Invocation.getter(#listenable),
            returnValue: _FakeValueStorage_2<Map<String, dynamic>>(
              this,
              Invocation.getter(#listenable),
            ),
          )
          as _i4.ValueStorage<Map<String, dynamic>>);

  @override
  T? read<T>(String? key) =>
      (super.noSuchMethod(Invocation.method(#read, [key])) as T?);

  @override
  T getKeys<T>() =>
      (super.noSuchMethod(
            Invocation.method(#getKeys, []),
            returnValue: _i8.dummyValue<T>(
              this,
              Invocation.method(#getKeys, []),
            ),
          )
          as T);

  @override
  T getValues<T>() =>
      (super.noSuchMethod(
            Invocation.method(#getValues, []),
            returnValue: _i8.dummyValue<T>(
              this,
              Invocation.method(#getValues, []),
            ),
          )
          as T);

  @override
  bool hasData(String? key) =>
      (super.noSuchMethod(
            Invocation.method(#hasData, [key]),
            returnValue: false,
          )
          as bool);

  @override
  _i9.VoidCallback listen(_i9.VoidCallback? value) =>
      (super.noSuchMethod(
            Invocation.method(#listen, [value]),
            returnValue: () {},
          )
          as _i9.VoidCallback);

  @override
  _i9.VoidCallback listenKey(
    String? key,
    _i10.ValueSetter<dynamic>? callback,
  ) =>
      (super.noSuchMethod(
            Invocation.method(#listenKey, [key, callback]),
            returnValue: () {},
          )
          as _i9.VoidCallback);

  @override
  _i7.Future<void> write(String? key, dynamic value) =>
      (super.noSuchMethod(
            Invocation.method(#write, [key, value]),
            returnValue: _i7.Future<void>.value(),
            returnValueForMissingStub: _i7.Future<void>.value(),
          )
          as _i7.Future<void>);

  @override
  void writeInMemory(String? key, dynamic value) => super.noSuchMethod(
    Invocation.method(#writeInMemory, [key, value]),
    returnValueForMissingStub: null,
  );

  @override
  _i7.Future<void> writeIfNull(String? key, dynamic value) =>
      (super.noSuchMethod(
            Invocation.method(#writeIfNull, [key, value]),
            returnValue: _i7.Future<void>.value(),
            returnValueForMissingStub: _i7.Future<void>.value(),
          )
          as _i7.Future<void>);

  @override
  _i7.Future<void> remove(String? key) =>
      (super.noSuchMethod(
            Invocation.method(#remove, [key]),
            returnValue: _i7.Future<void>.value(),
            returnValueForMissingStub: _i7.Future<void>.value(),
          )
          as _i7.Future<void>);

  @override
  _i7.Future<void> erase() =>
      (super.noSuchMethod(
            Invocation.method(#erase, []),
            returnValue: _i7.Future<void>.value(),
            returnValueForMissingStub: _i7.Future<void>.value(),
          )
          as _i7.Future<void>);

  @override
  _i7.Future<void> save() =>
      (super.noSuchMethod(
            Invocation.method(#save, []),
            returnValue: _i7.Future<void>.value(),
            returnValueForMissingStub: _i7.Future<void>.value(),
          )
          as _i7.Future<void>);
}

/// A class which mocks [DioClient].
///
/// See the documentation for Mockito's code generation for more information.
class MockDioClient extends _i1.Mock implements _i11.DioClient {
  MockDioClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.BaseOptions get options =>
      (super.noSuchMethod(
            Invocation.getter(#options),
            returnValue: _FakeBaseOptions_3(this, Invocation.getter(#options)),
          )
          as _i5.BaseOptions);

  @override
  set options(_i5.BaseOptions? _options) => super.noSuchMethod(
    Invocation.setter(#options, _options),
    returnValueForMissingStub: null,
  );

  @override
  _i5.HttpClientAdapter get httpClientAdapter =>
      (super.noSuchMethod(
            Invocation.getter(#httpClientAdapter),
            returnValue: _FakeHttpClientAdapter_4(
              this,
              Invocation.getter(#httpClientAdapter),
            ),
          )
          as _i5.HttpClientAdapter);

  @override
  set httpClientAdapter(_i5.HttpClientAdapter? _httpClientAdapter) =>
      super.noSuchMethod(
        Invocation.setter(#httpClientAdapter, _httpClientAdapter),
        returnValueForMissingStub: null,
      );

  @override
  _i5.Transformer get transformer =>
      (super.noSuchMethod(
            Invocation.getter(#transformer),
            returnValue: _FakeTransformer_5(
              this,
              Invocation.getter(#transformer),
            ),
          )
          as _i5.Transformer);

  @override
  set transformer(_i5.Transformer? _transformer) => super.noSuchMethod(
    Invocation.setter(#transformer, _transformer),
    returnValueForMissingStub: null,
  );

  @override
  _i5.Interceptors get interceptors =>
      (super.noSuchMethod(
            Invocation.getter(#interceptors),
            returnValue: _FakeInterceptors_6(
              this,
              Invocation.getter(#interceptors),
            ),
          )
          as _i5.Interceptors);

  @override
  _i7.Future<_i5.Response<dynamic>> download(
    String? urlPath,
    dynamic savePath, {
    _i5.ProgressCallback? onReceiveProgress,
    Map<String, dynamic>? queryParameters,
    _i5.CancelToken? cancelToken,
    bool? deleteOnError = true,
    _i5.FileAccessMode? fileAccessMode = _i5.FileAccessMode.write,
    String? lengthHeader = 'content-length',
    Object? data,
    _i5.Options? options,
  }) =>
      (super.noSuchMethod(
            Invocation.method(
              #download,
              [urlPath, savePath],
              {
                #onReceiveProgress: onReceiveProgress,
                #queryParameters: queryParameters,
                #cancelToken: cancelToken,
                #deleteOnError: deleteOnError,
                #fileAccessMode: fileAccessMode,
                #lengthHeader: lengthHeader,
                #data: data,
                #options: options,
              },
            ),
            returnValue: _i7.Future<_i5.Response<dynamic>>.value(
              _FakeResponse_7<dynamic>(
                this,
                Invocation.method(
                  #download,
                  [urlPath, savePath],
                  {
                    #onReceiveProgress: onReceiveProgress,
                    #queryParameters: queryParameters,
                    #cancelToken: cancelToken,
                    #deleteOnError: deleteOnError,
                    #fileAccessMode: fileAccessMode,
                    #lengthHeader: lengthHeader,
                    #data: data,
                    #options: options,
                  },
                ),
              ),
            ),
          )
          as _i7.Future<_i5.Response<dynamic>>);

  @override
  void close({bool? force = false}) => super.noSuchMethod(
    Invocation.method(#close, [], {#force: force}),
    returnValueForMissingStub: null,
  );

  @override
  _i7.Future<_i5.Response<T>> get<T>(
    String? path, {
    Map<String, dynamic>? queryParameters,
    Object? data,
    _i5.Options? options,
    _i5.CancelToken? cancelToken,
    _i5.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
            Invocation.method(
              #get,
              [path],
              {
                #queryParameters: queryParameters,
                #data: data,
                #options: options,
                #cancelToken: cancelToken,
                #onReceiveProgress: onReceiveProgress,
              },
            ),
            returnValue: _i7.Future<_i5.Response<T>>.value(
              _FakeResponse_7<T>(
                this,
                Invocation.method(
                  #get,
                  [path],
                  {
                    #queryParameters: queryParameters,
                    #data: data,
                    #options: options,
                    #cancelToken: cancelToken,
                    #onReceiveProgress: onReceiveProgress,
                  },
                ),
              ),
            ),
          )
          as _i7.Future<_i5.Response<T>>);

  @override
  _i7.Future<_i5.Response<T>> getUri<T>(
    Uri? uri, {
    Object? data,
    _i5.Options? options,
    _i5.CancelToken? cancelToken,
    _i5.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
            Invocation.method(
              #getUri,
              [uri],
              {
                #data: data,
                #options: options,
                #cancelToken: cancelToken,
                #onReceiveProgress: onReceiveProgress,
              },
            ),
            returnValue: _i7.Future<_i5.Response<T>>.value(
              _FakeResponse_7<T>(
                this,
                Invocation.method(
                  #getUri,
                  [uri],
                  {
                    #data: data,
                    #options: options,
                    #cancelToken: cancelToken,
                    #onReceiveProgress: onReceiveProgress,
                  },
                ),
              ),
            ),
          )
          as _i7.Future<_i5.Response<T>>);

  @override
  _i7.Future<_i5.Response<T>> post<T>(
    String? path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    _i5.Options? options,
    _i5.CancelToken? cancelToken,
    _i5.ProgressCallback? onSendProgress,
    _i5.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
            Invocation.method(
              #post,
              [path],
              {
                #data: data,
                #queryParameters: queryParameters,
                #options: options,
                #cancelToken: cancelToken,
                #onSendProgress: onSendProgress,
                #onReceiveProgress: onReceiveProgress,
              },
            ),
            returnValue: _i7.Future<_i5.Response<T>>.value(
              _FakeResponse_7<T>(
                this,
                Invocation.method(
                  #post,
                  [path],
                  {
                    #data: data,
                    #queryParameters: queryParameters,
                    #options: options,
                    #cancelToken: cancelToken,
                    #onSendProgress: onSendProgress,
                    #onReceiveProgress: onReceiveProgress,
                  },
                ),
              ),
            ),
          )
          as _i7.Future<_i5.Response<T>>);

  @override
  _i7.Future<_i5.Response<T>> postUri<T>(
    Uri? uri, {
    Object? data,
    _i5.Options? options,
    _i5.CancelToken? cancelToken,
    _i5.ProgressCallback? onSendProgress,
    _i5.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
            Invocation.method(
              #postUri,
              [uri],
              {
                #data: data,
                #options: options,
                #cancelToken: cancelToken,
                #onSendProgress: onSendProgress,
                #onReceiveProgress: onReceiveProgress,
              },
            ),
            returnValue: _i7.Future<_i5.Response<T>>.value(
              _FakeResponse_7<T>(
                this,
                Invocation.method(
                  #postUri,
                  [uri],
                  {
                    #data: data,
                    #options: options,
                    #cancelToken: cancelToken,
                    #onSendProgress: onSendProgress,
                    #onReceiveProgress: onReceiveProgress,
                  },
                ),
              ),
            ),
          )
          as _i7.Future<_i5.Response<T>>);

  @override
  _i7.Future<_i5.Response<T>> put<T>(
    String? path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    _i5.Options? options,
    _i5.CancelToken? cancelToken,
    _i5.ProgressCallback? onSendProgress,
    _i5.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
            Invocation.method(
              #put,
              [path],
              {
                #data: data,
                #queryParameters: queryParameters,
                #options: options,
                #cancelToken: cancelToken,
                #onSendProgress: onSendProgress,
                #onReceiveProgress: onReceiveProgress,
              },
            ),
            returnValue: _i7.Future<_i5.Response<T>>.value(
              _FakeResponse_7<T>(
                this,
                Invocation.method(
                  #put,
                  [path],
                  {
                    #data: data,
                    #queryParameters: queryParameters,
                    #options: options,
                    #cancelToken: cancelToken,
                    #onSendProgress: onSendProgress,
                    #onReceiveProgress: onReceiveProgress,
                  },
                ),
              ),
            ),
          )
          as _i7.Future<_i5.Response<T>>);

  @override
  _i7.Future<_i5.Response<T>> putUri<T>(
    Uri? uri, {
    Object? data,
    _i5.Options? options,
    _i5.CancelToken? cancelToken,
    _i5.ProgressCallback? onSendProgress,
    _i5.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
            Invocation.method(
              #putUri,
              [uri],
              {
                #data: data,
                #options: options,
                #cancelToken: cancelToken,
                #onSendProgress: onSendProgress,
                #onReceiveProgress: onReceiveProgress,
              },
            ),
            returnValue: _i7.Future<_i5.Response<T>>.value(
              _FakeResponse_7<T>(
                this,
                Invocation.method(
                  #putUri,
                  [uri],
                  {
                    #data: data,
                    #options: options,
                    #cancelToken: cancelToken,
                    #onSendProgress: onSendProgress,
                    #onReceiveProgress: onReceiveProgress,
                  },
                ),
              ),
            ),
          )
          as _i7.Future<_i5.Response<T>>);

  @override
  _i7.Future<_i5.Response<T>> head<T>(
    String? path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    _i5.Options? options,
    _i5.CancelToken? cancelToken,
  }) =>
      (super.noSuchMethod(
            Invocation.method(
              #head,
              [path],
              {
                #data: data,
                #queryParameters: queryParameters,
                #options: options,
                #cancelToken: cancelToken,
              },
            ),
            returnValue: _i7.Future<_i5.Response<T>>.value(
              _FakeResponse_7<T>(
                this,
                Invocation.method(
                  #head,
                  [path],
                  {
                    #data: data,
                    #queryParameters: queryParameters,
                    #options: options,
                    #cancelToken: cancelToken,
                  },
                ),
              ),
            ),
          )
          as _i7.Future<_i5.Response<T>>);

  @override
  _i7.Future<_i5.Response<T>> headUri<T>(
    Uri? uri, {
    Object? data,
    _i5.Options? options,
    _i5.CancelToken? cancelToken,
  }) =>
      (super.noSuchMethod(
            Invocation.method(
              #headUri,
              [uri],
              {#data: data, #options: options, #cancelToken: cancelToken},
            ),
            returnValue: _i7.Future<_i5.Response<T>>.value(
              _FakeResponse_7<T>(
                this,
                Invocation.method(
                  #headUri,
                  [uri],
                  {#data: data, #options: options, #cancelToken: cancelToken},
                ),
              ),
            ),
          )
          as _i7.Future<_i5.Response<T>>);

  @override
  _i7.Future<_i5.Response<T>> delete<T>(
    String? path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    _i5.Options? options,
    _i5.CancelToken? cancelToken,
  }) =>
      (super.noSuchMethod(
            Invocation.method(
              #delete,
              [path],
              {
                #data: data,
                #queryParameters: queryParameters,
                #options: options,
                #cancelToken: cancelToken,
              },
            ),
            returnValue: _i7.Future<_i5.Response<T>>.value(
              _FakeResponse_7<T>(
                this,
                Invocation.method(
                  #delete,
                  [path],
                  {
                    #data: data,
                    #queryParameters: queryParameters,
                    #options: options,
                    #cancelToken: cancelToken,
                  },
                ),
              ),
            ),
          )
          as _i7.Future<_i5.Response<T>>);

  @override
  _i7.Future<_i5.Response<T>> deleteUri<T>(
    Uri? uri, {
    Object? data,
    _i5.Options? options,
    _i5.CancelToken? cancelToken,
  }) =>
      (super.noSuchMethod(
            Invocation.method(
              #deleteUri,
              [uri],
              {#data: data, #options: options, #cancelToken: cancelToken},
            ),
            returnValue: _i7.Future<_i5.Response<T>>.value(
              _FakeResponse_7<T>(
                this,
                Invocation.method(
                  #deleteUri,
                  [uri],
                  {#data: data, #options: options, #cancelToken: cancelToken},
                ),
              ),
            ),
          )
          as _i7.Future<_i5.Response<T>>);

  @override
  _i7.Future<_i5.Response<T>> patch<T>(
    String? path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    _i5.Options? options,
    _i5.CancelToken? cancelToken,
    _i5.ProgressCallback? onSendProgress,
    _i5.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
            Invocation.method(
              #patch,
              [path],
              {
                #data: data,
                #queryParameters: queryParameters,
                #options: options,
                #cancelToken: cancelToken,
                #onSendProgress: onSendProgress,
                #onReceiveProgress: onReceiveProgress,
              },
            ),
            returnValue: _i7.Future<_i5.Response<T>>.value(
              _FakeResponse_7<T>(
                this,
                Invocation.method(
                  #patch,
                  [path],
                  {
                    #data: data,
                    #queryParameters: queryParameters,
                    #options: options,
                    #cancelToken: cancelToken,
                    #onSendProgress: onSendProgress,
                    #onReceiveProgress: onReceiveProgress,
                  },
                ),
              ),
            ),
          )
          as _i7.Future<_i5.Response<T>>);

  @override
  _i7.Future<_i5.Response<T>> patchUri<T>(
    Uri? uri, {
    Object? data,
    _i5.Options? options,
    _i5.CancelToken? cancelToken,
    _i5.ProgressCallback? onSendProgress,
    _i5.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
            Invocation.method(
              #patchUri,
              [uri],
              {
                #data: data,
                #options: options,
                #cancelToken: cancelToken,
                #onSendProgress: onSendProgress,
                #onReceiveProgress: onReceiveProgress,
              },
            ),
            returnValue: _i7.Future<_i5.Response<T>>.value(
              _FakeResponse_7<T>(
                this,
                Invocation.method(
                  #patchUri,
                  [uri],
                  {
                    #data: data,
                    #options: options,
                    #cancelToken: cancelToken,
                    #onSendProgress: onSendProgress,
                    #onReceiveProgress: onReceiveProgress,
                  },
                ),
              ),
            ),
          )
          as _i7.Future<_i5.Response<T>>);

  @override
  _i7.Future<_i5.Response<dynamic>> downloadUri(
    Uri? uri,
    dynamic savePath, {
    _i5.ProgressCallback? onReceiveProgress,
    _i5.CancelToken? cancelToken,
    bool? deleteOnError = true,
    _i5.FileAccessMode? fileAccessMode = _i5.FileAccessMode.write,
    String? lengthHeader = 'content-length',
    Object? data,
    _i5.Options? options,
  }) =>
      (super.noSuchMethod(
            Invocation.method(
              #downloadUri,
              [uri, savePath],
              {
                #onReceiveProgress: onReceiveProgress,
                #cancelToken: cancelToken,
                #deleteOnError: deleteOnError,
                #fileAccessMode: fileAccessMode,
                #lengthHeader: lengthHeader,
                #data: data,
                #options: options,
              },
            ),
            returnValue: _i7.Future<_i5.Response<dynamic>>.value(
              _FakeResponse_7<dynamic>(
                this,
                Invocation.method(
                  #downloadUri,
                  [uri, savePath],
                  {
                    #onReceiveProgress: onReceiveProgress,
                    #cancelToken: cancelToken,
                    #deleteOnError: deleteOnError,
                    #fileAccessMode: fileAccessMode,
                    #lengthHeader: lengthHeader,
                    #data: data,
                    #options: options,
                  },
                ),
              ),
            ),
          )
          as _i7.Future<_i5.Response<dynamic>>);

  @override
  _i7.Future<_i5.Response<T>> requestUri<T>(
    Uri? uri, {
    Object? data,
    _i5.CancelToken? cancelToken,
    _i5.Options? options,
    _i5.ProgressCallback? onSendProgress,
    _i5.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
            Invocation.method(
              #requestUri,
              [uri],
              {
                #data: data,
                #cancelToken: cancelToken,
                #options: options,
                #onSendProgress: onSendProgress,
                #onReceiveProgress: onReceiveProgress,
              },
            ),
            returnValue: _i7.Future<_i5.Response<T>>.value(
              _FakeResponse_7<T>(
                this,
                Invocation.method(
                  #requestUri,
                  [uri],
                  {
                    #data: data,
                    #cancelToken: cancelToken,
                    #options: options,
                    #onSendProgress: onSendProgress,
                    #onReceiveProgress: onReceiveProgress,
                  },
                ),
              ),
            ),
          )
          as _i7.Future<_i5.Response<T>>);

  @override
  _i7.Future<_i5.Response<T>> request<T>(
    String? path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    _i5.CancelToken? cancelToken,
    _i5.Options? options,
    _i5.ProgressCallback? onSendProgress,
    _i5.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
            Invocation.method(
              #request,
              [path],
              {
                #data: data,
                #queryParameters: queryParameters,
                #cancelToken: cancelToken,
                #options: options,
                #onSendProgress: onSendProgress,
                #onReceiveProgress: onReceiveProgress,
              },
            ),
            returnValue: _i7.Future<_i5.Response<T>>.value(
              _FakeResponse_7<T>(
                this,
                Invocation.method(
                  #request,
                  [path],
                  {
                    #data: data,
                    #queryParameters: queryParameters,
                    #cancelToken: cancelToken,
                    #options: options,
                    #onSendProgress: onSendProgress,
                    #onReceiveProgress: onReceiveProgress,
                  },
                ),
              ),
            ),
          )
          as _i7.Future<_i5.Response<T>>);

  @override
  _i7.Future<_i5.Response<T>> fetch<T>(_i5.RequestOptions? requestOptions) =>
      (super.noSuchMethod(
            Invocation.method(#fetch, [requestOptions]),
            returnValue: _i7.Future<_i5.Response<T>>.value(
              _FakeResponse_7<T>(
                this,
                Invocation.method(#fetch, [requestOptions]),
              ),
            ),
          )
          as _i7.Future<_i5.Response<T>>);

  @override
  _i5.Dio clone({
    _i5.BaseOptions? options,
    _i5.Interceptors? interceptors,
    _i5.HttpClientAdapter? httpClientAdapter,
    _i5.Transformer? transformer,
  }) =>
      (super.noSuchMethod(
            Invocation.method(#clone, [], {
              #options: options,
              #interceptors: interceptors,
              #httpClientAdapter: httpClientAdapter,
              #transformer: transformer,
            }),
            returnValue: _FakeDio_8(
              this,
              Invocation.method(#clone, [], {
                #options: options,
                #interceptors: interceptors,
                #httpClientAdapter: httpClientAdapter,
                #transformer: transformer,
              }),
            ),
          )
          as _i5.Dio);
}

/// A class which mocks [ProfileRepo].
///
/// See the documentation for Mockito's code generation for more information.
class MockProfileRepo extends _i1.Mock implements _i12.ProfileRepo {
  MockProfileRepo() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.Future<_i6.Resource<_i13.Profile, String>> getProfile() =>
      (super.noSuchMethod(
            Invocation.method(#getProfile, []),
            returnValue: _i7.Future<_i6.Resource<_i13.Profile, String>>.value(
              _FakeResource_9<_i13.Profile, String>(
                this,
                Invocation.method(#getProfile, []),
              ),
            ),
          )
          as _i7.Future<_i6.Resource<_i13.Profile, String>>);
}
