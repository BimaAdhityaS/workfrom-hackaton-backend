import React, { useState, useEffect } from 'react'
import axios from 'axios'

const Homepage = () => {
  const [properties, setProperti] = useState([])
  const [user, setUser] = useState([])

  useEffect(() => {
    getProperti()
  }, [])

  const getProperti = async () => {
    const response = await axios.get('http://localhost:5000/locationsnoid')
    setProperti(response.data)
  }
  return (
    <div>
      <div className=' mt-8 mb-14' >
        <div className='flex relative'>
          <img className='ml-4' src='https://cdn.animaapp.com/projects/6527f422a645123bec2b5506/releases/6527f527bcf1089301a069e4/img/rectangle-2.png'></img>
          <div className='absolute right-0 bg-hijau rounded-l-full w-2/3 text-center mt-10'>
            <div>
            </div>
            <h1 className=' text-4xl font-normal mt-9'>Office & Coworking Space</h1>
            <h2 className='text-5xl font-bold mb-9 text-black'>Temukan Ruangan untuk Setiap Pekerjaan</h2>
          </div>
          <div className='flex items-center justify-center'>
            <div className="flex flex-col items-center">
              <p className=' text-xl font-medium mt-4 mx-3 text-justify'>
                Dengan berbagai pilihan ruangan yang dapat disesuaikan dengan kebutuhan Anda,
                kami akan membantu Anda mencari ruangan kerja yang sesuai dengan anggaran dan kebutuhan Anda.
                Temukan ruangan kerja Anda sekarang dan tingkatkan produktivitas kerja Anda!
              </p>
              <button className="btn rounded-md btn-neutral mt-4 w-4/6 bg-black text-white font-medium">Pesan Sekarang</button>
            </div>
          </div>
        </div>
      </div>
      <div className='border-t-2 border-neutral-300'>
        <div className=' mb-28'>
          <h1 className=' text-4xl text-center font-medium text-black my-7'>What are you looking for?</h1>
          <div className='grid grid-cols-4 grid-rows-1 gap-2 justify-items-center'>
            <div className="card card-side bg-base-100 ml-3">
              <figure><img src="https://cdn.animaapp.com/projects/6527f422a645123bec2b5506/releases/6528b490afe76e5af1199ae4/img/decoration.svg" alt="Event" /></figure>
              <div className="card-body">
                <h2 className="card-title">Event</h2>
                <p className=' text-sm'>Rayakan perayaan dan acara terbaik dengan tempat pilihan terbaik dan akses lebih mudah.</p>
                <button className="btn btn-sm btn-link rounded-md mt-4 w-fit bg-white text-black font-medium">Pesan Sekarang</button>
              </div>
            </div>
            <div className="card card-side bg-base-100">
              <figure><img src="https://cdn.animaapp.com/projects/6527f422a645123bec2b5506/releases/6528b490afe76e5af1199ae4/img/meeting.svg" alt="Event" /></figure>
              <div className="card-body">
                <h2 className="card-title">Meeting</h2>
                <p className=' text-sm'>Ruang rapat nyaman, menciptakan suasana ideal untuk pertemuan bisnis yang efektif dan produktif.</p>
                <button className="btn btn-sm rounded-md btn-link mt-4 w-fit bg-white text-black font-medium">Pesan Sekarang</button>
              </div>
            </div>
            <div className="card card-side bg-base-100">
              <figure><img src="https://cdn.animaapp.com/projects/6527f422a645123bec2b5506/releases/6528b490afe76e5af1199ae4/img/image-gallery.svg" alt="Event" /></figure>
              <div className="card-body">
                <h2 className="card-title">PhotoShoot</h2>
                <p className=' text-sm'>Rayakan perayaan dan acara terbaik dengan tempat pilihan terbaik dan akses lebih mudah.</p>
                <button className="btn btn-sm rounded-md btn-link mt-4 w-fit bg-white text-black font-medium">Pesan Sekarang</button>
              </div>
            </div>
            <div className="card card-side bg-base-100">
              <figure><img src="https://cdn.animaapp.com/projects/6527f422a645123bec2b5506/releases/6528b490afe76e5af1199ae4/img/animated-film.svg" alt="Event" /></figure>
              <div className="card-body">
                <h2 className="card-title">Videoshoot</h2>
                <p className=' text-sm'>Rayakan perayaan dan acara terbaik dengan tempat pilihan terbaik dan akses lebih mudah.</p>
                <button className="btn btn-sm rounded-md btn-link mt-4 w-fit bg-white text-black font-medium">Pesan Sekarang</button>
              </div>
            </div>
          </div>
        </div>
        <div className="hero h-fit bg-black text-white">
          <div className="hero-content text-center">
            <div className=" max-w-3xl my-16">
              <h1 className="text-3xl font-bold">Space Terbaik untuk Semua Tim dan Pekerjaan Anda</h1>
              <p className="py-6">Dengan berbagai pilihan ruangan yang dapat disesuaikan dengan kebutuhan Anda,
                kami akan membantu Anda mencari ruangan kerja yang sesuai dengan anggaran dan kebutuhan Anda.
                Temukan ruangan kerja Anda sekarang dan tingkatkan produktivitas kerja Anda!</p>
            </div>
          </div>
        </div>
        <div className=' py-20 border-b-2 border-neutral-300'>
          <div>
            <h1 className=' text-4xl text-center font-medium text-black my-7'>Pilih Space terdekat anda</h1>
          </div>
          <div className="grid grid-cols-3 grid-rows-1 gap-2 justify-items-center">

            {properties.slice(0, 3).map((property) => {
              if (property.status === "VERIFIED") {
                return (
                  <div className="card w-96 bg-abu rounded-b-xl rounded-t-none" key={property.id}>
                    <figure><img src={property.url} alt="img" className='w-96' /></figure>
                    <div className="card-body">
                      <h2 className="card-title text-4xl mb-4">{property.name}</h2>
                      <div className='flex'>
                        <img src='https://cdn.animaapp.com/projects/6527f422a645123bec2b5506/releases/6527f527bcf1089301a069e4/img/vector-13.svg'></img>
                        <p className='ml-3 my-2 font-medium'>{property.city}</p>
                      </div>
                      <p>{property.address}</p>
                      <div className="card-actions justify-center">
                        <button className="btn btn-sm btn-outline w-full">lihat</button>
                      </div>
                    </div>
                  </div>
                );
              }
              return null; // or return an alternative component if not "VERIFIED"
            })}

          </div>
          <div className="flex justify-center">
            <button className="btn rounded-md btn-neutral mt-8 bg-black text-white font-medium w-1/2">Jelajahi Semua Lokasi</button>
          </div>
        </div>
      </div>
      <div className=' my-20'>
        <div>
          <h1 className=' text-4xl text-center font-medium text-black my-7'>Partner Kami</h1>
        </div>
        <div className='flex justify-center'>
          <img src='https://cdn.animaapp.com/projects/6527f422a645123bec2b5506/releases/6527f527bcf1089301a069e4/img/partner-1-1.png' className=' mx-3'></img>
          <img src='https://cdn.animaapp.com/projects/6527f422a645123bec2b5506/releases/6527f527bcf1089301a069e4/img/partner-3-1.png' className=' mx-3'></img>
          <img src='https://cdn.animaapp.com/projects/6527f422a645123bec2b5506/releases/6527f527bcf1089301a069e4/img/partner-2-1.png' className=' mx-3'></img>
          <img src='https://cdn.animaapp.com/projects/6527f422a645123bec2b5506/releases/6527f527bcf1089301a069e4/img/partner-4-1.png' className=' mx-3'></img>
        </div>
        <div className='flex justify-center my-24'>
          <div className=' my-16 mr-8'>
            <p className='text-5xl font-bold text-black'>Frequently</p>
            <p className='text-5xl font-bold text-black'>Asked</p>
            <p className='text-5xl font-bold text-black'>Questions</p>
          </div>
          <div className=' w-2/3'>
            <div className="join join-vertical w-full">
              <div className="collapse collapse-arrow join-item">
                <input type="radio" name="my-accordion-4" checked="checked" />
                <div className="collapse-title text-3xl font-medium">
                  Apa itu Workfrom?
                </div>
                <div className="collapse-content">
                  <p>Workfrom merupakan sebuah platform yang menghubungkan penyewa dengan ruang kantor yang tepat di mana saja di berbagai lokasi.
                    Kami dapat membantu menemukan kebutuhan penyewa dan pemilik gedung.</p>
                </div>
              </div>
              <hr className='bg-gray-300 h-0.5'></hr>
              <div className="collapse collapse-arrow join-item">
                <input type="radio" name="my-accordion-4" />
                <div className="collapse-title text-3xl font-medium">
                  Fasilitas apa saja yang ditawarkan?
                </div>
                <div className="collapse-content">
                  <p>Fasilitas mencakup akses internet berkecepatan tinggi, minuman gratis, area hiburan dan area lounge,
                    serta kesempatan untuk memperluas networking.</p>
                </div>
              </div>
              <hr className='bg-gray-300 h-0.5'></hr>
              <div className="collapse collapse-arrow join-item">
                <input type="radio" name="my-accordion-4" />
                <div className="collapse-title text-3xl font-medium">
                  Apakah buka di akhir pekan dan hari libur?
                </div>
                <div className="collapse-content">
                  <p>Private Office tutup selama akhir pekan dan hari libur.
                    Tetapi kedepannya bisa terdapat perubahan pada jam operasional kami.</p>
                </div>
              </div>
              <hr className='bg-gray-300 h-0.5'></hr>
            </div>
          </div>
        </div>
      </div>
    </div>
  )
}

export default Homepage