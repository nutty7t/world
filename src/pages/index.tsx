import React from 'react'

// Does PureScript work from TypeScript?
require('λ/Test.purs').nuttyWorld()

// Does import aliasing work?
import test from '@/test/Test'
console.log(test())

const Home = () => (
	<div>Welcome to Nutty World!</div>
)

export default Home
