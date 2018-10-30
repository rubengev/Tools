using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PoligonMiterCalculator : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {
        Title = "Poligon Miter Calculator";
    }

    protected void btnGo_Click(object sender, EventArgs e)
    {
        int sidesCount;
        double angle;
        double radAngle;
        double splay;
        double radSplay;

        double splayc;

        int.TryParse(txtSides.Text, out sidesCount);
        double.TryParse(txtSplayAngle.Text, out splay);

        angle = 360 / (2 * sidesCount);
        radAngle = ToRadians(angle);
        radSplay = ToRadians(splay);



        double sinRad = Math.Sin(ToRadians(angle));
        double tan = Math.Tan(ToRadians(splay));
        double temp = Math.Atan(tan*sinRad);
        double miterAngle = Math.Round(ToDegrees(temp),2);

        //splayc = Math.Atan(Math.Tan(30) / Math.Cos(30));
        //splayc = Math.Atan(Math.Tan(angle) * Math.Cos(Math.Atan(Math.Tan(splayx / 57.2958)) / Math.Cos(angle))));

        //double sawAngle = Math.Atan(Math.Tan(angle) * Math.Cos(splayc));
        //double miterAngle = Math.Atan(Math.Tan(angle) * Math.Sin(splayc));

        lblFlatMiterAngle.Text = angle.ToString();
        lblFlatMiterRadian.Text = Math.Round(radAngle,5).ToString();
        lblLR.Text = Math.Round((Math.Tan(radAngle) * 2),5).ToString();

        double am = ToDegrees(Math.Atan(Math.Tan(radAngle) * Math.Sin(radSplay)));
        lblMiterAngle.Text = Math.Round(am,2).ToString();

        double ast = ToDegrees(Math.Atan(Math.Tan(radAngle) * Math.Cos(Math.Atan(Math.Tan(radSplay) / Math.Cos(radAngle)))));
        lblSawTiltAngle.Text = Math.Round(ast, 2).ToString();


    }

    double ToDegrees(double radian)
    {
        return radian * (180 / Math.PI);
    }
    double ToRadians(double degree)
    {
        return degree / (180 / Math.PI);
    }
}