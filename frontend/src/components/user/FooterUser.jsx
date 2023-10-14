import React from 'react'

const FooterUser = () => {
    return (
        <div>
            <footer className="footer p-10 bg-white text-black border border-t-gray-300">
                <aside>
                    <img src='https://cdn.animaapp.com/projects/6527f422a645123bec2b5506/releases/6527f527bcf1089301a069e4/img/logo-wf-1.png'></img>
                    <p>Komp. Ruko Centre Point<br />
                        Medan Jalan Timor Blok G No. III/IV 2nd Floor,<br />
                        Gang Buntu, Medan Timur, Medan City, North Sumatra 20231</p>
                </aside>
                <nav>
                    <header className="text-black text-1xl font-medium">LOCATIONS</header>
                    <a className="link link-hover">Clapham</a>
                    <a className="link link-hover">The 101</a>
                    <a className="link link-hover">Yafurni</a>
                    <a className="link link-hover">Kalinga</a>
                    <a className="link link-hover">Other Location</a>
                </nav>
                <nav>
                    <header className="text-black text-1xl font-medium">COMPANY</header>
                    <a className="link link-hover">Blog</a>
                </nav>
                <nav>
                    <header className="text-black text-1xl font-medium">SOCIAL</header>
                    <div className="flex justify-start">
                        <a href='#'>
                            <img src='https://cdn1.iconfinder.com/data/icons/social-media-rounded-corners/512/Rounded_Linkedin2_svg-512.png' className=' h-8 w-8'></img>
                        </a>
                        <a href='#'>
                            <img src='https://cdn1.iconfinder.com/data/icons/social-media-rounded-corners/512/Rounded_Twitter5_svg-512.png' className='ml-2 h-8 w-8'></img>
                        </a>
                        <a href='#'>
                            <img src='https://cdn1.iconfinder.com/data/icons/social-media-rounded-corners/512/Rounded_Facebook_svg-512.png' className='ml-2 h-8 w-8'></img>
                        </a>
                        <a href='#'>
                            <img src='https://cdn1.iconfinder.com/data/icons/social-media-rounded-corners/512/Rounded_Instagram_svg-512.png' className='ml-2 h-8 w-8'></img>
                        </a>
                    </div>
                </nav>
            </footer>
        </div>
    )
}

export default FooterUser