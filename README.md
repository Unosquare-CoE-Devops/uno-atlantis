

<p align="center">
  <a href="https://www.unosquare.com/">
    <img width=100px height=100px src="https://www.unosquare.com/assets/logos/unosquare_logo.svg" alt="Unosquare logo">
  </a>
</p>

<h1>uno-atlantis</h1>

<p> Harmonious opinionated docker image comtaining atlantis, tfenv, and tfmask for terraform with clean output and GitHub status updates.
    <br>
</p>

---

<!-- START doctoc -->
<!-- END doctoc -->

## Tool Stack
- **[atlantis]** is a terraform ci/cd tool that makes automating terraform via good git practices easy. No need for jenkins and you can deploy it anywhere.
- **[tfenv]** terraform version manager easy to set, install and use multiple versions of terraform in a single config repo.
- **[tfmask]** ensures iac of terraform secure by filtering passwords and secrets in terraform output from plans and applies.
- **[uno-atlantis]** custom atlantis image with bash wrappers for everything above and some enhancements:
  - sets atlantis config defaults so you don't need atlantis config in your repo.
  - exit code for atlantis to update GitHub build status.


## Usage

Follow instructions for [atlantis](https://www.runatlantis.io) but use this image.

See [our GitHub Container Registry](#) for available image tags.

There are two images to choose from: `full` and `base`.

- **full**: This is the default image. Includes additional tooling and 3rd party providers, e.g. [credstash](https://github.com/fugue/credstash)
- **base**: Includes only the base tool-set.


## Compatibility

While atlantis supports any terraform version at runtime,
this image uses explicit terraform versions to ensure compatibility.

To override the terraform version in a hybrid scenario, see documentation for [tfenv].
Using `.terraform-version` files will ensure the appropriate versions of each are installed and used where desired.

### Terraform 0.14.5

See releases for latest version. 