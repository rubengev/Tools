using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SlatCalculator : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnGetSlatCount_Click(object sender, EventArgs e)
    {
        int stepCount;
        decimal baseWidth;
        decimal SlatWidth;
        decimal spacer;
        decimal firstStep;
        decimal steps;

        decimal.TryParse(txtBaseWidth.Text, out baseWidth);
        decimal.TryParse(txtSlatWidth.Text, out SlatWidth);

        stepCount = Convert.ToInt32(Math.Truncate(baseWidth / SlatWidth));

        if (stepCount * SlatWidth >= baseWidth)
        {
            stepCount--;
        }

        txtSlatCount.Text = stepCount.ToString();

        spacer = Math.Round((baseWidth - stepCount * SlatWidth) / (stepCount + 1), 2);
        lblSpacerWidth.Text = spacer.ToString();

        firstStep = spacer + (SlatWidth / 2);
        lblFirstStep.Text = firstStep.ToString();

        steps = spacer + SlatWidth;
        lblOtherSteps.Text = steps.ToString();
    }

    protected void btnGo_Click(object sender, EventArgs e)
    {
        decimal baseWidth;
        decimal SlatWidth;
        decimal spacer;
        decimal firstStep;
        decimal steps;
        int stepCount;

        decimal.TryParse(txtBaseWidth.Text, out baseWidth);
        decimal.TryParse(txtSlatWidth.Text, out SlatWidth);
        int.TryParse(txtSlatCount.Text, out stepCount);

        spacer = Math.Round((baseWidth - stepCount * SlatWidth) / (stepCount + 1), 2);
        lblSpacerWidth.Text = spacer.ToString();

        firstStep = spacer + (SlatWidth / 2);
        lblFirstStep.Text = firstStep.ToString();

        steps = spacer + SlatWidth;
        lblOtherSteps.Text = steps.ToString();
    }

    private double ConvertToMm(double val)
    {
        return val/25.4;
    }
}