import React from 'react'
import { Helmet } from 'react-helmet'

// Does PureScript work from TypeScript?
require('λ/Test.purs').nuttyWorld()

// Does import aliasing work?
import test from '@/test/Test'
console.log(test())

const Home = () => (
	<div>
		<Helmet>
			<meta charSet="UTF-8" />
			<title>𝐍𝐮𝐭𝐭𝐲 𝐖𝐨𝐫𝐥𝐝</title>
			<link rel="icon" href={require('@/assets/favicon.svg')} />
		</Helmet>
		<div>Welcome to Nutty World!</div>
	</div>
)

export default Home
