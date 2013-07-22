//
//  MainViewController.m
//  SpacePortsDemo
//
//  Created by Reybis Ceballos on 7/14/13.
//  Copyright (c) 2013 PrinSoft. All rights reserved.
//

#import "MainViewController.h"
#import "DetailViewController.h"
#import "Spaceport.h"

@interface MainViewController ()

@property (nonatomic, copy) NSArray *spaceShipNews;

@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self.navigationController.navigationBar setTintColor:[UIColor colorWithWhite:0.56f alpha:0.2f]];
    [self.navigationController.navigationBar setTitleTextAttributes:@{
                                           UITextAttributeTextColor: [UIColor colorWithWhite:0.96f alpha:1],
                                    UITextAttributeTextShadowColor : [UIColor colorWithWhite:0.0 alpha:0.5]
     }];
    
/* TODO: Uncomment this for test with a web service

    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(reloadData) name:@"tableReload" object:nil];
    
    NSURL *url = [NSURL URLWithString:@"http://linkea.do/reybisceballos/spaceports.json"];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    AFJSONRequestOperation *operation = [AFJSONRequestOperation JSONRequestOperationWithRequest:request success:^(NSURLRequest *request, NSHTTPURLResponse *response, id JSON) {
        NSMutableArray *temp = [[NSMutableArray alloc] init];
        for (id object in JSON[@"spaceports"]) {
            Spaceport *aSpacePort = [[Spaceport alloc] initWithTitle:object[@"title"] withDescription:object[@"description"] withImageAddress:object[@"imageAddress"] withOwner:object[@"owner"] withLatitude:(double)[object[@"latitude"] doubleValue] withLongitude:(double)[object[@"longitude"] doubleValue]];
            [temp addObject:aSpacePort];
        }
        _spaceShipNews = temp;
        [[NSNotificationCenter defaultCenter] postNotificationName:@"tableReload" object:nil];
    } failure:^(NSURLRequest *request, NSHTTPURLResponse *response, NSError *error, id JSON) {
        NSLog(@"%@",error.localizedDescription);
    }];
    
    [operation start];
*/
 
