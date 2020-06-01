import React, {Component , Fragment} from 'react';
import EventDashBoard from '../../features/event/EventDashboard/EventDashBoard';
import NavBar from '../../features/Nav/NavBar/NavBar';
import { Container } from 'semantic-ui-react';

class App extends Component {
  
  render () {
    return (

      <dFragment>

<NavBar/>
     <Container className = "main">

<EventDashBoard></EventDashBoard>
      </Container>

      </dFragment>
     
      

    
 
    );
  }
 
}

export default App;