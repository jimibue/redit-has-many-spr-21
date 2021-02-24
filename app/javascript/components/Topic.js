import React from 'react'

const Topic = (props) => {
    const {name, body, sub_id} = props.topic
    return(
       <>
         <h1>{name}</h1>
         <p>{body}</p>
         <a href={`/subs/${sub_id}`}>back to sub show</a>
       </>
    )
}

export default Topic