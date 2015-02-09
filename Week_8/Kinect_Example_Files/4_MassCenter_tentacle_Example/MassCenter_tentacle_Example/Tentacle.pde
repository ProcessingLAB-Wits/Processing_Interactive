class Tentacle
{
  
  public float x;
  public float y;
  public float vx;
  public float vy;
  private TentaclePoint[] pts;
  public float life;
  public boolean dir = false;
  public boolean hop = true;
  public float thick = 6;

  
  Tentacle(float x, float y, float vx, float vy, float life)
  {
    init(x, y, vx, vy, life);
  }
  
  private void init(float x, float y, float vx, float vy, float life)
  {
    this.x = x;
    this.y = y;
    this.vx = vx;
    this.vy = vy;
    this.life = life;
    pts = new TentaclePoint[0];
    dir = true;
  }
  
  public void update(float nx, float ny, float thick)
  {
    if (dir) pts = (TentaclePoint[])append(pts, new TentaclePoint(x, y, 0, 0));
    else pts = (TentaclePoint[])shorten(pts);
    
    move();
    int nPts = pts.length;
    for(int i = nPts - 1; i >=0 ; i--)
    {
      float r = (float)i / nPts;
      strokeWeight(pow((1 - r) * thick, 2) * (100 - abs(life)) / 100);
      pts[i].move(nx,ny, r, hop);
      stroke(0);
      line(pts[min(i + 1, nPts - 1)].x, pts[min(i + 1, nPts - 1)].y, pts[i].x, pts[i].y);
      fill(0);
      noStroke();
    }
    
    life -= 0.3;
    if (life <= 0 && dir) dir = false;
    else if (!dir && pts.length <= 1) init(pts[0].x, pts[0].y, pts[0].vx, pts[0].vy, 45.0 + random(25.0));
  }
  
  private void move()
  {
    vx += random(-1.0, 1.0) + (0)/ 800.0;
   vy += random(-1.0, 1.0) + (0 - sth/2.0) / 800.0;
    vx *= 0.95;
    vy *= 0.95;
    x += vx;
    y += vy;
    //println(vx);
  }
  
}
class TentaclePoint
{
  
  public float x;
  public float y;
  public float vx;
  public float vy;
  
  
  TentaclePoint(float x, float y, float vx, float vy)
  {
    this.x = x;
    this.y = y;
    this.vx = vx;
    this.vy = vy;
  }
  
  public void move(float tx, float ty, float r, boolean hop)
  {
    vx += (hop ? r : 1 - r) * (tx - x) / 1500;
    vy += (hop ? r : 1 - r) * (ty - y) / 1500;
    vx *= 0.95;
    vy *= 0.95;
    x += vx;
    y += vy;
  }
}


