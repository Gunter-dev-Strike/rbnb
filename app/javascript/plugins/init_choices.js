import Choices from 'choices.js';
import Categorie from 'choices.js';
import Home from 'choices.js';

const element = document.querySelector('.choices');
const select_categorie = document.querySelector('.categorie');
const home = document.querySelector('.home');

const choices = new Choices(element);
const categorie = new Categorie(select_categorie);
const home = new Home(home);
