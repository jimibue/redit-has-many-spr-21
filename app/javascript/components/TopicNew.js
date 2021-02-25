import React from 'react'
// POST	/subs/:sub_id/topics
const TopicNew = (props) => {
    const { sub } = props
    return (
        <div style={styles.container}>
            <h1>New Topic Form </h1>
            <form action={`/subs/${sub.id}/topics`} method='post'>
                <p>name</p>
                <input name='topic[name]' style={styles.input} />
                <p>body</p>
                <input name='topic[body]' style={styles.input} />
                <button type='submit'>add</button>
            </form>
        </div>
    )
}

const styles = {
    container: {
        backgroundColor:'#fcfcf9', 
        margin:'20px',
        padding:'20px',
        border:'1px solid black'
    },
    input: {
        height:'40px'
    }
}

export default TopicNew