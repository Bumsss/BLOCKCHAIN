import React from "react";
function Rainy(){
    return(
        <h1>Bring your umbrella!</h1>
    );
}

function Sunny(){
    return(
        <h1>Bring your sunglasses!</h1>
    )
}

function RainOrShine(props){
    const isRainy = props.isRainy;
    if(isRainy){
        return(
            <Rainy />
        );
    }
    return(
        <Sunny />
    );
}

export default function Appss(){
    return(
        <div>
            <RainOrShine
            isRain={false}
            />
        </div>
    );
}