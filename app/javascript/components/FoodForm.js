import React from "react";
import { PROPS_ATTR } from "react_ujs";

 
export default (props) => {
  const { department, food, errors} = props 
  const defaultFood = food.name ? food.name : ""
  const defaultDescription = food.description ? food.description : ""
  const defaultPrice = food.price ? food.price : ""
  const actionURL = food.id ? `/departments/${food.id}/foods/${food.id}` : `/departments/${food.id}/foods`

  const renderErrors = () => {
    return errors.map(e =>{
      return(
         <p>Department Must Exist</p>)
      })
  }

  return(
    <div>
      <h1>{food.id ? "Edit" : "New"}</h1>
      {errors && renderErrors()}
      <form action={actionURL} method="post">
        {food.id && <input type="hidden" name="_method" method="patch" />}

        <p>Food Name</p>
        <input defaultValue={defaultFood} name="food[name]" />


        <p>Description</p>
        <input defaultValue={defaultDescription} name="food[description]" />

        <p>Price</p>
        <input defaultValue={defaultPrice} name="food[price]" />

        <button type="input">{food.id ? "Update" : "Create"}</button>
      </form>
    </div>
  )
}