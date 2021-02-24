import React from 'react'

export default (props) => {
  // these are the same 
  // const subs = props.sub
  const {subs} = props
  const renderSubs = () => {
   return subs.map(sub => {
       return(
           <div>
               <h1>{sub.name}</h1>
           </div>
       )
   })
  }
  return (
      <>
        <h1>Subs Here</h1>
        {renderSubs()}
      </>
  )
}