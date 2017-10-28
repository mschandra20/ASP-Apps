using System;
using System.Web.UI;

namespace BMICal
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        
        protected void btnBMICalculator_Click(object sender, EventArgs e)
        {
            try
            {
                
                double HeightInMts = ((Convert.ToInt32(txtFeet.Text)) * 12 + (Convert.ToInt32(txtInch.Text))) * 0.0254;
                double Weight = Convert.ToInt32(txtWeight.Text);
                double result = (Weight / Math.Pow(HeightInMts, 2.0));
                if (result > 24 && result < 30)
                    lblResult.Text = result.ToString() + " OverWeight";
                if (result > 18 && result < 24)
                    lblResult.Text = result.ToString() + " Normal Weight";
                if (result > 30)
                    lblResult.Text = result.ToString() + " Obese";
            }
            catch (Exception ex)
            {
                lblResult.Text= ex.Message;
            }
            finally
            {

            }
        }
    }
}