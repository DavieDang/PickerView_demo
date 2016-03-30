//
//  ViewController.m
//  PickerView_demo
//
//  Created by BingoMacMini on 16/3/30.
//  Copyright © 2016年 BingoMacMini. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"

@interface ViewController ()<UIPickerViewDelegate,UIPickerViewDataSource>

{
    NSArray *dataArr1;
    NSArray *dataArr2;
}


@property (nonatomic,strong) UIPickerView *MypickerView;


@end

@implementation ViewController

-(UIPickerView *)MypickerView{
    if (!_MypickerView) {
        _MypickerView = [[UIPickerView alloc]init];
        
        self.MypickerView.delegate = self;
        self.MypickerView.dataSource = self;
        
        [self.view addSubview:self.MypickerView];
        
        [self.MypickerView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            
            make.center.mas_equalTo(self.view);
            make.size.mas_equalTo(CGSizeMake(300, 100));
            
        }];
        

    }
    return _MypickerView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
   
    self.MypickerView.backgroundColor = [UIColor grayColor];
    dataArr1 = @[@"北京",@"上海",@"广州",@"深圳",@"厦门"];
    
    dataArr2 = @[@"IT",@"教育",@"生活服务",@"学校",@"等等"];
    
    // Do any additional setup after loading the view, typically from a nib.
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// returns the number of 'columns' to display.
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    
    return 2;
    
}

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    return dataArr2.count;
    
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
    NSString *alerStr = [NSString stringWithFormat:@"(行)row%ld  列%ld",row+1,component+1];
    
    
    UIAlertController *alerViewC = [UIAlertController alertControllerWithTitle:@"你选中了：" message:alerStr preferredStyle:UIAlertControllerStyleAlert];
    
    
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        NSLog(@"6666");
    }];
    [alerViewC addAction:action];
    
    
    [self presentViewController:alerViewC animated:YES completion:nil];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    if (component == 0) {
        return dataArr1[row];
        
    }else{
        return dataArr2[row];
    }
    
}

@end
