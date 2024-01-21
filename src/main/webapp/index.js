function search(){
    let searchBar = document.querySelector('.home-page-search-bar').value.toUpperCase();
    let instructorList = document.querySelector('.home-page-instructors-list');
    let instructor = document.querySelectorAll('.home-page-instructor-container');
    let instructorName = document.getElementsByTagName('h3');

    for (let i = 0; i < instructorName.length; i++){
        if (instructorName[i].innerHTML.toUpperCase().indexOf(searchBar) >= 0){
            instructor[i].style.display = "";
        }
        else{
            instructor[i].style.display = "none";
        }
    }
}