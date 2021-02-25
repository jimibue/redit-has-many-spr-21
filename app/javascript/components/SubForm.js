import React from 'react'

const SubForm = (props) => {
    const { sub } = props
    const defaultName = sub.name ?  sub.name : ''
    const action = sub.id ? `/subs/${sub.id}` : '/subs'


    return(
        <div>
            <h1>{sub.id ? "Edit Form" : "New Form"}</h1>
            <form action={action} method='post'>
            {sub.id && <input type="hidden" name="_method" value="patch" />}
                <input defaultValue={defaultName} name='sub[name]'/>
                <button>{sub.id ? "update": "add"}</button>
            </form>
        </div>
    )
}

export default SubForm