using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using TrackerLibrary;

namespace TrackerUI
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);

            //Initialize the database connection
            GlobalConfig.InitializeConnections(DatabaseType.Sql);

            // TESTING PURPOSE - TO BE COMMENTED/DELETED LATER
            //Application.Run(new CreatePrizeForm());
            //Application.Run(new CreateTeamForm());

            Application.Run(new TournamentDashboardForm());

            //Application.Run(new TournamentDashboardForm());     // Set Starting form here
        }
    }
}
