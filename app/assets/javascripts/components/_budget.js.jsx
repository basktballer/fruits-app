class Budget extends React.Component {
  
  constructor(props) {
    super(props);
    this.state = {
      budgets: []
    };
  }

  componentDidMount(){
    fetch('/api/v1/budgets.json')
      .then((response) => {return response.json()})
      .then((data) => {this.setState({ budgets: data }) });
  }

  render() {

    var budgets = this.state.budgets.map((budget) => {
      return(
       <div key={budget.id}>
        <h1>{budget.name}</h1>
       </div>
      )
     })

    return (
      <div>
        <h1>Budgets are great!</h1>
        {budgets}
      </div>
    )
  }
}