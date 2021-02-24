import React from 'react'

export default (props) => {
  // these are the same 
  // const subs = props.sub
  const {subs} = props
  const renderSubs = () => {
   return subs.map(sub => {
       return(
           <div className='sub-container'>
               <h1>{sub.name}</h1>
               <a href={`/subs/${sub.id}`}>show</a>
           </div>
       )
   })
  }
  return (
      <>
        <h1>Subs Here</h1>
        <div className='subs-container'>
        {renderSubs()}
        </div>
      </>
  )
}