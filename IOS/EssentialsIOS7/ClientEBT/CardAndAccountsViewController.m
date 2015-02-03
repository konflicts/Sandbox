//
//  CardAndAccountsViewController.m
//  ClientEBT
//
//  Created by Pedro Pena on 1/24/14.
//  Copyright (c) 2014 Pedo Peña. All rights reserved.
//

#import "CardAndAccountsViewController.h"
#import "CardsTableViewCell.h"
#import "DetailedViewController.h"

@interface CardAndAccountsViewController ()

@end

@implementation CardAndAccountsViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
// Card Info
    
    _cardBalance = @[@"$123.45",
                     @"$500.00",
                     @"$0.70"];

    _cardPAN = @[@"5077120874625749572",
                 @"5077126874622854848",
                 @"5077123874620000896"];

    _cardImages = @[@"ADSEF-Mini.png",
                    @"UNICA-Mini.png",
                    @"CFSE-Mini.png"];
    
// Accounts Info
    _accounBalance = @[@"$0.00",
                       @"$0.00"];

    _accountName = @[@"Banco Santander",
                     @"Banco Popular de Puerto Rico"];

    _accountNumber =  @[@"xxxxxxxx-2356",
                        @"xxxxxxxx-6576"];

    _accountImages = @[@"NSE.PNG",
                       @"ADSEF.PNG"];
    
    
   
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
   // return _cardPAN.count;
    
    NSLog([@(section) stringValue ]);
    
    if(section == 1)
        return _accountNumber.count;
    else
        return _cardPAN.count;
    
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    
    
    if(section == 1)
        return @"Direct Deposit";
    else
        return @"Cards";

    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"CardsTableCell";
    
    CardsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    long row = [indexPath row];
    
    if([indexPath section] == 0)
    {
    
    cell.label1.text = _cardPAN[row];
    cell.label2.text  = _cardBalance[row];
    cell.label3.hidden=YES;
    cell.CardAcccountImage.image = [UIImage imageNamed:_cardImages[row]];
    }
    else
    {
        cell.label1.text = _accountName[row];
        cell.label2.text = _accountNumber[row];
        cell.label3.text = _accounBalance[row];
        cell.CardAcccountImage.image =[UIImage imageNamed:_accountImages[row]];
    }
    
    
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([[segue identifier] isEqualToString:@"DetailSegue"])
    {
       
        
        DetailedViewController *detailViewController = [segue destinationViewController];
    
        
        
        NSIndexPath *myIndexPath = [self.tableView indexPathForSelectedRow];
        
        NSUInteger selectedSection = myIndexPath.section;
        
       long row = [myIndexPath row];
        
     
       if(selectedSection == 0)
       {
            detailViewController.labelText = _cardPAN[row];
       }
       else
       {
           detailViewController.labelText = _accountNumber[row];
       }
    }
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
