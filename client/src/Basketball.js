import React, { useState, useEffect } from 'react';
import { Typography } from '@mui/material';
import { Grid } from '@mui/material';
import Card from '@mui/material/Card';
import CardContent from '@mui/material/CardContent';

function Basketball() {

    const [posts, setPosts] = useState([])

    useEffect(() => {
        fetch("/posts")
        .then(response => response.json())
        .then(data => setPosts(data))
    },[])

    const mappedPosts = posts?.map((post) => {
        return(
        <Card>
            <CardContent>
                <Typography>{post.user_id}</Typography>
                <Typography>{post.post_body}</Typography>
                <Typography>{post.likes}</Typography>
                <Typography>{post.sports_id}</Typography>
            </CardContent>
        </Card>
    )})

    return (
        <div>
            <p>Test</p>
        </div>
    )
}

export default Basketball;