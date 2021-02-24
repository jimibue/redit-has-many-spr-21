import React from 'react'

const Sub = (props) => {
    const {topics, sub} = props
    const {name, id} = sub

    const renderTopics = () => {
        return topics.map(topic => {
            return(
             <div className='sub-container'>
                <h3>{topic.name}</h3>
                <p>{topic.body}</p>
                <p>sub_id: {topic.sub_id} should = {id}</p>
             </div>
            )
        })
    }
    return(
        <div className='subs-container'>
            <a href='/'>back to subs</a>
            <div className='sub-container'>
               <h1>{name} (sub id is{id})</h1>
               {renderTopics()}
            </div>
        </div>
    )
}

export default Sub