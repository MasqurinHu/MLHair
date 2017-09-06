//
//  StyleViewController.m
//  
//
//  Created by sammi on 2017/8/14.
//
//

#import "StyleViewController.h"
#import "StyleViewCell.h"
#import <AFNetworking.h>



@interface StyleViewController ()<UICollectionViewDataSource,UICollectionViewDelegate>
@property (strong, nonatomic) IBOutlet UICollectionView *CollectionView;


@property NSArray *image;
@property NSArray *label;

@end

@implementation StyleViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UICollectionViewFlowLayout *layout = [UICollectionViewFlowLayout new];
    layout.scrollDirection = UICollectionViewScrollDirectionVertical;
    
    //设置每一行的间距
    layout.minimumLineSpacing=10;
    
    //设置item的间距
    layout.minimumInteritemSpacing=1;
    //设置section的边距
    layout.sectionInset=UIEdgeInsetsMake(5, 5, 5, 5);
    
    _image = @[@"image1",@"image2",@"image3"];
    _label = @[@"one",@"two",@"three"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return _image.count;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    StyleViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    cell.imageCell.image = [UIImage imageNamed:[_image objectAtIndex:indexPath.row]];
    
    cell.labelCell.text = [_label objectAtIndex:indexPath.row];
    return cell;
}


- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 3;

}



-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{

    NSLog(@"點了第%ld個item" , (long)indexPath.row);
}

/*
-(void)updateImage {
    
    //進行連線的設定
    AFHTTPSessionManager *manager  = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    NSString *imageUrl =[NSString stringWithFormat:@"/upload_image.php"];

    [manager POST:imageUrl parameters:key constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
        //..
        [formData appendPartWithFormData:data name:@"imageArray"];
        
    } progress:^(NSProgress * _Nonnull uploadProgress) {}
    //成功
    success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        //..
    //失敗
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //..
    }];
    
    
}
*/



@end