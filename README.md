# Overview

This repo contains the lesson material for the Build CI/CD Pipelines course. In it, you'll find folders for each lesson and their corresponding exercises and demos. The exercise folder will contain the following:

1. A `README.md` to provide details and instructions for the lesson
2. A starter folder with any files or templates you should use to start your work
3. A solution folder that contains a working solution to the exercise that will be reviewed in the classroom
4. Other supplemental material like a frontend or backend application, will be provided in the root of the exercise folder

As you work on each lesson, remember that in order for the Github Actions to trigger your workflow, the workflow files must be in the root of your repository under the `.github/workflows` folder. It is **highly recommended** to either remove or disable any workflows you are done with (by commenting the entire file) as there is a **2000 minute limit per month** for Github Actions for public repositories. We've kept the operations with reasonable limits that you can make numerous attempts at fixing and improving your pipeline. Below are the estimated run times for each exercise.

Estimated run times for each workflow:

Lesson 3 exercise:

* **Lint job:** ~ 30s
* **Test job:** ~ 30s
* **Total workflow:** ~ 1 min

Lesson 4 exercise:

## Instructions and one-time setup

The exercises assume you'll be working in the Udacity workspace where all the necessary system dependencies are installed and setup, ready for use.
The following steps are required to be run only once to initialize and create your repository with all the files that you'll use for the lessons in this course.
### Login
Launch the Udacity workspace and open the terminal in VSCode to start executing the following commands:
1. Start the login process with `gh`
```bash
gh auth login
```
   2. Select `Github.com`
   3. Select `HTTPS`
   4. Enter `Y` or just press **Enter** to authenticate with Github credentials
   5. Select **Login with a web browser**
   6. Highlight and copy the one-time code then press **Enter** to open the browser
   7. If VSCode pops-up with a warning, click **Open**
   8. Enter your Github credentials at the login page
      1. You may need to perform your 2FA step next
   9. Paste in the one-time code that was given on the CLI prompt and click **Continue**
      1. If you're prompted for authorizing access to any organizations, you don't have to do that. The `gh` cli for this course just needs to be able to create repos in your personal account.
   10. Click authorize to allow the Github CLI to access your repository information.
   11. You can close the Github window and go back to the Udacity workspace tab

### Configuration
Next you'll need to configure git to use your desired email.

If you already know what email you'd like to use, great! If you'd like to use the `noreply` email address that Github offers, follow [these instructions](https://docs.github.com/en/account-and-profile/setting-up-and-managing-your-personal-account-on-github/managing-email-preferences/setting-your-commit-email-address#setting-your-commit-email-address-on-github)

**Configure git with your email address**
```bash
git config --global user.email "YOUR_EMAIL"
```
   
Now we'll finish up by initializing the repository and using the `gh` command to push the files to a new repository under you Github account. The last command uses `udacity-build-cicd-lessons` as the repository name, but you can change this to be whatever you'd like that doesn't conflict with an existing repo name in your account.

**Initialize the workspace as a git repository**
```bash
git init
```
   
**Stage the workspace files for committing**
```bash
git add .
```
   
**Commit the workspace files**
```bash
git commit -m "initial"
```
   
**Create your public repository and push the initial changes (it needs to be public to allow Github Actions to run for free)**
```bash
gh repo create udacity-build-cicd-lessons --source=. --public --push
```

As you work on the lessons going forward, you won't need to create or initialize the repo again. You'll just need to make changes to your workflows in the `.github/workflows` folder, and perform `git add .` `git commit` and `git push` commands to make the files available in your repository and view your actions in the Github Actions interface.

## Dependencies

We've documented the dependencies used in the instructions in the event you'd like to set up your local machine with any of the tooling.

* `gh` - <https://github.com/cli/cli#installation>
