import React from 'react'

const Sub = (props) => {
    const {topics, sub} = props
    const {name, id} = sub

    const renderTopics = () => {
        return topics.map(topic => {
            return(
             <div className='sub-container' style={{backgroundColor:"#fcfcfc"}}>
                <h3>{topic.name}</h3>
                <p>{topic.body}</p>
                <a href={`/subs/${topic.sub_id}/topics/${topic.id}`}>show</a>
             </div>
            )
        })
    }
    return(
        <div className='subs-container'>
            <h1>Sub Show Page Sub ID: {id} </h1>
            <a href='/'>back to subs</a>
            {/* GET	/subs/:sub_id/topics/new */}
            <a href={`/subs/${sub.id}/topics/new `}>new topic form</a>
            <div className='sub-container'>
               <h1>{name}</h1>
               {renderTopics()}
            </div>
        </div>
    )
}

export default Sub