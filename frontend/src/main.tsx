import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import { Provider } from '@/provider'
import App from './App'

createRoot(document.getElementById('root')!).render(
  <StrictMode>
    <Provider>
      <App />
    </Provider>
  </StrictMode>,
)
