#include<iostream>
#include<string>
#include<vector>

#include<iterator>
using namespace std;
int main(){
  vector<string> raw_data;
  vector< pair<string, string> > data;
  copy(istream_iterator<string>(cin),istream_iterator<string>(), raw_data);
  for (vector<string>::iterator it = raw_data.begin(); it != raw_data.end(); it++){
    data.push_back(make_pair(*it, *++it));
  }
  for (vector<pair>::iterator it = data.begin(); it!= data.end(); it++){
    cout << *it << endl;
  }

}
