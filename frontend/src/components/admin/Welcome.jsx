import React from 'react'
import { useSelector} from 'react-redux'


const Welcome = () => {
  const {user} = useSelector((state) => state.auth)
  return (
    <div className='ml-2'>
        <h1 className="text-5xl font-bold">Dashboard</h1>
        <p className="py-6 text-3xl">Welcome Back <span className='font-medium'>{user && user.role}</span> - <span className='font-medium'>{user && user.name}</span> </p>
    </div>
  )
}

export default Welcome