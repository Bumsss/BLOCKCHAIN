import './biblequiz.css'
function Correct(){
    return(
        <div>
            <h1> The Bible Quiz </h1>
            <h2> The Bible consists of the Old and New Testaments.
                 Moses led the Israelites out of Egypt.
                 The sermon on the Mount is found in the Book of Luke.
            </h2>
        </div>

    );
}

function Incorrect(){
    return (
        <div>
            <h1> The Bible Quiz </h1>
            <h2> 
                The Bible consists of the Old and New Testaments.    
            </h2>
            <p className="pCorrect">Correct!</p>
              <h2> 
                Moses led the Israelites out of Egypt.
            </h2>
            <p className="pCorrect">Correct!</p>
             <h2>    
                The sermon on the Mount is found in the Book of Luke.
            </h2>
            <p className="pInCorrect">Incorrect!</p>
        </div>
    );
}

function CorrectOrIncorrect(props){
    const isCorrect = props.isCorrect;
    if(isCorrect){
        return(
        <Correct/>
        );
    }
    return(
        <Incorrect/>
    );
}

export default function biblequiz(){
    return(
        <div>
            <CorrectOrIncorrect
            isCorrect={false}/>
        </div>
    );
}