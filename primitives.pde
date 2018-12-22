// **************************** PRIMITIVE FROM POINT, VECTOR, RADIUS PARAMETER
void caplet(PVector A, float a, PVector B, float b) { // cone section surface that is tangent to Sphere(A,a) and to Sphere(B,b)
  PVector I = U(A,B);
  float d = d(A,B), s=b/a;
  float x=(a-b)*a/d, y = sqrt(sq(a)-sq(x));
  PVector PA = P(A,x,I), PB = P(B,s*x,I); 
  coneSection(PA,PB,y,y*s);
  }  

void coneSection(PVector P, PVector Q, float p, float q) { // surface
  PVector V = PVector.sub(Q, P);
  PVector I = U(Normal(V));
  PVector J = U(N(I,V));
  collar(P,V,I,J,p,q);
  }

void collar(PVector P, PVector V, PVector I, PVector J, float r, float rd) {
  float da = TWO_PI/36;
  beginShape(QUAD_STRIP);
    for(float a=0; a<=TWO_PI+da; a+=da) {v(P(P,r*cos(a),I,r*sin(a),J,0,V)); v(P(P,rd*cos(a),I,rd*sin(a),J,1,V));}
  endShape();
  }

PVector U(PVector A, PVector B) {
 return PVector.sub(B,A).normalize(null);
}

PVector U(PVector V) {
 return V.normalize(null); 
}

float d(PVector A, PVector B) {
 return PVector.sub(B,A).mag(); 
}

PVector P(PVector P, float s, PVector V) {
 return PVector.add(P, PVector.mult(V, s)); 
}

PVector P(PVector O, float x, PVector I, float y, PVector J, float z, PVector K) {
 return   (PVector.add(O, PVector.mult(I,x))).add(PVector.mult(J, y)).add(PVector.mult(K, z));
}

void v(PVector P) {
 vertex(P.x, -P.y, P.z); 
}

PVector Normal(PVector V) {     
  if(abs(V.z)<=min(abs(V.x),abs(V.y))) return new PVector(-V.y,V.x,0); 
  if(abs(V.x)<=min(abs(V.z),abs(V.y))) return new PVector(0,-V.z,V.y);
  return new PVector(V.z,0,-V.x);
  }
  
PVector N(PVector U, PVector V) {
  return PVector.cross(U,V, null); 
}