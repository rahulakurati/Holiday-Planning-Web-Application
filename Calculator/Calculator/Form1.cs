using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Calculator
{
    public partial class Form1 : Form
    {
        double sum = 0;
        int fsum = 0;

        double diff = 0;
        int fdiff = 0;

        double mul = 0;
        int fmul = 0;

        double div = 0;
        int fdiv = 0;

        double perc = 0;
        int fperc = 0;
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void numClick(object sender, EventArgs e)
        {
            if(txtScreen.Text=="")
                txtScreen.Text = (sender as Button).Text.ToString();
            else
                txtScreen.Text += (sender as Button).Text.ToString();
        }

        //function for summation
        private void button15_Click(object sender, EventArgs e)
        {
            if(txtScreen.Text!="")
            {
                sum = Convert.ToDouble(txtScreen.Text);
                txtScreen.Text = "";
                fsum = 1;
            }
        }

        //function for equals to
        private void button16_Click(object sender, EventArgs e)
        {
            if(txtScreen.Text!="")
            {
                //if summation
                if(fsum>0)
                {
                    sum = sum + Convert.ToDouble(txtScreen.Text);
                    txtScreen.Text = sum.ToString();
                    fsum = 0;
                }
                //if substraction
                if(fdiff>0)
                {
                    diff = diff - Convert.ToDouble(txtScreen.Text);
                    txtScreen.Text = diff.ToString();
                    fdiff = 0;
                }
                //if multiplication
                if (fmul > 0)
                {
                    mul = mul * Convert.ToDouble(txtScreen.Text);
                    txtScreen.Text = mul.ToString();
                    fmul = 0;
                }
                //if division
                if (fdiv > 0)
                {
                    div = div / Convert.ToDouble(txtScreen.Text);
                    txtScreen.Text = div.ToString();
                    fdiff = 0;
                }
                //if percentile
                if (fperc > 0)
                {
                    perc = perc % Convert.ToDouble(txtScreen.Text);
                    txtScreen.Text = perc.ToString();
                    fperc = 0;
                }
            }
        }

        //function for substraction
        private void button13_Click(object sender, EventArgs e)
        {
            if (txtScreen.Text != "")
            {
                diff = Convert.ToDouble(txtScreen.Text);
                txtScreen.Text = "";
                fdiff = 1;
            }
        }

        //function for multiplication
        private void button12_Click(object sender, EventArgs e)
        {
            if(txtScreen.Text!="")
            {
                mul = Convert.ToDouble(txtScreen.Text);
                txtScreen.Text = "";
                fmul = 1;
            }
        }

        //function for division
        private void button14_Click(object sender, EventArgs e)
        {
            if (txtScreen.Text != "")
            {
                div = Convert.ToDouble(txtScreen.Text);
                txtScreen.Text = "";
                fdiv = 1;
            }
        }

        private void button18_Click(object sender, EventArgs e)
        {
            txtScreen.Text = "";
        }

        //for percentile
        private void button17_Click(object sender, EventArgs e)
        {
            if (txtScreen.Text != "")
            {
                perc = Convert.ToDouble(txtScreen.Text);
                txtScreen.Text = "";
                fperc = 1;
            }
        }
    }
}
