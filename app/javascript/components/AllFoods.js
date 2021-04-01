import React from "react"


const allFoods = (props) => {
  const {foods} = props

  const renderFoods = () => {
    return foods.map( food => {
      return(
        <div>
          <h2>{food.name}</h2>
        </div>
      )
    })
  }
  return(
    <div>
      <h1>All Foods Page</h1>
      <div>{renderFoods()}</div>
    </div>
  )
}

export default allFoods;