/* TODO: Uncomment this for test without a web service

    NSMutableArray *temp = [[NSMutableArray alloc] init];
    
    Spaceport *spacePortKennedySpace = [[Spaceport alloc] initWithTitle:@"Kennedy Space Center" withDescription:@"El Centro Espacial John F. Kennedy (KSC, por Kennedy Space Center) (En honor al ex-presidente John F. Kennedy) es un complejo de instalaciones de la NASA para el lanzamiento de vehículos espaciales en Cabo Cañaveral, Merritt Island, Florida. La zona está a medio camino entre Miami y Jacksonville. Tiene 55 km de largo y alrededor de 10 km de ancho, con una superficie total de 567 km². Alrededor de 17.000 personas trabajan en el lugar. Hay un centro para visitantes y paseos turísticos, siendo el KSC el mayor destino turístico de Florida. Ciertas zonas del lugar también sirve como un importante santuario de vida salvaje." withImageAddress:@"Kennedy" withOwner:@"NASA" withLatitude:(double)28.524058 withLongitude:(double)-80.65085];
    [temp addObject:spacePortKennedySpace];
    
    Spaceport *spacePortCapeCanaveral = [[Spaceport alloc] initWithTitle:@"Cape Canaveral" withDescription:@"Cabo Cañaveral es un famoso cabo situado en la costa este del estado de Florida al norte de la ciudad homónima por ser, desde el año 1950, el principal centro de las actividades espaciales de los Estados Unidos. Desde el punto de vista geográfico es un estrecho promontorio que se extiende sobre el océano Atlántico." withImageAddress:@"Cape_Canaveral" withOwner:@"NASA" withLatitude:(double)28.455556 withLongitude:(double)-80.527778];
    [temp addObject:spacePortCapeCanaveral];
    
    
    Spaceport *spacePortAlcantaraCenter = [[Spaceport alloc] initWithTitle:@"Alcântara Launch Center" withDescription:@"El centro de lanzamiento de Alcántara (Centro de Lançamento de Alcântara en portugués), situado en el municipio homónimo del estado de Maranhão, es una base espacial brasileña administrada por la fuerza aérea de Brasil junto con la Agencia Espacial Brasileña. Su ubicación próxima al ecuador (2°21 de latitud) le da una cierta ventaja para lanzar satélites. Es, junto con el Puerto espacial de Kourou (perteneciente a Francia), el único cosmódromo de América Latina." withImageAddress:@"Alcantara" withOwner:@"AEB" withLatitude:(double)-2.373056 withLongitude:(double)-44.39638978];
    [temp addObject:spacePortAlcantaraCenter];
    
    Spaceport *spacePortBaikonur = [[Spaceport alloc] initWithTitle:@"Baikonur" withDescription:@"El Cosmódromo de Baikonur (kazajo: Байқоңыр ғарыш айлағы, Bayqoñır ğarış aylağı; ruso: Космодром Байконур, Kosmodrom Baykonur), también llamado Tyuratam, es la mayor y más antigua instalación de lanzamiento espacial. Originariamente fue construido por la Rusia Soviética, bajo su control desde la caída de la URSS, aunque ubicado en Kazajistán. Está situado 200 km al este del mar de Aral, al norte de Syr Darya, cerca de la ciudad de Tyuratam, en la parte sur central del país." withImageAddress:@"Baikonur" withOwner:@"Roscosmos" withLatitude:(double)45.965 withLongitude:(double)63.305];
    [temp addObject:spacePortBaikonur];
    
    Spaceport *spacePortKapustinYar = [[Spaceport alloc] initWithTitle:@"Kapustin Yar" withDescription:@"Kapustin Yar (Ruso Капустин Яр; hoy Знаменск/Znamensk) es un base para el desarrollo y lanzamiento de misiles de varios tipos, situado en el Oblast de Astracan entre Volgogrado y Astracan en el pueblo de Známensk. Fue establecido el 13 de mayo de 1946, en un principio el material principal de investigación (materiales y científicos) eran de la Alemania Nazi. El primer cohete fue lanzado el 18 de octubre de 1947, 1 V-2 de 11 que fueron capturados. Numerosos lanzamientos para el ejército Ruso toman lugar ahí desde satélites a cohetes elevadores de prueba." withImageAddress:@"Kapustin_Yar" withOwner:@"Roscosmos" withLatitude:(double)48.586 withLongitude:(double)45.72];
    [temp addObject:spacePortKapustinYar];
    
    Spaceport *spacePortPlesetsk = [[Spaceport alloc] initWithTitle:@"Plesetsk" withDescription:@"El Cosmódromo de Plesetsk es un cosmódromo ruso, localizado alrededor de 800 km al norte de Moscú y al sur de Arjángelsk.En sus inicios, era un complejo de misiles intercontinentales. Su construcción se inició en 1957 y fue declarado operacional para los cohetes R-7 en diciembre de 1959. El pueblo de Plesetsk en el Óblast de Arjánguelsk tiene una estación de ferrocarril, esencial para el transporte de componentes de misiles. Mirny (en ruso \"pacífico\") es una ciudad construida para dar soporte a las instalaciones." withImageAddress:@"Plesetsk" withOwner:@"Roscosmos" withLatitude:(double)62.916667 withLongitude:(double)40.516667];
    [temp addObject:spacePortPlesetsk];

    _spaceShipNews = temp;
 */
    
}

/* TODO: For the purpose of use the app with the webservice, you need to uncomment this.
-(void)reloadData;
{
    [self.tableView reloadData];
}
*/

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return _spaceShipNews.count > 1? 1: 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return _spaceShipNews.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    UILabel *textLabel = (UILabel *)[cell viewWithTag:1000];
    UILabel *detailTextLabel = (UILabel *)[cell viewWithTag:1001];
    UIImageView *imageView = (UIImageView *)[cell viewWithTag:1002];

    // Configure the cell...
    textLabel.text = [_spaceShipNews[indexPath.row] title];
    detailTextLabel.text = [_spaceShipNews[indexPath.row] details];
    imageView.image = [UIImage imageNamed:[_spaceShipNews[indexPath.row] owner]];

    return cell;
}


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
}

-(UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section;
{
    return [UIView new];
}

#pragma mark - Segue Delegate

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender;
{
    if ([segue.identifier isEqualToString:@"showDetails"]) {
        Spaceport *currentSpaceShipNew = _spaceShipNews[[self.tableView indexPathForCell:sender].row];
        
        DetailViewController *dtViewController = [segue destinationViewController];
        dtViewController.title = currentSpaceShipNew.title;
        dtViewController.descriptionText = currentSpaceShipNew.details;
        dtViewController.imageAddress = currentSpaceShipNew.imageAddress;
        dtViewController.ownerAddress = currentSpaceShipNew.owner;
        dtViewController.coordinate = currentSpaceShipNew.location;
    }
}

@end
