using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TrackerLibrary
{
    public class TeamModel
    {
        /// <summary>
        /// Represents the team members of the team
        /// </summary>
        // prop and Tab Twice => public int MyProperty { get; set; }
        public List<PersonModel> TeamMembers { get; set; } = new List<PersonModel>();   // initializing this way is a new feature from C#6.0. Instead,
        /* public TeamModel(){
                TeamMembers = new List<Person>();               // used to be this way
            }*/

        /// <summary>
        /// Represents the name of the team.
        /// </summary>
        public string TeamName { get; set; }
    }
}
