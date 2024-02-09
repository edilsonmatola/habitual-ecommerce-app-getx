<details>
<summary>
<strong> Leia este guia em Português </strong>
</summary>
    <ul>
        <li><a href="./CONTRIBUTING-PT-BR.md"> Português </a></li>
    </ul>

</details>

# Requirements to contribute

- Basic knowledge of programming is mandatory.
- The ability to use Git and GitHub.
- Some knowledge of Dart and how to use Flutter is preferrable for a head start.
- UI/UX Design skills are appreciable but not mandatory.
- Some idea about API Requests or willingness to learn it.

# General coding guidelines

If you'd like to add a feature or fix a bug, I'm more than happy to accept pull requests! I only ask a few things:

- Ensure your code contains no analyzer errors, e.g:
  - Code is strong-mode compliant.
  - Code is free of lint errors.
- Format your code with `Dart-Code.dart-code`.
- Write helpful documentation.
- If you would like to make a bigger / fundamental change to the codebase, please file a lightweight example PR / issue.

# 💥 How to Contribute

- Take a look at the existing [Issues](https://github.com/edilsonmatola/habitual-ecommerce-getx/issues) or [create a new issue](https://github.com/edilsonmatola/habitual-ecommerce-getx/issues/new/choose)!
- [Fork the Repo](https://github.com/edilsonmatola/habitual-ecommerce-getx/fork). Then, create a branch for any issue that you are working on. Finally, commit your work.
- Create a **[Pull Request](https://github.com/edilsonmatola/habitual-ecommerce-getx/compare)** (_PR_), which will be promptly reviewed and given suggestions for improvements by me.
- Add screenshots or screen captures to your Pull Request to help us understand the effects of the changes proposed in your PR.

## ⭐ HOW TO MAKE A PULL REQUEST:

**1.** Start by making a fork the [**habitual-ecommerce-getx**](https://github.com/edilsonmatola/habitual-ecommerce-getx) repository. Click on the <a href="https://github.com/edilsonmatola/habitual-ecommerce-getx/fork"><img src="https://i.imgur.com/G4z1kEe.png" height="21" width="21"></a> symbol at the top right corner.

**2.** Clone your new fork of the repository:

```bash
git clone https://github.com/YOUR_GITHUB_USERNAME/habitual-ecommerce-getx
```

**3.** Navigate to the new project directory:

```bash
cd habitual-ecommerce-getx
```

**4.** Set upstream command:

```bash
git remote add upstream https://github.com/YOUR_GITHUB_USERNAME/habitual-ecommerce-getx.git
```

**5.** Checkout from main to **development** branch.

```terminal
git checkout development
```

**6.** Create a feature branch from the **development** branch!

```bash
git checkout -b YourBranchName
```

**7.** Sync your fork or your local repository with the origin repository:

- In your forked repository, click on "Fetch upstream"
- Click "Fetch and merge"

### Alternatively, Git CLI way to Sync forked repository with origin repository:

```bash
git fetch upstream
```

```bash
git merge upstream/development
```

### [Github Docs](https://docs.github.com/en/github/collaborating-with-pull-requests/addressing-merge-conflicts/resolving-a-merge-conflict-on-github) for Syncing

**8.** Make your changes to the source code.

⚠️ **Update** both **Material and Cupertino** code if applicable.

**9.** Stage your changes and commit:

⚠️ **Make sure** not to run the commands `git add .` or `git add *`. Instead, stage your changes for each file/folder

```bash
git add <file-name>
```

```bash
git commit -m "<your_commit_message>"
```

**10.** Push your local commits to the remote repository:

```bash
git push origin YourBranchName
```

**10.** Create a [Pull Request](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request)!

⚠️ **Make sure** to submit the Pull Request against the **development** branch.

## Contribution checklist

To make the contribution verification process more efficient and organized, I have created a pull request template. You can find it in the [".github"](./.github/) folder by opening the ["PULL_REQUEST_TEMPLATE.md"](./.github/pull_request_template.md) file.

Please use this template as a guide when submitting your pull request and make sure to fill in all relevant sections. This will help me understand the changes made and how they fit into the larger context of the project.

Please read the [Contribution Guidelines](#-how-to-contribute) and [Code of Conduct](./CODE_OF_CONDUCT.md) before submitting your request to ensure that your contribution aligns with our goals and values.

**11.** **Congratulations!** You've made your first contribution to [**habitual-ecommerce-getx**](https://github.com/edilsonmatola/habitual-ecommerce-getx/graphs/contributors)! 🙌🏼

# Style Guide for Git Commit Messages :memo:

**How you can add more value to your contribution logs:**

- Use the present tense. (Example: "Add feature" instead of "Added feature")
- Use the imperative mood. (Example: "Move item to...", instead of "Moves item to...")
- Limit the first line (also called the Subject Line) to _50 characters or less_.
- Capitalize the Subject Line.
- Separate subject from body with a blank line.
- Do not end the subject line with a period.
- Wrap the body at _72 characters_.
- Use the body to explain the _what_, _why_, _vs_, and _how_.
- Reference [Issues](https://github.com/edilsonmatola/habitual-ecommerce-getx/issues) and [Pull Requests](https://github.com/edilsonmatola/habitual-ecommerce-getx/pulls) liberally after the first line.

## 💥 Issues

In order to discuss changes, you are welcome to [open an issue](https://github.com/edilsonmatola/habitual-ecommerce-getx/issues/new/choose) about what you would like to contribute. Enhancements are always encouraged and appreciated.

## All the best! 🥇

Sit and relax, you've made your contribution!

For help getting started with Flutter, view the online documentation, which offers tutorials, samples, guidance on mobile development, and a full API reference.
