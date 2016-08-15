require('YXYViewController,UIColor');

defineClass('ViewController', {

    pushJPTableViewVC: function(sender) {
        var tableViewCtrl = JPTableViewController.alloc().init()
        self.navigationController().pushViewController_animated(tableViewCtrl, YES)
        console.log("js did touch handleBtn");
    },
            
    chooseTheColor: function() {
      var isNight = true;
        
      if (isNight == false) {
        self.view().setBackgroundColor(UIColor.grayColor());
      } else {
        self.view().setBackgroundColor(UIColor.whiteColor());
      }
    },
});

defineClass('YXYViewController' ,['totleCount'], {
    init: function() {
      self = self.super().init()
      self.setTotleCount(2) // add new property
      return self
    },
            
    viewDidLoad: function() {
      self.ORIGviewDidLoad();
      console.log("js YXY view did load");
      
      var data = self.data(); // get propoty value
      self.setData(data.toJS().push("JSPatch"));
      var totleCount = self.totleCount()
      console.log(data)
      console.log(totleCount)
    },
            
    YXYMakeRandomNumberBtn: function(sender) {
      var number = 90;
      console.log(number);
      console.log("js YXYMakeRandomNumberBtn");
      console.log(self.data());
    },
            
    handleBtn:function(sender) {
      console.log("handle button");
    }
})

defineClass('HotfixDemo.SwiftViewController', {
    viewDidLoad: function() {
      console.log("js Swift viewDidLoad begin")
      self.ORIGviewDidLoad()
      console.log("js Swift viewDidLoad end")
    }
})

defineClass('HotfixDemo.TestObject', {
  testLog: function() {
    console.log("js TestObject testlog")
  }
})

defineClass('JPTableViewController : UITableViewController <UIAlertViewDelegate>', ['data'], {
  dataSource: function() {
    var data = self.data();
    if (data) return data;
    var data = [];
    for (var i = 0; i < 20; i ++) {
      data.push("cell No." + i + " from js file.");
    }
    self.setData(data)
    return data;
  },
            
  numberOfSectionsInTableView: function(tableView) {
    return 1;
  },
            
  tableView_numberOfRowsInSection: function(tableView, section) {
    return self.dataSource().length;
  },
            
  tableView_cellForRowAtIndexPath: function(tableView, indexPath) {
    var cell = tableView.dequeueReusableCellWithIdentifier("cell") 
    if (!cell) {
      cell = require('UITableViewCell').alloc().initWithStyle_reuseIdentifier(0, "cell")
    }
    cell.textLabel().setText(self.dataSource()[indexPath.row()])
    return cell
  },
            
  tableView_heightForRowAtIndexPath: function(tableView, indexPath) {
    return 60
  },
            
  tableView_didSelectRowAtIndexPath: function(tableView, indexPath) {
     var alertView = require('UIAlertView').alloc().initWithTitle_message_delegate_cancelButtonTitle_otherButtonTitles("Alert",self.dataSource()[indexPath.row()], self, "OK",  null);
     alertView.show()
  },
            
  alertView_willDismissWithButtonIndex: function(alertView, idx) {
    console.log('click btn ' + alertView.buttonTitleAtIndex(idx).toJS())
  }
})
