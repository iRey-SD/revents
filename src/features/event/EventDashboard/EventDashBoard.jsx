import React, { Component } from 'react'
import { Grid, Button } from 'semantic-ui-react'; 
import EvintList from '../EventList/EvintList';
import EventForm from '../EventForm/EventForm';

const eventsFromDashBoard = [
  {
    id: '1',
    title: 'Jeddah Season',
    date: '2018-03-27T11:00:00+00:00',
    category: 'culture',
    description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sollicitudin ligula eu leo tincidunt, quis scelerisque magna dapibus. Sed eget ipsum vel arcu vehicula ullamcorper.',
    city: 'Jeddah , SA',
    venue: "Meeza International Tourism Services Co. Ltd، Jeddah",
    hostedBy: 'Rawan',
    hostPhotoURL: 'https://www.okaz.com.sa/uploads/images/2020/03/19/1529659.jpg',
    attendees: [
      {
        id: 'a',
        name: 'Bob',
        photoURL: 'https://randomuser.me/api/portraits/men/20.jpg'
      },
      {
        id: 'b',
        name: 'Tom',
        photoURL: 'https://randomuser.me/api/portraits/men/22.jpg'
      }
    ]
  },
  {
    id: '2',
    title: 'Trip to Punch and Judy Pub',
    date: '2018-03-28T14:00:00+00:00',
    category: 'drinks',
    description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sollicitudin ligula eu leo tincidunt, quis scelerisque magna dapibus. Sed eget ipsum vel arcu vehicula ullamcorper.',
    city: 'London, UK',
    venue: 'Punch & Judy, Henrietta Street, London, UK',
    hostedBy: 'Tom',
    hostPhotoURL: 'https://randomuser.me/api/portraits/men/22.jpg',
    attendees: [
      {
        id: 'b',
        name: 'Tom',
        photoURL: 'https://randomuser.me/api/portraits/men/22.jpg'
      },
      {
        id: 'a',
        name: 'Bob',
        photoURL: 'https://randomuser.me/api/portraits/men/20.jpg'
      }
    ]
  }
]



class EventDashBoard extends Component {
  state = {

  events : eventsFromDashBoard ,
  isOpen : false  
  }

  HandelIsOpenToggle = () => 
  {
  this.setState(({isOpen})=>({isOpen : ! isOpen}))
  }
    render() {
      const {events , isOpen} = this.state ;
        return (
            <Grid>

                <Grid.Column width={10}>
                    <EvintList events = {events}/>
                </Grid.Column>
                <Grid.Column width={6}>
                    <Button onClick = {this.HandelIsOpenToggle} positive content = 'Create Event'/>
                    {isOpen && <EventForm cancleFormOpen = {this.HandelIsOpenToggle} /> }
                    
                </Grid.Column>
            </Grid>
        )
    }
}
export default EventDashBoard ;
