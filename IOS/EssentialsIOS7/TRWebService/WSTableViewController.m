//
//  WSTableViewController.m
//  TRWebService
//
//  Created by Pedro Pena on 1/30/14.
//  Copyright (c) 2014 Pedo Peña. All rights reserved.
//

#import "WSTableViewController.h"

@interface WSTableViewController ()
{
    NSDictionary *flickrDictionary;
    NSMutableArray *cFRAIPArray;
}

@end

@implementation WSTableViewController

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

 
    //Inicializando variables de conexión para el webservice
    
   //NSURL *myURL = [NSURL URLWithString:@"http://api.flickr.com/services/rest/?method=flickr.test.echo&api_key=f4e6633bc2809e1035a3caedd44ed1cf&format=json&nojsoncallback=1&api_sig=7942cf880f6422187015d6e679029060"];
    
   
    
    NSURL *myURL = [NSURL URLWithString:@"http://api.worldweatheronline.com/free/v1/weather.ashx?q=London&format=json&num_of_days=5&key=csxa8bhtzrdu3pqsqe3spkh5"];
    
    NSURLRequest *myRequest = [NSURLRequest requestWithURL:myURL];
    
    NSURLConnection *myConnection = [NSURLConnection connectionWithRequest:myRequest delegate:self];
    
}
// $PJP$ método incluido para el proyecto de webservice (Recibió respuesta)?

-(void)connection: (NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *) response;
    
    int errorCode = httpResponse.statusCode;
    
    NSString *fileMIMEType = [[httpResponse MIMEType] lowercaseString];
    NSLog(@"response is %d, %@", errorCode, fileMIMEType);
}

// Recibió data??
-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    NSLog(@"data is %@", data);
    
    NSString *myString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    
    NSLog(@"string is %@", myString);
    
    NSError *e = nil;
    
    NSDictionary *flickeDictionary = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&e];
    
    flickrDictionary =[NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&e];
    
    
    NSLog(@"dictionary is %@",flickeDictionary);
    
    //test
    if ([flickrDictionary isKindOfClass:[NSDictionary class]]) {
        id object = [flickrDictionary valueForKey:@"data"];
        
        if ([object isKindOfClass:[NSDictionary class]])
        {
            id anotherObject = [object valueForKey:@"current_condition"];
            
            if([anotherObject isKindOfClass:[NSArray class]])
            {
                id firstArrayObject = [anotherObject objectAtIndex:0];
                if([firstArrayObject isKindOfClass:[NSDictionary class]])
                {
                    NSLog(@"Today is %@",[[[firstArrayObject objectForKey:@"weatherDesc"]objectAtIndex:0]objectForKey:@"value"]);
        
                    
                          
                }
            }
        }
        
//Init array
        cFRAIPArray = [[NSMutableArray alloc] initWithCapacity:6];
        
       // NSLog(@"The comprimido way is %@",[[[[[[flickrDictionary valueForKey:@"data"] objectForKey:@"current_condition"]objectAtIndex:0]objectForKey:@"weatherDesc"]objectAtIndex:0]objectForKey:@"value"]);
   
        
//DAY 1
        NSString *today = [[[[[[flickrDictionary valueForKey:@"data"] objectForKey:@"current_condition"]objectAtIndex:0]objectForKey:@"weatherDesc"]objectAtIndex:0]objectForKey:@"value"];
        
        [cFRAIPArray addObject:today];
//DAY 2
        NSString *tomorrow = [[[[[[flickrDictionary valueForKey:@"data"] objectForKey:@"weather"]objectAtIndex:0]objectForKey:@"weatherDesc"]objectAtIndex:0]objectForKey:@"value"];
        
        NSLog(@"tomorrow will be %@", tomorrow);
        [cFRAIPArray addObject:tomorrow];
//DAY 3
        NSString *afterTomorrow = [[[[[[flickrDictionary valueForKey:@"data"] objectForKey:@"weather"]objectAtIndex:1]objectForKey:@"weatherDesc"]objectAtIndex:0]objectForKey:@"value"];
        NSLog(@"after tomorrow will be %@", afterTomorrow);
        [cFRAIPArray addObject:afterTomorrow];
//DAY 4
        NSString *next = [[[[[[flickrDictionary valueForKey:@"data"] objectForKey:@"weather"]objectAtIndex:2]objectForKey:@"weatherDesc"]objectAtIndex:0]objectForKey:@"value"];
        NSLog(@"next will be %@", next);
        [cFRAIPArray addObject:next];
//DAY 5
        NSString *afterThat = [[[[[[flickrDictionary valueForKey:@"data"] objectForKey:@"weather"]objectAtIndex:3]objectForKey:@"weatherDesc"]objectAtIndex:0]objectForKey:@"value"];
        NSLog(@"after that will be %@", afterThat);
        [cFRAIPArray addObject:afterThat];


    }
    
    
    
}

//Falló???

-(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    // inform user
    
    NSLog(@"Connection failed! Error - %@ %@",
          [error localizedDescription],
          [[error userInfo] objectForKey:NSURLErrorFailingURLStringErrorKey]);
           
           
}



-(void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    //do something with data
 
    //receivedData is declared as a method instance elsewhere
    
    
    NSLog(@"Suceeded!");

    [self.tableView reloadData];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return cFRAIPArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"testcell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    cell.textLabel.text = [cFRAIPArray objectAtIndex:indexPath.row];
    
    
    NSLog(@"llegie al metodo");
    
    return cell;
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
