/*
https://blog.csdn.net/xcf111/article/details/90752577
https://pub.dev/packages/flutter_redux#-readme-tab-

https://segmentfault.com/a/1190000015593259
*
* */

//定义action
enum Action {
  Change,
  Increment
}


//定义reducer
ReduxState getReduce(ReduxState state, action) {
  if(action == Action.Increment) {

    state.state +=1;

  }
  return state;
}

class ReduxState {

  int  state;

 static ReduxState init(){
   ReduxState reduxState = new ReduxState();
   reduxState.state = 0;
    return reduxState;
  }
}
