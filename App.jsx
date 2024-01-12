import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'
import Hello from './components/Hello'
import Welcome from './components/Welcome'
import ChoresList from './components/ChoresList'
import MovieList from './components/MovieList'
import BookList from './components/BookList'
import  { Greeting, ArrowGreeting, ShinyButton } from './components/week 3/react demo 1/react-demo-1'
import Apps from './components/week 3/react demo 2/react-demo-2'
import Appss from './components/week 3/react demo 3/react-demo-3'
import Appsss from './components/week 3/react demo 4/react-demo-4'

function App() {
  const [count, setCount] = useState(0)

  return (
    <>
      <Greeting />
      <ArrowGreeting />
      <ShinyButton />
      <Apps />
      <Appss />
      <Appsss />
    </>
  )
}

export default App;
