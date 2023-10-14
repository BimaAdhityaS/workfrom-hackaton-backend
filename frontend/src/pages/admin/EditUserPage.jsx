import React, {useEffect} from 'react'
import Layout from '../Layout.jsx'
import EditUser from '../../components/admin/crud-user/EditUser.jsx'
import { useDispatch, useSelector } from 'react-redux'
import { useNavigate } from 'react-router-dom'
import { getMe } from '../../features/authSlice'


const EditUserPage = () => {
    const dispatch = useDispatch()
  const navigate = useNavigate()
  const { isError } = useSelector(state => state.auth)

  useEffect(() => {
    dispatch(getMe())
  }, [dispatch])

  useEffect(() => {
    if (isError) {
      navigate('/login')
    }
  }, [isError, navigate])
  
    return (
        <Layout>
            <EditUser />
        </Layout>
    )
}

export default EditUserPage