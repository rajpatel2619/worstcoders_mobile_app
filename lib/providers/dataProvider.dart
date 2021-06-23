import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DataProvider with ChangeNotifier {
  String _activeContestName = "All Contests";
  String _activeContestUrlName = "all";
  String _type = "BEFORE";
  List<dynamic> data = [];
  List<dynamic> selectedData = [];
  setActiveContest(String contestName, String contestUrlName) {
    _activeContestName = contestName;
    _activeContestUrlName = contestUrlName;
    selectedData = [];
    filterData();
  }

  // ignore: non_constant_identifier_names
  ActiveContestName() {
    return _activeContestName;
  }

  setType(String ctype) {
    _type = ctype;
  }

  toggleStatus() {
    if (_type == "BEFORE")
      _type = "CODING";
    else
      _type = "BEFORE";
    filterData();
  }

  filterData() {
    if(data.isEmpty){
    fetchData();
    }else{

    selectedData = [];
    if (_activeContestUrlName == "all") {
      for (var i = 0; i < data.length; i++) {
        if (data[i]["status"] == _type) selectedData.add(data[i]);
      }
    } else {
      for (var i = 0; i < data.length; i++) {
        if (data[i]["status"] == _type && data[i]["site"] == _activeContestName)
          selectedData.add(data[i]);
      }
    }
    notifyListeners();
    }
  }

  Future fetchData() async {
    final response =
        await http.get(Uri.parse('https://kontests.net/api/v1/all'));

    data = jsonDecode(response.body);
    filterData();
  }
}

class ApiDataType {
  String name;
  String url;
  String startTime;
  String endTime;
  String duration;
  String site;
  String in24Hours;
  String status;

  ApiDataType(
      {this.name,
      this.url,
      this.startTime,
      this.endTime,
      this.duration,
      this.site,
      this.in24Hours,
      this.status});

  ApiDataType.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
    startTime = json['start_time'];
    endTime = json['end_time'];
    duration = json['duration'];
    site = json['site'];
    in24Hours = json['in_24_hours'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['url'] = this.url;
    data['start_time'] = this.startTime;
    data['end_time'] = this.endTime;
    data['duration'] = this.duration;
    data['site'] = this.site;
    data['in_24_hours'] = this.in24Hours;
    data['status'] = this.status;
    return data;
  }
}
