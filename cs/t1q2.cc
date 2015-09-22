#include<iostream>
#include<algorithm>
#include<vector>
#include<iterator>
#include<string>
#include<list>
using namespace std;
int main(){
  list<string> l;
  copy(istream_iterator<string>(cin), istream_iterator<string>(), back_inserter(l));
  copy(l.begin(), l.end(),ostream_iterator<string>(cout, "\n"));
  copy(l.rbegin(), l.rend(), ostream_iterator<string>(cout,"\n"));
  return 0;
}
