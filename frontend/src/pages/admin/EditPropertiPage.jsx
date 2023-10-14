import React, {useEffect} from 'react'
import Layout from '../Layout.jsx'
import EditProperti from '../../components/admin/crud-properti/EditProperti.jsx'
import { useDispatch, useSelector } from 'react-redux'
import { useNavigate } from 'react-router-dom'
import { getMe } from '../../features/authSlice'


const EditPropertiPage = () => {
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
      <EditProperti />
    </Layout>
  )
}

export default EditPropertiPage