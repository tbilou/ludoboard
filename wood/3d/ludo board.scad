module top(){
    difference()
    {
        translate([0,0,0])
            cube([8,29.3,2]);

        for (i =[1:3])
        {
            for (j=[1:11])
            {
                if (j==6 && i==2)
                {
                }
                else{
                    column = i*(8/3)-(8/3)/2;
                    row = j*(29.3/11)-(29.3/11)/2;
                    translate([column,row, 1.7])
                        cylinder( 1, 2/2, 2/2, 0, $fn=20);
                }
            }
        }
        translate([0,29.3/2-4,-1])
            cube([9.0,8.0,2]);
    }
}

module bottom(){
    difference()
    {
        translate([0,0,0])
            cube([8,29.3,2]);
        
        for (i =[1:3])
        {
            for (j=[1:11])
            {
                if (j==5 || j==6 || j==7)
                {
                }
                else
                {
                    column = i*(8/3)-(8/3)/2;
                    row = j*(29.3/11)-(29.3/11)/2;
                    translate([column,row,1.7])
                        cylinder( 1, 2/2, 2/2, 0, $fn=20);
                }
            }
        }

        translate([0,29.3/2-4,1])
            cube([8.0,8.0,2]);

    }

}



translate([29.3/2+4,29.3/2-4,0])
    rotate([0,0,90])
        bottom();

translate([0,0,3])
    top();