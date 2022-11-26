<a name="readme-top"></a>

<!--
HOW TO USE:
This is an example of how you may give instructions on setting up your project locally.

Modify this file to match your project and remove sections that don't apply.

REQUIRED SECTIONS:
- Table of Contents
- About the Project
  - Built With
  - Live Demo
- Getting Started
- Authors
- Future Features
- Contributing
- Show your support
- Acknowledgements
- License

After you're finished please remove all the comments and instructions!
-->

<div align="center">

  <img src="murple_logo.png" alt="logo" width="140"  height="auto" />
  <br/>

 <img src="https://badgen.net/builder#badge/Ruby%20on%20Rails/7.0.4/red" alt="logo" width="60"  height="auto" />
<img src="https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white" alt="logo" width="60"  height="auto" />
<img src="https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white" alt="logo" width="60"  height="auto" />
<img src="https://img.shields.io/badge/ruby-%23CC342D.svg?style=for-the-badge&logo=ruby&logoColor=white" alt="logo" width="60"  height="auto" />
</div>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [🚀 Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Run tests](#run-tests)
  - [Install](#install)
  - [Usage](#usage)
  - [Deployment](#triangular_flag_on_post-deployment)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [❓ FAQ](#faq)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 Budget App 🌍<a name="about-project"></a>

**Budget App** is about building a mobile web application where you can manage your budget: you have a list of transactions associated with a category, so that you can see how much money you spent and on what.

## 🛠 Built With <a name="built-with"></a>
- Major languages: Ruby
- Frameworks: Ruby on Rails, Capybara
- Library: CanCanCan
- Technologies used: Rubocop, Gem, Postgresql
- Code Editor: Visual Studio
- Testing: Rspec

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://reactjs.org/">React.js</a></li>
  </ul>
</details>

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://rubyonrails.org/">RubyonRails</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>


### Key Features <a name="key-features"></a>

- **Authorization of users**
- **Adding of categories and expenses**
- **Authentication of users**


<p align="center">
  <img src="erd_diagram.png" alt="ERD diagram" />
</p>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LIVE DEMO -->

## 🚀 Live Demo <a name="live-demo"></a>

> Add a link to your deployed project.

- [Live Demo Link](https://yourdeployedapplicationlink.com)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running follow these simple example steps.

Open your console. Run the following 

If you are using HTTPS

    "git clone https://github.com/ijeomaodinko/Budget-app.git

If you are using a SSH key.

    "git clone https://github.com/ijeomaodinko/Budget-app.git


Press ENTER to create your local clone. After creating it, you can open the app through the open folder in Vscode or typing   `cd blog-app`    on the terminal 

### Prerequisites

In order to run this project you need:
- A modern web browser like Chrome, Safari, Firefox, etc.
- JavaScript enabled.
- Ruby on rails
- Postgres


### Setup

Clone this repository to your desired folder:

    cd my-folder

    git clone https://github.com/ijeomaodinko/Budget-app.git

    bundle install


### Build the Development Serve 

    rails s 

Open it by accessing http://localhost:3000/ on your browser.

### To Run Test
To install rspec in the terminal:

    $ gem install rspec

To run tests, run this command

    $ rspec ./spec/#{filename}_spec.rb
    

### Create, Drop and, Reset a Database

    rails db:create
    rails db:drop
    rails db:reset

### Generate Schema

    rails db:migrate

### Generate Controller

    rails generate controller NAME [action action] [options]
    
### Deployment

You can deploy this project using: Heroku

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

##  👤 Author <a name="authors"></a> 🖊📖


  **Ijeoma Odinko**

- GitHub: @ijeomaodinko
- Twitter: @Iodinko
- LinkedIn: ijeomaodinko


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- [ ] **Add a feature that tells when expense exceed amount possessed**


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>


Give a ⭐️ if you like this project...

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

> Give credit to everyone who inspired your codebase.

- Hat tip to anyone whose code was used
- Inspiration
- etc


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FAQ (optional) -->

## ❓ FAQ <a name="faq"></a>

> Add at least 2 questions new developers would ask when they decide to use your project.

- **How to create expenses for a category**

  - If you are done creating category,you can move ahead and create expense through clicking on the 
  button ``Add Expense``.

- **How to Sign Up**

  - On visiting the site, the main page has two buttons where you can login or sign up.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

_NOTE: we recommend using the [MIT license](https://choosealicense.com/licenses/mit/) - you can set it up quickly by [using templates available on GitHub](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/adding-a-license-to-a-repository). You can also use [any other license](https://choosealicense.com/licenses/) if you wish._

<p align="right">(<a href="#readme-top">back to top</a>)</p>
