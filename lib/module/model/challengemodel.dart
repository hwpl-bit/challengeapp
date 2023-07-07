class ChallengeModel {
  String? avatar;
  String? name;

  ChallengeModel({this.avatar, this.name});

  ChallengeModel.fromJson(Map<String, dynamic> json) {
    avatar = json['avatar'];
    name = json['name'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['avatar'] = this.avatar;
    data['name'] = this.name;
    return data;
  }
}