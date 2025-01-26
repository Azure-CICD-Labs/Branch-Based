## Workflows

1. **CI.yml**

   - **Trigger:** Pushes/PRs to `dev`, `feature/*`, `bugfix/*`, and `main`.
   - **Actions:** Runs Terraform formatting checks, validation, linting (TFLint), and security scans (Checkov).
   - **Purpose:** Ensures all changes meet quality and security standards before merging.

2. **CD-dev.yml**

   - **Trigger:** Push to `dev` branch.
   - **Actions:** Logs in to Azure (OIDC), runs Terraform `init`, `plan`, and `apply` against the Dev state backend.
   - **Purpose:** Automatically updates the Dev environment whenever code is merged or pushed to `dev`.

3. **CD-prod.yml**
   - **Trigger:** Push to `main` or manual `workflow_dispatch`.
   - **Actions:** Two jobs:
     - **Plan**: Generates a Terraform plan and uploads it as an artifact.
     - **Apply**: (Manual or automatic approval) downloads the plan artifact and applies it to Production.
   - **Purpose:** Provides a controlled process for production releases with potential manual review steps.

## Branching & Promotion

- **dev** branch: Used for ongoing development and integration testing in the Dev environment.
- **main** branch: Reflects production-ready code. Merge from `dev` to `main` only when changes are fully tested and approved.

## State Management

- Separate backend container or key for each environment (e.g., `dev-tfstate` vs. `prod-tfstate`).
- This ensures Dev and Prod states are isolated, preventing accidental overwrite.

## Rollback Procedure

- If an issue is found in Dev, revert the commit(s) in `dev`. Dev environment will revert on next deploy.
- If an issue is found in Prod, revert the commit(s) in `main`. Merge the revert into `main`; the production pipeline re-applies previous known-good state.

## Security & Compliance

- **Checkov** is used to scan Terraform for security best practices.
- **TFLint** ensures linting and coding standards.
- **GitHub Environment Protection** can be configured to require approvals before production apply steps.

## Contributing

1. Create a **feature branch** (`feature/xyz`) off `dev`.
2. Commit and push changes.
3. Open a pull request into `dev`.
4. Once CI checks pass and code review is done, merge to `dev`. The **CD-dev** workflow deploys to Dev.
5. After successful testing, open a pull request from `dev` to `main`.
6. Review and merge to `main`. The **CD-prod** workflow then plans and optionally applies to Production upon approval.

---

# End

With this structure in place, you have:

- **Clean separation** of CI vs. CD.
- **Automatic Dev deploys** on merges to `dev`.
- **Manual/controlled Production deploys** on merges (or dispatch) to `main`.
- **Easy rollback** by reverting Git commits.

Feel free to adapt the exact triggers, environment names, or branching strategy to match your organization’s policies. This is just one common pattern for an “enterprise-ready” Terraform pipeline.
