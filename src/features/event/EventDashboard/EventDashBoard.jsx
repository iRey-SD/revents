import React, { Component } from 'react'
import { Grid } from 'semantic-ui-react'; 
import EvintList from '../EventList/EvintList';
class EventDashBoard extends Component {
    render() {
        return (
            <Grid>

                <Grid.Column width={10}>
                    <EvintList/>
                </Grid.Column>
                <Grid.Column width={6}>
                    <h2>Right Colmn</h2>
                </Grid.Column>
            
            </Grid>
        )
    }
}
export default EventDashBoard ;
