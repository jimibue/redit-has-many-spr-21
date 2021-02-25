import React from 'react'
import axios from 'axios'

export default (props) => {
  // these are the same 
  // const subs = props.sub
  const {subs} = props

  const deleteSub = async (id) => {
     let res = await axios.delete(`/subs/${id}`)
     console.log(res)
  }
  const renderSubs = () => {
   return subs.map(sub => {
       return(
           <div className='sub-container'>
               <h1>{sub.name}</h1>
               <a href={`/subs/${sub.id}`}>show</a>
               <a href={`/subs/${sub.id}/edit`}>Update</a>
               {/* Don't worry about for now planting a seed */}
               <div onClick={()=> deleteSub(sub.id)}>delete</div>
           </div>
       )
   })
  }
  return (
      <>
        <h1>Subs Here</h1>
        <a href={`/subs/new`}>new</a>
        <div className='subs-container'>
        {renderSubs()}
        </div>
      </>
  )
}