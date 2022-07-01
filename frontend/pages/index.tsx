import type { NextPage } from 'next'
import Head from 'next/head'

const Home: NextPage = () => {
  return (
    <div className="bg-white">
      <Head>
        <title>Solar Marketplace</title>
        <meta name="description" content="Solar Marketplace" />
      </Head>

      <main className="max-w-7xl mx-auto py-16 px-4 sm:py-24 sm:px-6 lg:px-8">
        <div className="text-center">
          <h1 className="mt-1 text-4xl font-extrabold text-gray-900 sm:text-5xl sm:tracking-tight lg:text-6xl">
            Solar Marketplace
          </h1>
          <p className="max-w-xl mt-5 mx-auto text-xl text-gray-500">
            Compare solar installers side by side
          </p>
        </div>
      </main>
    </div>
  )
}

export default Home
