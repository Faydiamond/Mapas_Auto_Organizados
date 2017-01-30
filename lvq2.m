%%
%entrenamiento lvq2
%declaro  un vector
X = [10 2; 8 11;10 11;14 5;6 15;8 9;1 7];
%transpongo el vector:
p = X';
%creo  un vector:
Tc = [1 1 2 2 3 3 1];
%aplico el algoritmo:
T=ind2vec(Tc);
R = newlvq(minmax(p),3,[1/3 1/3 1/3]);
R.trainParam.epochs = 100;
objetivo=full(T)
%entreno la red:
R.trainFcn = 'trainr';
R.adaptFcn = 'trains';
R.inputWeights{1,1}.learnFcn = 'learnlv2';
R.layerWeights{1,1}.learnFcn = 'learnlv2';
R = train(R,p,T);
%%
%%
%TALLER
%FABIAN  RENE  SOCHA  BARB�N
%EDGAR  ANDRES  ABELLA  MORA
%ASIGNATURA: INTELIGENCIA  ARTIFICIAL
%PRESENTADO AL  PROFESOR:Ms. Ingeniero  Jairo E. M�rquez D.
%NOVIEMBRE 2015
%INGENIER�A  DE  SISTEMAS
%UNIVERSIDAD  DE  CUNDINAMARCA  CH�A
%%