
# 🧩 IATD Intro to DevOps – Project Assessment

## 📘 Overview
This project is part of the **Intro to DevOps** micro-credential delivered by **Macquarie University** under the **Institute of Applied Technology (IAT)**.  
It provides you with the opportunity to **demonstrate and apply DevOps concepts and tools** learned through the course’s practical labs.

You will evaluate an existing DevOps workflow, enhance it, and create a **functional CI/CD pipeline** that automates build, test, and deployment processes using **GitHub Actions**, **Jest**, and **Docker**.

---

## 🎯 Learning Outcomes

| Code | Outcome |
|------|----------|
| **LO3** | Demonstrate an understanding of DevOps workflows. |
| **LO4** | Define and implement a deployment automation solution. |
| **LO5** | Apply configuration management strategies for application infrastructure. |
| **LO7** | Implement application deployment by using containers. |

---

## 🧱 Project Outline

You will:
- Demonstrate **Git version control best practices**.
- Analyse static analysis tool outputs (ESLint) and **fix code issues**.
- Develop **unit tests** using Jest.
- Extend and configure a **CI/CD pipeline** in GitHub Actions.
- Build and deploy **Docker images** to **Docker Hub**.

At the end of this project, you will submit:
1. A **GitHub repository link** containing your project code.
2. A **Docker Hub repository link** containing your Docker images.

> ⚠️ Both repositories must be **public** to allow marking access.

---

## 🧩 Project Tasks

### **Task 1 – Git Best Practices**
- Fork and clone the base repository:  
  🔗 [IATD DevOps Assessment Project](https://github.com/Institute-of-Applied-Technology/IATD-devops-assessment-project)
- Follow Git best practices:
  - Create meaningful, descriptive commit messages.
  - Commit frequently with clear purpose.
- Markers will review your **commit frequency and clarity**.

**Learning Reference:** Week 2 Practical – Git & Jest testing.

---

### **Task 2 – Issue Fixing**
- Run the provided **GitHub Actions pipeline** to identify existing issues.
- Enable workflows via the **Actions tab** in GitHub.
- Fix any ESLint errors reported by the pipeline.
- Ensure the final workflow passes static analysis with **no issues**.

**Learning Reference:** Week 3 Practical – Continuous Integration (CI) with GitHub Actions.

---

### **Task 3 – Unit Testing**
Add Jest unit tests in `utilities.test.js` for the `generateFlightId` function.  
Your tests must verify that:
1. The first two characters of the ID are the **first two letters** of the airline name.  
2. These two characters are **uppercase**.  
3. If the airline name is empty or too short (<2 characters), the function returns **`undefined`**.

✅ Each test must run successfully both **locally** and **in the CI pipeline**.

---

### **Task 4 – Pipeline Configuration**
Extend your **GitHub Actions pipeline** to include Continuous Deployment (CD):
- Build and push a **testing Docker image** to Docker Hub using:
  - **Dockerfile:** `Dockerfiles/test.Dockerfile`
  - **Image name format:**  
    ```
    username/lastname-firstname-intro-to-devops-a2:test-latest
    ```
- Configure the workflow to:
  - Authenticate with Docker Hub using GitHub Secrets.
  - Build the image.
  - Push the image to the **public repository** only after tests pass.

**Learning Reference:** Week 5 Practical – Continuous Deployment with Docker Hub.

---

### **Task 5 – Advanced Docker Configuration**
Refine Docker configurations and pipeline deployment:

- Modify `Dockerfiles/test.Dockerfile` to:
  - Exclude the directories: `.git`, `.github`, `Dockerfiles`, and `node_modules`.

- Populate `Dockerfiles/user.Dockerfile` to:
  - Run the app with `npm start`.
  - Exclude the same directories as above, **plus** the `tests` folder.

- Update the GitHub Actions workflow to:
  - Build and push **two images**:
    - Test image → `username/lastname-firstname-intro-to-devops-a2:test-latest`
    - User image → `username/lastname-firstname-intro-to-devops-a2:user-latest`
  - Ensure both builds **only occur if CI tests pass**.

---

## 🧠 Marking Rubric

| Task | Weight | Completion Criteria |
|------|--------|----------------------|
| **1 – Git Best Practices** | 10% | Meaningful commit messages; clear version history. |
| **2 – Issue Fixing** | 10% | ESLint runs automatically and passes without errors. |
| **3 – Unit Testing** | 20% | All required Jest tests implemented and passing. |
| **4 – Pipeline Configuration** | 20% | Workflow builds and deploys test Docker image correctly. |
| **5 – Advanced Docker Configuration** | 40% | Two Docker images built and pushed; workflow functions correctly. |

---

## ⚙️ Tools and Technologies

| Tool | Purpose |
|------|----------|
| **Git & GitHub** | Version control and repository management |
| **ESLint** | Static code analysis |
| **Jest** | Unit testing framework |
| **GitHub Actions** | CI/CD automation |
| **Docker & Docker Hub** | Containerization and deployment |

---

## 🧪 Weekly Learning Integration

| Week | Focus | Key Skills |
|------|--------|------------|
| **Week 2 (Lab 2)** | Git and Jest Testing | Git basics, commit workflow, writing unit tests |
| **Week 3 (Lab 3)** | Continuous Integration | YAML workflows, GitHub Actions automation |
| **Week 5 (Lab 5)** | Continuous Deployment | Docker Hub integration, secrets, build and push automation |

---

## 🚀 Submission Checklist

✅ Forked and cloned repository from GitHub  
✅ Commits demonstrate best practices  
✅ All ESLint checks pass  
✅ Jest tests implemented and passing  
✅ CI/CD pipeline configured in `.github/workflows/`  
✅ Docker Hub repository public and contains both images  
✅ Submitted links to:
- GitHub Repository  
- Docker Hub Repository  

---

## 📚 References

- [Atlassian Git Tutorials](https://www.atlassian.com/git/tutorials)
- [Jest Documentation](https://jestjs.io/docs/getting-started)
- [GitHub Actions Docs](https://docs.github.com/en/actions)
- [Docker Documentation](https://docs.docker.com/)
- [AWS – What is Unit Testing?](https://aws.amazon.com/what-is/unit-testing/)
- [YAML Basics – Spacelift](https://spacelift.io/blog/yaml)

---

© 2024 Macquarie University | Institute of Applied Technology  
*Intro to DevOps Micro-Credential – Project Assessment*
````

---

Would you like me to generate this README in **HTML format** (so you can use it directly on GitHub Pages or in a report)?
