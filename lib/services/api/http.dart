import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Api extends Dio {

  Api() {
    this.options.baseUrl = 'https://api.alpha.peoplewave.co/v1';
    this.options.headers = {
      'Authorization': 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImRmNWJkMTU0MmZhODVmYmQzYTJiM2UwYzQwOGQwMjRkMmE2Yjc4M2Q1NTAzZjg3MGE1NzU1Mjc5ODc0YTczOTg1ZDA5YWFhNDU3Y2ZjYjNmIn0.eyJhdWQiOiIxIiwianRpIjoiZGY1YmQxNTQyZmE4NWZiZDNhMmIzZTBjNDA4ZDAyNGQyYTZiNzgzZDU1MDNmODcwYTU3NTUyNzk4NzRhNzM5ODVkMDlhYWE0NTdjZmNiM2YiLCJpYXQiOjE1NDM0ODI4MDYsIm5iZiI6MTU0MzQ4MjgwNiwiZXhwIjoxNTc1MDE4ODA2LCJzdWIiOiIzOSIsInNjb3BlcyI6W119.dwe9_m2rG4O3H2U3zRJhgiSsUtZCgJM989u-5XE6UUuAO_8YzXxDGBw6P_m2WTUSA1GFpTgGN3auSkT0qr6x-3nuIvDrTWjqjMg-HBFBgsu42hzi827ndPINQgxCa5hju64OEft2q41nsUDtDjLmVctedLbWvfawDGc-bEKIqwd_COYF_wpvbqgV940VrGL0ibMvUK8v3TJDCL7cmStKz-RVlvCjVzKMBIi6ZldovrgzJF2552rlYPi6iCV-aMwCio-r4ZdiMgeP_vAfqqhFNNUFFTZ_UspwZxnCUYr2AboyQx-Uqr7j3ZLB6kKD8xMjrpMHLPxklwrUUhKMe448nGyLJMG8T3wWZrBFvd-GoxfVgrbm0h4Z4T3DPExj57y1Gi1-p7Uf_tVymCinoer6EZLZgPnPlkq_cf8P3sktlA1igecDT10jBtCgqVTe0nM_G3LlAX4Kaz0DwODsvQCInlyrKLdZTs872calTQ5TXY-LiA6BSsfj3eJb54jbjrZuf_qsKdw0JDZaSsTM_0OPMWTglzCzTgxPHGSuIS0j-fmIII-vkaFbDvL6Hz5YInM638jvOhc4__xM-vwxz1H3WP_wamzO5yBo2iL9q_aQj0h8unJMOG5D1_5JRkloWK7x0mnzqWBn3m3EjXDb3Vdqr_YdLc6oW6G5cNMptMjTLXU',
      'Peoplewave-Company-Slug': 'peoplewave',
      'X-Requested-With': 'XMLHttpRequest'
    };
    this.interceptor.response.onError = _onError;
  }

  DioError _onError (DioError e) {
    Builder(builder: (BuildContext context) {
      Scaffold.of(context).showSnackBar(
        SnackBar(content: Text('Cannot complete request'),)
      );
    });

    return e;
  }

}
