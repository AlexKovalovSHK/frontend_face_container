import { Box, Button } from '@mui/material'
import React from 'react'

const Home = () => {
    return (
        <div>
            <Box component="main" sx={{ p: 3, mt: 5 }}>
                <h1>Home</h1>
                <Button variant="contained" onClick={() => window.location.href = 'http://82.165.47.33:3000/'}>Calculator</Button>
            </Box>
        </div>
    )
}

export default Home