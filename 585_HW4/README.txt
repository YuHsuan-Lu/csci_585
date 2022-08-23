Q1 LinearRegression
class =
     -0.1084 * CRIM +
      0.0458 * ZN +
      2.7187 * CHAS=1 +
    -17.376  * NOX +
      3.8016 * RM +
     -1.4927 * DIS +
      0.2996 * RAD +
     -0.0118 * TAX +
     -0.9465 * PTRATIO +
      0.0093 * B +
     -0.5226 * LSTAT +
     36.3411

There are 12 terms in the linear regression equation, including 1 constant term. 
In other word, only 11 attributes in the table would affect the value of MEDV(class).
The weight before each term indicates how much they can effect MEDV, 
the term with positive weight will increase MEDV 
while the ones with negitive weight will decrease it.
(INDUS,AGE didn't show up in the linear regression equation,
their value has no effect over MEDV)


Q2 LinearRegression
num_rings=
    -0.8249 * sex = I +
    0.0577 * sex = M +
    -0.4583 * length +
    11.0751 * diameter +
    10.7615 * height +
    8.9754 * whole_weight +
    -19.7869 * shucked_weight +
    -10.5818 * viscera_weight +
    8.7418 * shell_weight +
    3.8946


Q3 LinearRegression
num_rings=
    - 11.933 * length
    + 25.766 * diameter
    + 20.358 * height
    + 2.836