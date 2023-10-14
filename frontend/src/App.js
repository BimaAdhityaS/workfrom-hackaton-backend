import { BrowserRouter, Routes, Route } from "react-router-dom";
// Admin
import Dashboard from "./pages/admin/Dashboard.jsx"
import Login from "./components/admin/Login.jsx";
import Register from "./components/admin/Register.jsx";

import ListUserPage from "./pages/admin/ListUserPage.jsx";
import ListProductPage from "./pages/admin/ListProductPage.jsx";
import ListOrderPage from "./pages/admin/ListOrderPage.jsx";

import EditUserPage from "./pages/admin/EditUserPage.jsx";
import EditPropertiPage from "./pages/admin/EditPropertiPage.jsx";
import EditPlanPricingPage from "./pages/admin/EditPlanPricingPage.jsx";
import EditUseCasePage from "./pages/admin/EditUseCasePage.jsx";

import DetailPropertiPage from "./pages/admin/DetailPropertiPage.jsx";
// User
import Homepage from "./pages/User/UserHomepage.jsx";
import UserLocations from "./pages/User/UserLocations.jsx";

function App() {
  return (
    <BrowserRouter>
      <Routes>
        {/* User */}
        <Route path="/" element={<Homepage/>}/>
        <Route path="/locations" element={<UserLocations/>}/>

        {/* Admin */}
        <Route path="/dashboard" element={<Dashboard/>}/>
        <Route path="/users" element={<ListUserPage/>}/>
        <Route path="/users/edit/:id" element={<EditUserPage/>}/>

        <Route path="/properties" element={<ListProductPage/>}/>
        <Route path="/properties/detail/:id/properties-edit/:id" element={<EditPropertiPage/>}/>
        <Route path="/properties/detail/:building_id/planpricing-edit/:id" element={<EditPlanPricingPage/>}/>
        <Route path="/properties/detail/:building_id/usecase-edit/:id" element={<EditUseCasePage/>}/>
        <Route path="/properties/detail/:id" element={<DetailPropertiPage/>}/>

        <Route path="/login" element={<Login/>}/>
        <Route path="/register" element={<Register/>}/>

        <Route path="/orders" element={<ListOrderPage/>}/>
      </Routes>
    </BrowserRouter>
  );
}

export default App;
