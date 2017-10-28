using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Web.UI;

namespace BMICal
{
    public class BMIElements
    {
        [Required]
        public string Name { get; set; }

        [Required]
        public int Age { get; set; }

        [Required]
        public Gender Gender{ get; set; }

        [Required]
        public int Foot { get; set; }

        [Required]
        public int Inch { get; set; }

        [Required]
        public double Weight { get; set; }

        
        public double BMI { get; set; }

    }
   
    public enum Gender
    {
        Male=1,
        Female=0
    }

    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        
        protected void btnBMICalculator_Click(object sender, EventArgs e)
        {

            List<BMIElements> BMIList = new List<BMIElements>();
            try
            {
                int ConvFeet = Convert.ToInt32(txtFeet.Text);
                int ConvInch = Convert.ToInt32(txtInch.Text);

                double HeightInMts = (ConvFeet * 12 + ConvInch) * 0.0254;
                double ConvWeight = Convert.ToInt32(txtWeight.Text);
                double result = (ConvWeight / Math.Pow(HeightInMts, 2.0));
                if (result > 24 && result < 30)
                    lblResult.Text = result.ToString() + " OverWeight";
                if (result > 18 && result < 24)
                    lblResult.Text = result.ToString() + " Normal Weight";
                if (result > 30)
                    lblResult.Text = result.ToString() + " Obese";


                BMIElements BMIObject = new BMIElements()
                {
                    Name = txtName.Text,
                    Age= Convert.ToInt32(txtAge.Text),
                    Foot= ConvFeet,
                    Inch = ConvInch,
                    Weight= ConvWeight,
                    BMI= result
                };

                BMIList.Add(BMIObject);

                //foreach (var bmiElement in BMIList)
                //{
                //    lblPrevious.Text = " \n "+bmiElement.Foot.ToString() + " Feet" +
                //                       bmiElement.Inch.ToString() + " Inch" +
                //                       bmiElement.Weight.ToString() + " Kg" +
                //                       bmiElement.BMI;
                                       
                //}

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