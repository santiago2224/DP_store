
import React from "react";


export default (props) => {
  const {highPrice, mediumPrice, lowPrice} = props.food
  const {foods} = props
  const renderFoods = () =>{ 
    return foods.map(f => {
      return(
        <div>
          <p>Type: {f.name}</p>
          <p>description: {f.description}</p>
          <p>price: {f.price}</p>
          <a href={`/departments/${id}/foods/${f.id}/edit`}> Edit Form</a>
        </div>
      )
    })}
  return(
    <div>
      <h1>Departments Page</h1>
      <p>{highPrice}</p>
      <p>{mediumPrice}</p>
      <p>{lowPrice}</p>
      <hr />
      <a href={`/departments/${id}/foods/new`}> Set New Food</a>
      <div>{renderFoods()}</div>
    </div>
  )
}