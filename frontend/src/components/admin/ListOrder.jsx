import React from 'react'

const ListOrder = () => {
    return (
        <div>
            <div>
            <h1 className="text-3xl font-bold my-3 mx-3">Orders</h1>
                <h2 className="text-xl font-medium my-3 mx-3 text-gray-500">Daftar List Order</h2>
            </div>
            <div className="overflow-x-auto mx-7 border-t-2 border-gray-300">
                <table className="table">
                    {/* head */}
                    <thead>
                        <tr>
                            <th></th>
                            <th>Customer</th>
                            <th>Pada Properti</th>
                            <th>BookPlan</th>
                            <th>Jumlah Orang</th>
                            <th>Contact By</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        {/* row 1 */}
                        <tr>
                            <th>1</th>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td>
                                <button class="btn btn-success btn-sm mr-2">Detail</button>
                                <button class="btn btn-warning btn-sm bg-red-500">Delete</button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    )
}

export default ListOrder