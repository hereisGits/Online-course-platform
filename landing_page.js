
const loginBtn = document.querySelector("#login");
const signupBtn = document.querySelector("#signup");

loginBtn.onclick = () =>{
    window.location.href = 'login.php';
};

signupBtn.onclick = () =>{
    window.location.href = 'sign_up.php';
};


const noCommunity = document.querySelector("#community");
const notify = document.querySelector("#notify");

noCommunity.addEventListener('mouseover', () => {
    notify.style.display = 'block';
});

noCommunity.addEventListener('mouseout', () => {
    notify.style.display = 'none';
});

