//Conor Nevin C15501367
Table table;
void setup()
{
  table = new Table();
  table.addColumn("column");
  table.addColumn("name");
  table.addColumn("description");
  TableRow newRow = table.addRow();
 
  
  saveTable(table, "data/new.csv");
  
  size(800,800);
  cellWidth = width/ (float)colCount;
  cellHeight = height/ (float)rowCount;
}
int[] Hab = {1,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,1,0,0,0,1,0,0,0,0,0,0,0};
String[] DisplayName = {"Sol","Rigel Kentaurus B,Barnard's Star","Gl 406","Lalande 21185","Sirius","UV Ceti A","Gl 729","18 Epsilon Eridani","Gl 905","Gl 447","Lacaille 9352","EZ Aquarii","Procyon","Gl 725 B","61 Cygni A","GX Andromedae","Epsilon Indi","Luyten's Star","Kapteyn's Star","Lacaille 8760","DO Cephei","V577 Monocerotis A","GJ 1061","FL Virginis A","Gl 563.2B","BD-12o4523","Gl 1,Van Maanen's Star","Hip 15689","Gl 674","Gl 687","Gl 83.1","NN 3522","Innes' Star","NN 3622","Gl 440","Hip 114110"};
float[] distance = {0,1.3,1.8,2.4,2.5,2.6,2.6,3,3.2,3.2,3.3,3.3,3.4,3.5,3.5,3.5,3.6,3.6,3.8,3.9,3.9,4,4.1,4.3,4.3,4.3,4.3,4.4,4.4,4.4,4.5,4.5,4.5,4.5,4.5,4.5,4.6,4.6};
float[] Xg= {0,-0.9,0.9,-1.2,-0.1,-1.9,0.1,0.6,-0.6,2.8,-1.7,0.1,1.4,-1.9,3.2,3.4,3,-1,-2,-3,0.2,3.9,-2.2,-2.5,-1.3,-1.6,0.2,-0.3,2,-0.9,-1.3,3.8,1.6,-2.4,-4.3,-3.4,-4.1,1.7};
float[] Yg = {0,-0.9,0.9,-1.2,-0.1,-1.9,0.1,0.6,-0.6,2.8,-1.7,0.1,1.4,-1.9,3.2,3.4,3,-1,-2,-3,0.2,3.9,-2.2,-2.5,-1.3,-1.6,0.2,-0.3,2,-0.9,-1.3,3.8,1.6,-2.4,-4.3,-3.4,-4.1,1.7};
float[] Zg = {0,0,0.4,2,2.3,-0.4,-2.5,-0.5,-2.4,-0.9,2.9,-3,-2.8,0.8,1.4,-0.4,-1.1,-2.7,0.7,-2.3,-2.8,0,-0.4,-3.4,4.1,2.1,1.7,-4.2,-3.7,-3.5,-0.5,2.4,-3.2,2.4,-0.2,3,-0.2,-4.1};
float[] AbsMag = {4.85,5.69237068,13.24790128,16.55743932,10.44864499,1.464398907,15.47291438,13.09479628,6.192055687,14.78568497,13.50256408,9.7536535,15.00395131,2.661298621,11.9802587,7.500392855,10.31788307,6.892656352,11.95192438,10.88491382,8.688775957,13.28552681,13.05704817,14.86677961,14.86931108,13.91755585,11.93080683,10.34230436,14.15965094,13.94442971,11.0863535,10.90048702,14.02930041,12.64124009,15.65957593,17.32196137,13.17628628,13.91749009};
int rowCount = 10; //rows 
int colCount = 10; //cols

float cellWidth;
float cellHeight;

boolean[][] board = new boolean[rowCount][colCount];



void draw()
{
  stroke(128);
 fill(0, 255, 0);
 for(int i =0; i< rowCount; i++)
 {
   for(int j = 0; j< colCount; j++)
   {
     if(board[i][j])
     {
        fill(0,255,0);
     }
     else
     {
       fill(0);
     }
     rect(j * cellWidth, i* cellHeight, cellWidth, cellHeight);
   }
   
   
 }
 
 int i;
  for(i = 0; i<37;i++)
  {
   fill(0,255,0);//drawing stars
  }
}