import React from "react";


const Departments = (props) => {
  const {department} = props

  const renderDepartments = () => {
    return department.map( department => {
      return(
        <div>
          <h2>{department.name}</h2>
          <a href={`/departments/${department.id}`}>Show Department</a>
        </div>
      )
    }
      
    )
  }
  return(
    <div>
      <h1>Departments Page</h1>
      <div>{renderDepartments()}</div>
      <a href="/allFoods">View All Foods</a>
    </div>
  )
}



export default Departments;







