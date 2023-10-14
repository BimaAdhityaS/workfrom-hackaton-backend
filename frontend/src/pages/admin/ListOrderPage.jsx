import React, {useEffect} from 'react'
import Layout from '../Layout.jsx'
import ListOrder from '../../components/admin/ListOrder.jsx'
import { useDispatch, useSelector } from 'react-redux'
import { useNavigate } from 'react-router-dom'
import { getMe } from '../../features/authSlice'


const ListOrderPage = () => {
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
        <ListOrder />
    </Layout>
  )
}

export default ListOrderPage