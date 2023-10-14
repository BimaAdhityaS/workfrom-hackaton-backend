import React, {useEffect} from 'react'
import Layout from '../Layout.jsx'
import EditPlanPricing from '../../components/admin/crud-properti/EditPlanPricing.jsx'
import { useDispatch, useSelector } from 'react-redux'
import { useNavigate } from 'react-router-dom'
import { getMe } from '../../features/authSlice'


const EditPlanPricingPage = () => {
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
      <EditPlanPricing />
    </Layout>
  )
}

export default EditPlanPricingPage