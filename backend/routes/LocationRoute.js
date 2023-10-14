import express from 'express';
import {
    getLocations,
    getLocationById,
    createLocation,
    updateLocation,
    deleteLocation,
    updateStatusLocation,
    getLocationsNoUserId
} from '../controllers/Locations.js';
import { verifyUser } from '../middleware/AuthUser.js';


const router = express.Router();

router.get('/locations', verifyUser ,getLocations);
router.get('/locationsnoid',getLocationsNoUserId);
router.get('/locations/:id', verifyUser ,getLocationById);
router.post('/locations', verifyUser,createLocation);
router.patch('/locations/:id', verifyUser,updateLocation);
router.delete('/locations/:id', verifyUser,deleteLocation);
router.patch('/locationsstatuschange/:id', verifyUser,updateStatusLocation);

export default router;