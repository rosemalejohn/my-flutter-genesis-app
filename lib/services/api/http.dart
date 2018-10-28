import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Api extends Dio {

  Api() {
    this.options.baseUrl = 'https://api.alpha.peoplewave.co/v1';
    this.options.headers = {
      'Authorization': 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImRhN2NjN2FmMTQzZmQ0ODNkN2RhYzgzMzIxMWU2MTRkNDUzM2ZmMjJmMWVmZTZjMTkzNGU3NmEzODQyYTlmNDU1MDJiZjEzOTlkYzM0NTkxIn0.eyJhdWQiOiIxIiwianRpIjoiZGE3Y2M3YWYxNDNmZDQ4M2Q3ZGFjODMzMjExZTYxNGQ0NTMzZmYyMmYxZWZlNmMxOTM0ZTc2YTM4NDJhOWY0NTUwMmJmMTM5OWRjMzQ1OTEiLCJpYXQiOjE1NDAxNzkyMzIsIm5iZiI6MTU0MDE3OTIzMiwiZXhwIjoxNTcxNzE1MjMyLCJzdWIiOiIzOSIsInNjb3BlcyI6W119.JFEQRg_e7viz4Tg-oloUV83uB4EPuOnaOA1hT5qeHwZftBRXJo_cBvw-L_-sbTgeMTsQhNzfSYnpvRt3ul-AVMPddaCxb2EOgTTrUonDV9ziGoYvJswTMfZVniN7nNgs_b1_mEI3Poj-GH6iwxx0Zcb9JAf62BqtHow1L9ge14SH26RA7OS0FwaWT1GuiAUmQUkn6h3B6rw_IOPG8utx0udXRv71vyi87g53-b3hojB2XUROyXqeAmMolvHVy2iaGC4yl0fz76ym1qXsBNo7ZXWuloRdLDIDz6bPFzNL5T9xDJ5OIAt4umDQJCtsjTkfc5-RVsUHjq8jN441l7FOIQnQnx6KkV4K2mpjQIbVXCduBife3IXpbgS2l4go0FaMlcnzLeAUm_MaId_ykOkrRB_jWZStRPTYXxWUImk3U2Yt_SQJ8YTGu2zTgNAs17mtF-53qDXo761TYnylSDsoueZFKnhR8A-qXRG0_kzXUjxrdsflvHSf7fZNl71ldj3tFMj-0J0sMqaROPqcQ_gJbQQ1TujYb8RLb_CbbEbRfD_SUZ_MRjxhQ98y0K898m4dP-_qhFUlZuSqTCTcM3VrXDjzbjzkQWRNQPb0sxlmFqpZsfvc_O-_e17n5_YlzQZeKkSok-A8Y0djopEPPFa6jc_fiyvp5n11dPzH3eIEOFs',
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
