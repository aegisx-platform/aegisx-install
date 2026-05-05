# [1.50.0](https://github.com/aegisx-platform/aegisx-starter/compare/v1.49.0...v1.50.0) (2026-05-05)


### Features

* **deploy:** add --dry-run mode to update.sh ([0c17cff](https://github.com/aegisx-platform/aegisx-starter/commit/0c17cff73f73f96a1e1bac0878d09a43a1f64ace))
* **deploy:** add pre-flight checks before update ([173e199](https://github.com/aegisx-platform/aegisx-starter/commit/173e199a656fa7ae47c827b00e4684001a0d99ff))
* **deploy:** auto-rollback on update failure ([4188cbc](https://github.com/aegisx-platform/aegisx-starter/commit/4188cbc7068b40dab603ad9423bd729be217e074))
* **deploy:** show release notes preview before update prompt ([0a5afac](https://github.com/aegisx-platform/aegisx-starter/commit/0a5afacc3d3fdb4f985fa9db1187da4836888481))
* **deploy:** sync compose template from upstream on update ([c972593](https://github.com/aegisx-platform/aegisx-starter/commit/c972593fa93dc225a9c3129e37820cc8090f75ca))
* **deploy:** write COMPOSE_VARIANT marker to .env on install ([d0a3892](https://github.com/aegisx-platform/aegisx-starter/commit/d0a3892a307de03c822939456bc85b8123b5529d))

# [1.49.0](https://github.com/aegisx-platform/aegisx-starter/compare/v1.48.0...v1.49.0) (2026-05-05)


### Features

* **deploy:** fetch compose template from installer repo on install ([d95be71](https://github.com/aegisx-platform/aegisx-starter/commit/d95be712fb66d9ad1ec5b4d3001d9d790ab9424b))

# [1.48.0](https://github.com/aegisx-platform/aegisx-starter/compare/v1.47.0...v1.48.0) (2026-05-05)


### Features

* **deploy:** sync compose template from upstream on update ([93a5f86](https://github.com/aegisx-platform/aegisx-starter/commit/93a5f86cfc4583867ee37e9f11c202625ce424d8))
* **deploy:** write COMPOSE_VARIANT marker to .env on install ([48fdbbc](https://github.com/aegisx-platform/aegisx-starter/commit/48fdbbce05d9491148832648603d74d3c992f29f))

# [1.47.0](https://github.com/aegisx-platform/aegisx-starter/compare/v1.46.0...v1.47.0) (2026-05-05)


### Bug Fixes

* **deploy:** retarget install-inventory.sh to public installer repo ([2f24b63](https://github.com/aegisx-platform/aegisx-starter/commit/2f24b63a9727f75251283a38d1fe38691743abb4))


### Features

* **deploy:** self-heal compose env mappings + auto-migrate in update.sh ([eef43c7](https://github.com/aegisx-platform/aegisx-starter/commit/eef43c733b2cba5a79d7d1070e7c24076ad55b24))
* **dispensing:** /sync tabbed shell — Live · History · Failed ([545660c](https://github.com/aegisx-platform/aegisx-starter/commit/545660c544da9250fa9527d7814038e76a8c1d24))
* **dispensing:** batch-first landing with scheduler health hero ([33798cd](https://github.com/aegisx-platform/aegisx-starter/commit/33798cdf2612bae13ba619a534a826bbe0803659))
* **dispensing:** consolidated /mappings page with 3 tabs ([2fa320d](https://github.com/aegisx-platform/aegisx-starter/commit/2fa320dc1de68f4874ab2e2f3b83a389e6fd8d78))
* **dispensing:** single-page setup wizard with 6 steps ([17fe75c](https://github.com/aegisx-platform/aegisx-starter/commit/17fe75ce9896ac0684b847b0cde03d5ffc5e8065))
* **dispensing:** strict location_match_field for HIS sync ([d89678f](https://github.com/aegisx-platform/aegisx-starter/commit/d89678fa3519c0610c05264ebb1c9fc592f3e59a))
* **dispensing:** surface location_match_field on his-settings list/view ([82b3659](https://github.com/aegisx-platform/aegisx-starter/commit/82b365925d7ce92b09a01308576318c4a3687d88))
* **inventory:** dedicated dispensing sub-app + remove duplicate menus ([66d01d5](https://github.com/aegisx-platform/aegisx-starter/commit/66d01d53f5cc319de46ccc4ee62282f1d4c5e88f))

# [1.46.0](https://github.com/aegisx-platform/aegisx-starter/compare/v1.45.15...v1.46.0) (2026-05-05)

### Features

- **deploy:** self-heal compose env mappings + auto-migrate in update.sh ([5b991fc](https://github.com/aegisx-platform/aegisx-starter/commit/5b991fcea400a3244d45ffc8e12abf6c503b43a7))

## [1.45.15](https://github.com/aegisx-platform/aegisx-starter/compare/v1.45.14...v1.45.15) (2026-04-30)

### Bug Fixes

- **deploy:** add HIS_ENCRYPTION_SECRET and MIGRATION_ENCRYPTION_KEY to install-inventory.sh and README ([e417032](https://github.com/aegisx-platform/aegisx-starter/commit/e41703243e49416580ab2ce93da8ea84b9ecdf32))

## [1.45.14](https://github.com/aegisx-platform/aegisx-starter/compare/v1.45.13...v1.45.14) (2026-04-30)

### Bug Fixes

- **deploy:** add MIGRATION_ENCRYPTION_KEY to install.sh ([86df6d0](https://github.com/aegisx-platform/aegisx-starter/commit/86df6d086a8370020cfa18e0ac25e737976fd7fd))

## [1.45.13](https://github.com/aegisx-platform/aegisx-starter/compare/v1.45.12...v1.45.13) (2026-04-30)

### Bug Fixes

- **web:** set V8 heap to 6GB for Angular production build ([6a03849](https://github.com/aegisx-platform/aegisx-starter/commit/6a038494e43e28f680a91cdf6b4d95c3fb94fa51))

## [1.45.12](https://github.com/aegisx-platform/aegisx-starter/compare/v1.45.11...v1.45.12) (2026-04-30)

### Bug Fixes

- **web:** lower V8 heap limit from 8GB to 4GB for arm64 runner ([c0c62ac](https://github.com/aegisx-platform/aegisx-starter/commit/c0c62acff4c8b83d824e594ebd8a1d512bb25af0))

## [1.45.11](https://github.com/aegisx-platform/aegisx-starter/compare/v1.45.10...v1.45.11) (2026-04-29)

### Bug Fixes

- **deploy:** map MIGRATION_ENCRYPTION_KEY into api container ([0c2b475](https://github.com/aegisx-platform/aegisx-starter/commit/0c2b475755f34ec79eec92dc56ee8fae979cc15f))

## [1.45.10](https://github.com/aegisx-platform/aegisx-starter/compare/v1.45.9...v1.45.10) (2026-04-27)

### Performance Improvements

- **api:** disable Fastify exposeHeadRoutes — schema compile -30% ([2f0bddf](https://github.com/aegisx-platform/aegisx-starter/commit/2f0bddf9aa1b3d26606d6b760c59a9ef9d433e1c))

## [1.45.9](https://github.com/aegisx-platform/aegisx-starter/compare/v1.45.8...v1.45.9) (2026-04-25)

### Bug Fixes

- **api:** build schemas with API_PREFIX=/api to match runtime ([c40a708](https://github.com/aegisx-platform/aegisx-starter/commit/c40a70875887b0d98e266eab90d388498dcf3db9))

## [1.45.8](https://github.com/aegisx-platform/aegisx-starter/compare/v1.45.7...v1.45.8) (2026-04-25)

### Bug Fixes

- **procurement:** pass FastifyInstance to ContractPricingService ([52ec95b](https://github.com/aegisx-platform/aegisx-starter/commit/52ec95bb1e13052e91085f279f41e4a72ac0313c))

## [1.45.7](https://github.com/aegisx-platform/aegisx-starter/compare/v1.45.6...v1.45.7) (2026-04-25)

### Bug Fixes

- **api:** gate DB-touching startup paths on COMPILE_SCHEMAS ([79356c0](https://github.com/aegisx-platform/aegisx-starter/commit/79356c0c014b258940e63310f24addd2cc9118b8))

## [1.45.6](https://github.com/aegisx-platform/aegisx-starter/compare/v1.45.5...v1.45.6) (2026-04-25)

### Bug Fixes

- **api:** provide build-time env vars so schema pre-compile actually runs ([c50a75e](https://github.com/aegisx-platform/aegisx-starter/commit/c50a75ecb638d6fc811936e3ff0a043231a35ab8))

## [1.45.5](https://github.com/aegisx-platform/aegisx-starter/compare/v1.45.4...v1.45.5) (2026-04-25)

### Bug Fixes

- **migration:** restore 20260322300001_add_default_location_to_his_settings ([6a37654](https://github.com/aegisx-platform/aegisx-starter/commit/6a37654df56ee7433f4a717a6d66aa101b0f259f))

## [1.45.4](https://github.com/aegisx-platform/aegisx-starter/compare/v1.45.3...v1.45.4) (2026-04-25)

### Bug Fixes

- **ci:** update only affected apps in deploy_staging/production ([c986ab0](https://github.com/aegisx-platform/aegisx-starter/commit/c986ab096186671cb8adf1fb372ab0e14d60a988))

## [1.45.3](https://github.com/aegisx-platform/aegisx-starter/compare/v1.45.2...v1.45.3) (2026-04-25)

### Bug Fixes

- **ci:** remove ghost apps from release workflow — only api + web exist ([1a6ae70](https://github.com/aegisx-platform/aegisx-starter/commit/1a6ae70b85ac37a44968882028761cb8e6e73bc6))

## [1.45.2](https://github.com/aegisx-platform/aegisx-starter/compare/v1.45.1...v1.45.2) (2026-04-25)

### Bug Fixes

- **docker:** bump web build heap to 8192 MB — 4096 not enough ([5418ae1](https://github.com/aegisx-platform/aegisx-starter/commit/5418ae14643556d965ab2898e98fbbdae22ceb76))

## [1.45.1](https://github.com/aegisx-platform/aegisx-starter/compare/v1.45.0...v1.45.1) (2026-04-25)

### Bug Fixes

- **docker:** unignore scripts/ — required by api Dockerfile COPY ([1e0d739](https://github.com/aegisx-platform/aegisx-starter/commit/1e0d739b10bb4efa676065aee89157f37d903e3f))

# [1.45.0](https://github.com/aegisx-platform/aegisx-starter/compare/v1.44.1...v1.45.0) (2026-04-25)

### Bug Fixes

- address code review findings from dashboard redesign ([83ee21b](https://github.com/aegisx-platform/aegisx-starter/commit/83ee21b57e060b80379e5fa3da309289db3f2e40))
- address code-review findings on workflow improvements ([28f049d](https://github.com/aegisx-platform/aegisx-starter/commit/28f049d27afb494f204757295933cc63a7cc2ba0))
- address second review round (H1 comment accuracy + H2 ignore list) ([bddf199](https://github.com/aegisx-platform/aegisx-starter/commit/bddf199298b6420b7e533d1b64510ea4d38d751e))
- **aegisx-ui:** .dialog-fullscreen overrides inner .dialog-content caps ([87e6781](https://github.com/aegisx-platform/aegisx-starter/commit/87e6781ac82cfdcb1e2ba99a12109217ed3c63f9))
- **aegisx-ui:** ax-protected-field label stuck not floating on async patchValue ([b9340c6](https://github.com/aegisx-platform/aegisx-starter/commit/b9340c6f01d6aa4f2e519b0851415eb9195910e5))
- **aegisx-ui:** equal-height utility + compact dashboard layout ([ad2a15d](https://github.com/aegisx-platform/aegisx-starter/commit/ad2a15db7b0d3ea0a55dbc526fe9786b13a6a3d7))
- **aegisx-ui:** resolve a11y and empty-function lint errors ([5652690](https://github.com/aegisx-platform/aegisx-starter/commit/5652690a1cadc45e257061af6081818cd55f3824))
- **aegisx-ui:** step-progress uses semantic tokens — bump to v0.5.4 ([fd87bbc](https://github.com/aegisx-platform/aegisx-starter/commit/fd87bbc1b7e749bbaced4398878b64bede72f5b1)), closes [#22c55e](https://github.com/aegisx-platform/aegisx-starter/issues/22c55e) [#6366f1](https://github.com/aegisx-platform/aegisx-starter/issues/6366f1)
- **aegisx-ui:** use strict inequality in stat-card template ([1e4f4fb](https://github.com/aegisx-platform/aegisx-starter/commit/1e4f4fb1922bc0b54427c243fd7c14ee21c39b9d))
- **api:** address code review — schema validation, type safety, compare_year null handling ([0b99f98](https://github.com/aegisx-platform/aegisx-starter/commit/0b99f98a98426e9447e17637efc9a9a336b74c69))
- **api:** auto-init workflow_tracking for PO bypass-create paths ([60875d3](https://github.com/aegisx-platform/aegisx-starter/commit/60875d36c79b0d23dfb0e5692715eda701b23076))
- **api:** companies search by code + tax_id, not just name ([c2651e0](https://github.com/aegisx-platform/aegisx-starter/commit/c2651e0538a33c1e15db9406135c78e8541450d8))
- **api:** contract update now saves contract_items (insert + update) ([f74c68d](https://github.com/aegisx-platform/aegisx-starter/commit/f74c68d35de0dfae54523949e808969c437ed1a8))
- **api:** expand IN () placeholders + cast enum status to text ([68df228](https://github.com/aegisx-platform/aegisx-starter/commit/68df22868a2686571d378595253a41654f5a3172))
- **api:** expose contract_id across vendor-selection + PO responses ([487e31a](https://github.com/aegisx-platform/aegisx-starter/commit/487e31a7e7766eaf1dd7b7ec1b5944ffb3025da8))
- **api:** generatePOs cleanup on failure — revert selections + delete orphan POs ([a538aea](https://github.com/aegisx-platform/aegisx-starter/commit/a538aeab51b7cdaba6bdf249a7055f34c980411f))
- **api:** handle bigint id as string + switch ANY() to IN () for workflow_summary ([e584e2f](https://github.com/aegisx-platform/aegisx-starter/commit/e584e2fba9dae16ffebbdb51a246222331787fe0))
- **api:** PO delete/cancel reverts vendor selections to MATCHED ([8727ef4](https://github.com/aegisx-platform/aegisx-starter/commit/8727ef40c060606a264458fa0c164565dcf589a1))
- **api:** reject qty<=0 and duplicate vendor with Thai errors ([9ee0748](https://github.com/aegisx-platform/aegisx-starter/commit/9ee0748c6f6dcdbdf1c2e68b0fb55c6b4b4685c1))
- **api:** smart match AMBER picks cheapest drug, not most recent PO ([10b8df7](https://github.com/aegisx-platform/aegisx-starter/commit/10b8df7aa97db065772b031917f8abdb483abefb))
- **api:** smart match warns when cheaper alternative exists ([5bd47ca](https://github.com/aegisx-platform/aegisx-starter/commit/5bd47ca97eb99d9d004aa23ca6959592b3a7c436))
- **api:** sync workflow_tracking after sendToVendor flips PO status ([162cbc4](https://github.com/aegisx-platform/aegisx-starter/commit/162cbc4956384cf543fa40a637dc77d00d1732e7))
- **api:** type NavItemInput in navigation seed ([0e07274](https://github.com/aegisx-platform/aegisx-starter/commit/0e072741ca59880bbd50b48c06bec6bf986aab06))
- **api:** vendor selection trigger converts PR qty to base units ([01ad738](https://github.com/aegisx-platform/aegisx-starter/commit/01ad738e9ca528964662341b38213e0f995ab336))
- **assets:** crop horizontal logo SVG viewBox to remove whitespace ([f075b5e](https://github.com/aegisx-platform/aegisx-starter/commit/f075b5ebbc05ce735315191e983bdeabd2ee88cb))
- **assets:** unescape template literal in icon-color-map.ts ([c9e24d5](https://github.com/aegisx-platform/aegisx-starter/commit/c9e24d55aa8d4f9675784b81af60f1c9b822ad79))
- **auth:** add MaxSessionsReachedResponseSchema for proper 409 serialization ([69c73d0](https://github.com/aegisx-platform/aegisx-starter/commit/69c73d0d0376ec8a1a0a451ca500025b98661bad))
- **auth:** dedupe concurrent token refresh to prevent premature logout ([f366b96](https://github.com/aegisx-platform/aegisx-starter/commit/f366b969309b5abb4e74774974bfc63b8b64c1fe))
- **ax-stat-card:** widen [value] to accept null | undefined ([5e991fa](https://github.com/aegisx-platform/aegisx-starter/commit/5e991fae3328961e35c9a144356d08efbfdb7fa3))
- **budget-monitoring:** restore MatProgressBarModule — used by allocation table ([597b004](https://github.com/aegisx-platform/aegisx-starter/commit/597b0047ce68d4075a0220412c2887daa8f6477f))
- **budget:** display unit in Thai (EN) format in view + import dialogs ([7cde470](https://github.com/aegisx-platform/aegisx-starter/commit/7cde47031777e49eb073f4dbd51a0f76f4cd2673))
- **dashboard-summary:** require authentication on all endpoints ([c4e2384](https://github.com/aegisx-platform/aegisx-starter/commit/c4e2384247b095cfbfb56daff3dd8149de8ddf5d))
- **dashboard:** address code review findings ([9309519](https://github.com/aegisx-platform/aegisx-starter/commit/930951948a83b724f496049bb019d986a26741b5))
- **db:** drop NOT NULL on drug_lots.receipt_item_id ([09d5e60](https://github.com/aegisx-platform/aegisx-starter/commit/09d5e60dda0f445ba17fec31080c03883aed473f))
- **demo:** add 24/32px padding to layouts-demo content area ([48da11c](https://github.com/aegisx-platform/aegisx-starter/commit/48da11cff5d8fa4d120f3724f5ed47eccbe86886))
- **demo:** put sidebar-layout route before the shell route ([35e06b9](https://github.com/aegisx-platform/aegisx-starter/commit/35e06b9ca29eaadb1448c75ca84bc4ae64f4001e))
- **demo:** remove stray box-shadows from L2/L3/L7 demo cards ([56aab70](https://github.com/aegisx-platform/aegisx-starter/commit/56aab70c34ec562d445086c9af4aba69c339faf9))
- **deploy:** revert compose change + add scripts/ to Docker image ([222cd13](https://github.com/aegisx-platform/aegisx-starter/commit/222cd1319b083b744afecb9124e3e9508d6cc18b))
- **dialogs:** code review fixes — wrong variants + h1→h2 ([70ea3a7](https://github.com/aegisx-platform/aegisx-starter/commit/70ea3a71c2a1bb9e0aaf29c24a9045aac3099dea))
- **dispensing:** address code review findings from Phase 0 ([0bbaf76](https://github.com/aegisx-platform/aegisx-starter/commit/0bbaf7612d77b5daa03dc35e23041ddf7bdc6e01))
- **dispensing:** address code-review findings (C1/H1/H2/H3/M1) ([506be8a](https://github.com/aegisx-platform/aegisx-starter/commit/506be8aaebe8258a6add2fd65f92b636aa0fa8de))
- **dispensing:** address Phase 1 code review findings ([bc24dd0](https://github.com/aegisx-platform/aegisx-starter/commit/bc24dd0571aa857172e156ae7b5648b6e8e220a7))
- **dispensing:** address Phase 2 code review findings ([4dd2ce4](https://github.com/aegisx-platform/aegisx-starter/commit/4dd2ce45df290d80d0b76fa03d7db69420132dff))
- **dispensing:** address Phase 3 code review findings ([d3bfddf](https://github.com/aegisx-platform/aegisx-starter/commit/d3bfddfa5c871b7b5812d81963f1af644b94cccb))
- **dispensing:** address Phase 5 code review findings ([20e143b](https://github.com/aegisx-platform/aegisx-starter/commit/20e143be1177b550148b01c968ce3d7b62d3f0d2))
- **dispensing:** address review of c1/b7 (sync-tab exact + strip dup crumbs + type settings) ([dffd26b](https://github.com/aegisx-platform/aegisx-starter/commit/dffd26befe5ee7e6a2fe3a9475230bebe96b119f))
- **dispensing:** correctness + concurrency fixes from phase-7 review ([bd08ed3](https://github.com/aegisx-platform/aegisx-starter/commit/bd08ed30c20be6a8dc3656eef9678d4a5cef4f40))
- **dispensing:** fix missing > closing bracket on td tag in summary ([178cabd](https://github.com/aegisx-platform/aegisx-starter/commit/178cabd7c084a79745fc784393cf2647aef9f179))
- **dispensing:** fix missing > closing brackets on sidebar + lot-table tags ([3bb8490](https://github.com/aegisx-platform/aegisx-starter/commit/3bb849030058b4121b057b3be111a9a3a5f4bbb2))
- **dispensing:** fix missing > on strong tag in lot-table ([a8dd46b](https://github.com/aegisx-platform/aegisx-starter/commit/a8dd46b7f3e9c0e70139d7d6f898d034aa9e4eac))
- **dispensing:** normalize dates, pass-through empty field_mapping, map location ([d479fff](https://github.com/aegisx-platform/aegisx-starter/commit/d479fff5b341e37bdb5fd2630ad7714b0dae6ea8))
- **dispensing:** normalize PG types in patient-dispensings repository ([ea36022](https://github.com/aegisx-platform/aegisx-starter/commit/ea36022c814a8ecafb4bef9e3a460fb51db0133f))
- **dispensing:** phase 1 review — header spacing + breadcrumb consistency ([7785377](https://github.com/aegisx-platform/aegisx-starter/commit/778537748c71a9f665f26eb91ff6eee83baed871))
- **dispensing:** phase 2 review — use /sync/running endpoint for running KPI ([aba01a2](https://github.com/aegisx-platform/aegisx-starter/commit/aba01a2e3c6bf59e8fa6f0e8f9bbec71dac3b8e2))
- **dispensing:** phase 3 review — reports + patient-dispensings empty states ([cc6be8a](https://github.com/aegisx-platform/aegisx-starter/commit/cc6be8ac7894c3a6aec3e7428706ac024f80b2c1))
- **dispensing:** post-merge review — routerLink, OnPush, double-fire, tokens ([f27a1a1](https://github.com/aegisx-platform/aegisx-starter/commit/f27a1a18b2b4af745d0c65f14f1885edb419b939))
- **dispensing:** row-lock failed-records on retry and mark-permanent ([27d7ae6](https://github.com/aegisx-platform/aegisx-starter/commit/27d7ae6afdb249063e0450cf16360b0a04e5a8dd))
- **dispensing:** security hardening + route-order + UI fixes ([518d383](https://github.com/aegisx-platform/aegisx-starter/commit/518d3833d795591af7134b999999c413c706e848))
- **dispensing:** standardize drug-mapping breadcrumb to match peer leaves ([75d9dcb](https://github.com/aegisx-platform/aegisx-starter/commit/75d9dcb7f5a09d5961fcf107134e415ffcf5c78e))
- **dispensing:** tier A — close navigation gaps + replace browser prompt ([e993b86](https://github.com/aegisx-platform/aegisx-starter/commit/e993b86317219387e6041fd5570efcf5d20babd1)), closes [#5](https://github.com/aegisx-platform/aegisx-starter/issues/5)
- **dispensing:** use correct AegisX theme tokens for light+dark mode ([bc47810](https://github.com/aegisx-platform/aegisx-starter/commit/bc478109e6b2bfd35d29362b8cc8addf1a401bae))
- **disposal:** replace \*ngIf with [@if](https://github.com/if) in reject dialog ([e8e8ef7](https://github.com/aegisx-platform/aegisx-starter/commit/e8e8ef70914f6cf1c5a3f7f667119282d96aa6c1))
- **distribution:** auto-set approved_qty = requested_qty on approve ([a88f4ff](https://github.com/aegisx-platform/aegisx-starter/commit/a88f4ff3b0c36c32b88938177c1b70b50b3585bf))
- **distribution:** use recursive CTE for descendant location lookup ([f1a32c5](https://github.com/aegisx-platform/aegisx-starter/commit/f1a32c542cfcec03ad3825982912f52fa3b73506))
- **drug-form:** alignment polish for form tabs ([2df705b](https://github.com/aegisx-platform/aegisx-starter/commit/2df705b7ae063385456ed4da188d8f694732a8fb))
- **drug-generics import:** show progress step while importing ([92c5f58](https://github.com/aegisx-platform/aegisx-starter/commit/92c5f584e47eaaa1634344f1d740c90c9d701cfc))
- **drug-generics list:** remove duplicate tmt_gpf_code column ([e04c9ac](https://github.com/aegisx-platform/aegisx-starter/commit/e04c9acfef0ea93fd3db1453c057c358bf6643fc))
- **drug-generics:** expand strength unit dropdown + clean save button ([884d5e8](https://github.com/aegisx-platform/aegisx-starter/commit/884d5e8d695e5742d967dc6846536656a814877d))
- **drug-generics:** LAC cleanup + import extensions + better errors ([d0d3a0d](https://github.com/aegisx-platform/aegisx-starter/commit/d0d3a0dced1de9eb43c0cdbee600a188edd84848))
- **drug-generics:** replace stale tmt_gpu/gpx refs with tmt_gpf ([fbe1073](https://github.com/aegisx-platform/aegisx-starter/commit/fbe1073dbab21783e1d00d9ddb9c031ad8a5bac1))
- **drug-generics:** wire TMT fields through controller + repository ([9a9682b](https://github.com/aegisx-platform/aegisx-starter/commit/9a9682b5c49d56ffe9580930bb9550a3a475d0c8))
- **drug-reference-prices:** button style hierarchy + icon spacing under @if/[@else](https://github.com/else) ([b93e670](https://github.com/aegisx-platform/aegisx-starter/commit/b93e670e0e35ab0c3c16da305a0314ff68a8f4d5))
- **drug-reference-prices:** fix DMSIC import parsing + add missing preview columns + stats ([8b2487f](https://github.com/aegisx-platform/aegisx-starter/commit/8b2487f2e1d6b021b07938d0cdd894a45c01c6d6))
- **drug-reference-prices:** update source stats after FDA import ([0aa6b52](https://github.com/aegisx-platform/aegisx-starter/commit/0aa6b52edf953bee7df1b1635b00eae410cab876))
- **drug-suppliers:** migrate remaining manufacturer_id refs to drug_suppliers M:N ([b98ca11](https://github.com/aegisx-platform/aegisx-starter/commit/b98ca11efdd5bfb275a42bb7b49ad7d10f676eba))
- **drugs dialog:** fetch generic by id when outside first 200 loaded ([8a827c5](https://github.com/aegisx-platform/aegisx-starter/commit/8a827c51539d47d5a454d8c2a1043eac09c36bc6))
- **drugs form page:** fetch generic by id for display label ([3ea11dd](https://github.com/aegisx-platform/aegisx-starter/commit/3ea11ddaab4c7827c7d2bee78459f4be3a4aabd3))
- **drugs form:** await ensureCurrentOptionsInDropdowns before render ([5c76623](https://github.com/aegisx-platform/aegisx-starter/commit/5c766234b999f6bcee5280477ea1085f2a33dee3))
- **drugs form:** load FK labels BEFORE patchValue ([1023c81](https://github.com/aegisx-platform/aegisx-starter/commit/1023c816d32c2d366b4b7fbe2721b36debe044dc))
- **drugs-browse:** clamp master-detail to dynamic viewport height ([9c143a3](https://github.com/aegisx-platform/aegisx-starter/commit/9c143a3ca475d2cb61c316578d407e81a9891d45))
- **drugs-browse:** fetch generic name when not in pre-loaded lookup ([72be477](https://github.com/aegisx-platform/aegisx-starter/commit/72be4778c3bb0be231ae45c97fb330f6876aeb0d))
- **drugs-browse:** merge duplicate class attribute breaking stat-strip flex layout ([ad1cb91](https://github.com/aegisx-platform/aegisx-starter/commit/ad1cb91cd7463e2c4d12600c006162f71d93bb34))
- **drugs-browse:** restore AxCardHeaderComponent import — still used in detail panel ([ba0f5a7](https://github.com/aegisx-platform/aegisx-starter/commit/ba0f5a7b3e5d9f8b5b49203028167c35fd08a2ec))
- **drugs.repository:** resolve remaining TS errors ([0a510be](https://github.com/aegisx-platform/aegisx-starter/commit/0a510befa2f78e8d1408cd0984abfb61102fdc3c))
- **drugs:** address code review — auth, file limit, transaction, error handling ([18dd7d0](https://github.com/aegisx-platform/aegisx-starter/commit/18dd7d0afcb687f58d18c3e5468f9169521db4dc))
- **drugs:** hide mapping stats content when collapsed ([ec95583](https://github.com/aegisx-platform/aegisx-starter/commit/ec955830e6b21c662acc1abbb426268915b85ca2))
- **drugs:** match vertical spacing between list and browse headers ([332be1b](https://github.com/aegisx-platform/aegisx-starter/commit/332be1bee6564d12749c271990edd9f9a7811e2f))
- **drugs:** polish browse page — dynamic height, fix SQL, hide footer, UX tweaks ([db2f9a9](https://github.com/aegisx-platform/aegisx-starter/commit/db2f9a952ec6d6b8a2e50a4d7fcbbc3e4f157f18))
- **drugs:** remove fullWidth route flag so shell padding wraps the page ([63d8893](https://github.com/aegisx-platform/aegisx-starter/commit/63d889399ed7d3e3950d09f90f3ce4b1c2be3432))
- **drugs:** sync DrugsEntity with schema, add generic_name to TpuWithHistory ([6170fd9](https://github.com/aegisx-platform/aegisx-starter/commit/6170fd91d905a9272bf12bf6d8b625934689da5a))
- **drugs:** unify ax-card-header padding across drug pages ([8c06d0c](https://github.com/aegisx-platform/aegisx-starter/commit/8c06d0ce77d6aa761392068cf70b07d7785db3c7))
- **images:** support DATABASE\_\* env vars in import-drug-images.js ([c56b51a](https://github.com/aegisx-platform/aegisx-starter/commit/c56b51a04a19e7fc07c5c2b3538f47c413567d54))
- **import:** add stop words to company partial match ([7b969cf](https://github.com/aegisx-platform/aegisx-starter/commit/7b969cfe0fe14b1299d8ff7738e76d9511431ce1))
- **import:** add unit aliases + widen unit_code + strip leading digits ([c19a4dc](https://github.com/aegisx-platform/aegisx-starter/commit/c19a4dcaf1facb9bb496b78868fdb9b20798805c))
- **import:** auto-created companies default to is_vendor=true ([a6e0bfb](https://github.com/aegisx-platform/aegisx-starter/commit/a6e0bfb846f83d2ae623d7bbcce01d9490e2ee45))
- **import:** handle re-import with changed manufacturer correctly ([5832cca](https://github.com/aegisx-platform/aegisx-starter/commit/5832cca2a35c84a51d14b3aa348edaeb06bf0a6e))
- **import:** only auto-create companies with Thai names ([f0dcc7b](https://github.com/aegisx-platform/aegisx-starter/commit/f0dcc7bf925d0fcbf46afe602cc4d5619bb47be5))
- **import:** remove Thai-only check — auto-create from any import file ([588df01](https://github.com/aegisx-platform/aegisx-starter/commit/588df01224b08bb143379c3e5a3347662de44352))
- **import:** restore auto-create for hospital drug import, keep disabled for TMT ([764e03a](https://github.com/aegisx-platform/aegisx-starter/commit/764e03a426fe4af678fe460840484bdcabdb0b8d))
- **import:** stop auto-creating manufacturer companies from TMT names ([5302272](https://github.com/aegisx-platform/aegisx-starter/commit/5302272484e4224cbf9cd48173ee8232ca2508be))
- **inventory-dashboard:** strip page-level bg, let layout own it ([9589992](https://github.com/aegisx-platform/aegisx-starter/commit/958999211284a6179f08a6b9d68444b1f2d47b71))
- **inventory-dashboard:** use --ax-background-page for wrapper bg ([df30917](https://github.com/aegisx-platform/aegisx-starter/commit/df30917ce219e832217a07b8a7f4c8c06d73cd88))
- **inventory-levels:** exclude BIN locations from warehouse filter ([09f00f9](https://github.com/aegisx-platform/aegisx-starter/commit/09f00f9903846e9efb775b86211fdfb18b2d5650))
- **inventory:** replace wrong CSS tokens across all modules ([f7f4787](https://github.com/aegisx-platform/aegisx-starter/commit/f7f47871fa81e40cdfbf12ad604e8ecdc47be165))
- **layouts-demo:** wrap hardcoded colors in tokens for L8/L9 ([463c5e4](https://github.com/aegisx-platform/aegisx-starter/commit/463c5e446e7bd384415bc0455181c7b3e8fa9bee))
- **locations:** enforce 1-warehouse-1-root hierarchy + BIN-only recursion ([df07c4f](https://github.com/aegisx-platform/aegisx-starter/commit/df07c4faaefea6872cb165d0b4c9be4e388c8341))
- **locations:** exclude BINs from warehouse-selection dropdowns ([b1bb076](https://github.com/aegisx-platform/aegisx-starter/commit/b1bb076d95f6814c7dcf568fcab881ccee189e83))
- **main-warehouse:** use correct AegisX theme tokens across all pages ([b85f66f](https://github.com/aegisx-platform/aegisx-starter/commit/b85f66faa7b3226e26eed654e3055a2d5b6b0c44))
- **matching:** cast BIGINT pr_item_id/generic_id in getPRItemsForMatching ([47d9c15](https://github.com/aegisx-platform/aegisx-starter/commit/47d9c1511ee5b2ebedf88bf3ce0c9bb04364c87f))
- **matching:** guard pack_ratios join with is_default to prevent row duplication ([24736bf](https://github.com/aegisx-platform/aegisx-starter/commit/24736bfdab54c6f0610df39bf90f95f24eab4cd9))
- **matching:** include vendor+drug in [@for](https://github.com/for) track key to force VendorLine recreate ([c214f6e](https://github.com/aegisx-platform/aegisx-starter/commit/c214f6ef3e6ea8b0f94d2b0e91c92c8d61e3617b))
- **matching:** initialize \_state from value() in constructor before first render ([c677797](https://github.com/aegisx-platform/aegisx-starter/commit/c67779703f55d889904a37aeacf5b28b011ed3fc))
- **matching:** markForCheck after effect state replace for mat-select ([f1464a8](https://github.com/aegisx-platform/aegisx-starter/commit/f1464a87a2d645a49c3f1ee297c576440da2081e))
- **matching:** replace effect+signal with linkedSignal for state sync ([c0d2f5e](https://github.com/aegisx-platform/aegisx-starter/commit/c0d2f5eeb37c8c8b5d1f9cdaecb377ee530093e3))
- **matching:** resolve pack from available_packs instead of relying on backend package_id ([c9dfb4d](https://github.com/aegisx-platform/aegisx-starter/commit/c9dfb4d21417be3143311513c17dac6211aecc2d))
- **matching:** resolve pack in onAcceptRecommendation same as prRequestedToLine ([c6fc054](https://github.com/aegisx-platform/aegisx-starter/commit/c6fc05437f115a8c9f30032c8dbccd6ce17a6546))
- **matching:** resolve package_id from available_packs in ALL code paths ([0f17d99](https://github.com/aegisx-platform/aegisx-starter/commit/0f17d99d7d251174d9d108628775c278ed849dfb)), closes [#2](https://github.com/aegisx-platform/aegisx-starter/issues/2)
- **matching:** resolve package_id in existingToLine from available_packs ([d2d232d](https://github.com/aegisx-platform/aegisx-starter/commit/d2d232dd908de98ae3ffa242893c5c72405bf3b6))
- **matching:** restore saved contract_id when re-opening the matching page ([1a24a63](https://github.com/aegisx-platform/aegisx-starter/commit/1a24a63d3879d1251f285096f9072fe4d8d9c535))
- **matching:** revert constructor value() read (throws NG0950), use detectChanges ([959e029](https://github.com/aegisx-platform/aegisx-starter/commit/959e0293ad8aed932d080dc18067488c1c7bfec5))
- **matching:** VendorLine effect no longer reverts user's local edits ([65ead8e](https://github.com/aegisx-platform/aegisx-starter/commit/65ead8e709eb3df2600b21c474a79c4e71685d83))
- **mcp:** update aegisx_auth_login to use ticket-based force login ([d9d047f](https://github.com/aegisx-platform/aegisx-starter/commit/d9d047f75e71a29824d4b7fdc68750bf6cb85cc9))
- **migration:** add Excel upload route and integrate with import parser ([f4761e9](https://github.com/aegisx-platform/aegisx-starter/commit/f4761e9cea5749a1260e3ef388c3fbc6426d8004))
- **migration:** add missing tmt_tpu_id and status_changed_date to drug field definitions ([f2f6e37](https://github.com/aegisx-platform/aegisx-starter/commit/f2f6e37d4f9e59e42c395f14d3b7855788118a91))
- **migration:** add sidebar navigation, getting started, phase actions ([e7eecab](https://github.com/aegisx-platform/aegisx-starter/commit/e7eecab76cadce2161fe9b05a38d83b313de4f1e))
- **migration:** align entity fields with DB schema, fix NG0103, upsert, error UX ([f2f9162](https://github.com/aegisx-platform/aegisx-starter/commit/f2f91628552aa18444bef9698099113c868c650a))
- **migration:** align frontend types and URLs with backend API ([1c3aedd](https://github.com/aegisx-platform/aegisx-starter/commit/1c3aedd05ae1563502ba9b369336a74d1dd562fd))
- **migration:** complete all 11 entity types — add budgets fields, drug_lots resolver, fix field names ([3fd5ad9](https://github.com/aegisx-platform/aegisx-starter/commit/3fd5ad929a8bbb587bebdc5b9b84fb957290013f))
- **migration:** complete migration module — permissions, flows, UI fixes ([bc5bd21](https://github.com/aegisx-platform/aegisx-starter/commit/bc5bd2174c0744037beffc230d01d9cd9743db24))
- **migration:** correct phase and rollback_status comments in migration ([6c59598](https://github.com/aegisx-platform/aegisx-starter/commit/6c595982bb315f37cdc0f8f4be5b98409e545749))
- **migration:** DB import UX — reconnect, search tables, schema-qualified SQL ([8e29f63](https://github.com/aegisx-platform/aegisx-starter/commit/8e29f63b1b4315de189782e9795ee37c64e2544a))
- **migration:** fix template syntax and type compatibility errors ([a6c91d9](https://github.com/aegisx-platform/aegisx-starter/commit/a6c91d9fc4de5b5460d5fe90bcd5fce5362d3494))
- **migration:** resolve CRITICAL issues from code review (C1-C5) ([1117e79](https://github.com/aegisx-platform/aegisx-starter/commit/1117e792798490c969313e523e994438adcc37bc))
- **migration:** resolve HIGH issues from code review (H1-H6) ([5e06c29](https://github.com/aegisx-platform/aegisx-starter/commit/5e06c297022fccc2747c66c2c4f2eb03cd40c30d))
- **migration:** unify page layout — all pages use p-6 + max-w-7xl mx-auto ([9745b6c](https://github.com/aegisx-platform/aegisx-starter/commit/9745b6c398576ffcd9931152b96f5df094c3a3c9))
- **migration:** use xlsx library to parse Excel headers instead of readAsText ([e5a2628](https://github.com/aegisx-platform/aegisx-starter/commit/e5a2628529913307894d19fe6e0f4c0aed8c680d))
- **monitoring:** handle undefined error message in error queue flush ([52ac45c](https://github.com/aegisx-platform/aegisx-starter/commit/52ac45c48d57c832b5bd3ef0602186730e6254a7))
- **nav:** close dock panel when clicking any non-expanding module ([f443cfb](https://github.com/aegisx-platform/aegisx-starter/commit/f443cfb6e4c5c3bbe820a5278e93f2543bee5779))
- **nav:** keep parent module active when dock panel opens or child selected ([db86479](https://github.com/aegisx-platform/aegisx-starter/commit/db864796a481118765e21b79e9b37603f43d4b26))
- **nav:** rename dock-panel close output to closed (lint: no-output-native) ([e5a89ae](https://github.com/aegisx-platform/aegisx-starter/commit/e5a89aefe4366e9aa6447fcbd8c429b3605cf021))
- **p6-wizard:** step content fills 1080px for data-heavy steps ([21e46d9](https://github.com/aegisx-platform/aegisx-starter/commit/21e46d9f19a60ffee402e4ea223ac405119179c6))
- **p7-kiosk:** remove 1440 max-width — kiosk is full-bleed per playbook ([2a7f544](https://github.com/aegisx-platform/aegisx-starter/commit/2a7f5449a64d092f27812165e392a28a5ddea417))
- **pick-list-mobile:** totalRequested/Picked now derive from drugSummaries signal ([831533d](https://github.com/aegisx-platform/aegisx-starter/commit/831533d64e040bb37500aee6e951c0e500b06ad6))
- **pick-list:** code review fixes — critical + high + medium issues ([f6e00e4](https://github.com/aegisx-platform/aegisx-starter/commit/f6e00e40e52f9d078eefcda34e9c09d939f72258))
- **pick-list:** fallback to requested_qty when approved_qty is 0 ([42f279a](https://github.com/aegisx-platform/aegisx-starter/commit/42f279ac6281e8561a77cbfbf17c97fab9e407e6))
- **pick-list:** remaining review fixes — batch query + error logging ([b0d91d6](https://github.com/aegisx-platform/aegisx-starter/commit/b0d91d604e47d84cddac312b7f2cef13980e46cf))
- **playbook-demo:** restore '>' on P5 mat-table opening tag ([43e4b25](https://github.com/aegisx-platform/aegisx-starter/commit/43e4b25e7af19e869031233a407b637ed8c73b14))
- PO items 500 + visible Thai errors on the matching page ([02f312a](https://github.com/aegisx-platform/aegisx-starter/commit/02f312af1f90e5924915622f0a6249e47e0c8b40))
- **po:** remove generic unit fallback, block save when drug has no packs ([0d9ccc4](https://github.com/aegisx-platform/aegisx-starter/commit/0d9ccc4f6dcd232fc4a117e6c596bc1d041734ad))
- **po:** schema prefix in findById + add missing fields to PO items schema ([d1d5c43](https://github.com/aegisx-platform/aegisx-starter/commit/d1d5c437184e6988bea09707ece450ea97808387))
- **po:** show drug name prominently on edit + handle pack load error ([d390ce4](https://github.com/aegisx-platform/aegisx-starter/commit/d390ce457d340b4ebd81a19c76d6bb0a54476175))
- **po:** unit display Thai (EN) format in po-drug-selector ([7e79241](https://github.com/aegisx-platform/aegisx-starter/commit/7e79241c855b853609c3adfd32903188c79d5266))
- **ppk adapter:** add generic_code column to drugs output ([78bc42c](https://github.com/aegisx-platform/aegisx-starter/commit/78bc42ce59951252ef92e39945df99dd0a3bc2f3))
- **ppk:** use บริษัท column for vendor, not C Manufacturer (TMT) ([abe9655](https://github.com/aegisx-platform/aegisx-starter/commit/abe96553965353c2a4f6a31b376565b74c042b60))
- **procurement:** address workflow dialog code review ([002e909](https://github.com/aegisx-platform/aegisx-starter/commit/002e90932421f260bb5b22f1851c8047b59947b9))
- **procurement:** qty validation on bulkUpsert UPDATE + po_number collision ([b4b82e0](https://github.com/aegisx-platform/aegisx-starter/commit/b4b82e0c078b852572efafa58973140a4b3ca677))
- **procurement:** smart-match schema + contract check improvements ([01a3a3f](https://github.com/aegisx-platform/aegisx-starter/commit/01a3a3f66b8abba5e7ec1676ee58ed89356107b8))
- **purchase-requests:** return domain-specific stats (status buckets + approved amount) ([89b67f1](https://github.com/aegisx-platform/aegisx-starter/commit/89b67f1f2b4b88aa1e1a95dda62080c3f5b3ad8a))
- **rbac:** replace read-only permission matrix with interactive checkboxes ([83cf3bb](https://github.com/aegisx-platform/aegisx-starter/commit/83cf3bb2eaa9638649f6071091ffbce95953504c))
- **receipt:** fix pack dropdown API URL and display format ([3de2a44](https://github.com/aegisx-platform/aegisx-starter/commit/3de2a4478ba6e21c20fb0063a24d7e82ff4bab75))
- **receipt:** save and restore bin_location_id on receipt items ([5091cad](https://github.com/aegisx-platform/aegisx-starter/commit/5091cad274b34f51828d4b60ac33e0914d0d51e9))
- replace catch(err: any) with unknown, fix subscription leaks ([1164914](https://github.com/aegisx-platform/aegisx-starter/commit/1164914675522fdf455922931261899dea8d533c))
- resolve merge conflict in drugs-browse.page.ts ([1f8824d](https://github.com/aegisx-platform/aegisx-starter/commit/1f8824d1e33f2f41bca6a5ae65093d69b686dad7))
- **schema-compiler:** throw on missing compiled validator/serializer ([ee76f81](https://github.com/aegisx-platform/aegisx-starter/commit/ee76f81a22193789af61bca7849aca0bf716aa64))
- **seed:** disable drug_generics seed — import via prepare-generics.js ([7cbccd5](https://github.com/aegisx-platform/aegisx-starter/commit/7cbccd52294a27728ae3fb29ebcb4e65da5a5e1e))
- **settings:** load purchase methods from API instead of hardcoded 3 options ([71088ed](https://github.com/aegisx-platform/aegisx-starter/commit/71088edc68f7c79ab5c00cc19e5c7667d3d5b7a6))
- **stock-overview:** rollup bin stock into parent warehouse ([af20c4a](https://github.com/aegisx-platform/aegisx-starter/commit/af20c4ada6a6c90b757358086ced30e3b2bc5d8c))
- **stockcard:** fix fullscreen toggle — use closest('.cdk-overlay-pane') ([8b8c01a](https://github.com/aegisx-platform/aegisx-starter/commit/8b8c01ab8862bdd6b56f66a276874006863c36fd))
- **stockcard:** revert custom header color — use standard dialog style ([313a77b](https://github.com/aegisx-platform/aegisx-starter/commit/313a77b1006efb2f488a60ab06414e892f7311d3))
- **stockcard:** use quantity_available instead of quantity_on_hand in lot tab ([316f763](https://github.com/aegisx-platform/aegisx-starter/commit/316f7636a4ddca8b7cf2560fc905c445d47de032))
- **tmt import:** lookup parent/child by column name, not position ([2fc0755](https://github.com/aegisx-platform/aegisx-starter/commit/2fc07550c2dc56ed9421b287277a9feb1f4f5f83))
- **tmt migration:** cast enum to text to avoid 'unsafe use of new value' ([ffd10b1](https://github.com/aegisx-platform/aegisx-starter/commit/ffd10b114d75dae93bae2f42b658597283ab822e))
- **tmt:** add tmt_gpu_id/code to GPU sync ON CONFLICT update ([855b1a9](https://github.com/aegisx-platform/aegisx-starter/commit/855b1a95243835a7adc93f3ef1bc51810ee5f668))
- **tmt:** code review fixes — nullable manufacturerId + trailing comma ([43ed6eb](https://github.com/aegisx-platform/aegisx-starter/commit/43ed6ebdfcf5bc272a5c5e501db7d7f9c9fff52e))
- **tmt:** correct VTM→GP direction + neutralize legacy TMT seeds ([dc52165](https://github.com/aegisx-platform/aegisx-starter/commit/dc521651d83d1061e0889f43e1d65b5fa686d341))
- **tmt:** filter tmtCodes per table in createMapping + stale JSDoc ([aabb5bf](https://github.com/aegisx-platform/aegisx-starter/commit/aabb5bf0bbc06024b4c17f3a5a0b0b299a92a95e))
- **tmt:** purge orphan tmt_gpf/gpx refs across runtime code ([799d5bf](https://github.com/aegisx-platform/aegisx-starter/commit/799d5bf1f32826b6a062bf215d47e7d55fa3c982))
- **tmt:** split getUnmappedItems select + missing_codes per table ([1fba72c](https://github.com/aegisx-platform/aegisx-starter/commit/1fba72cf2cce2ea6a8d6e80c691ec2d6161eb952))
- **ui/bar-chart-area:** resolve --ax-dashboard-accent tokens to hex ([d20db81](https://github.com/aegisx-platform/aegisx-starter/commit/d20db81ccc6c9b868508d5983b890c1b6d9bceed)), closes [#3b82f6](https://github.com/aegisx-platform/aegisx-starter/issues/3b82f6) [#93c5fd](https://github.com/aegisx-platform/aegisx-starter/issues/93c5fd)
- **ui/dashboard-panel:** rename slot directive to [axNav] + declare chart deps ([cfd7358](https://github.com/aegisx-platform/aegisx-starter/commit/cfd7358eb7761b16137be2858dedf73b4a310890))
- **ui+api:** drug-registry use ax-page-shell + fix /api/ prefix + parse PG array ([6ce1791](https://github.com/aegisx-platform/aegisx-starter/commit/6ce1791165070cadf889f51265463145584c6338))
- **ui:** add backdrop overlay to app switcher dialog ([f55f75a](https://github.com/aegisx-platform/aegisx-starter/commit/f55f75af24a96ffe2278d28ff18f87f1f9d4f3fd))
- **ui:** add backward compat inputs to ax-error-state — statusCode, message, actions still work ([b62e2f8](https://github.com/aegisx-platform/aegisx-starter/commit/b62e2f89eecb82f9e8d1d3f48abb96f6a2e996fb))
- **ui:** add font-family inherit to all remaining nav components ([991efe7](https://github.com/aegisx-platform/aegisx-starter/commit/991efe709f6fe8a30ef0fbdbe907db90efeb862e))
- **ui:** add missing dark theme nav variables + fix demo colors ([50f87d0](https://github.com/aegisx-platform/aegisx-starter/commit/50f87d0c448091359a34f63672cf272ec3495af9))
- **ui:** address code review — dead SCSS, SSR guard, CommonModule, ARIA, DestroyRef ([9ded322](https://github.com/aegisx-platform/aegisx-starter/commit/9ded322b870b8eb197d26e68ed900268a0acf1cf)), closes [#userMenu](https://github.com/aegisx-platform/aegisx-starter/issues/userMenu) [#ffffff](https://github.com/aegisx-platform/aegisx-starter/issues/ffffff)
- **ui:** address code review issues in section-card and info-row ([ec4104d](https://github.com/aegisx-platform/aegisx-starter/commit/ec4104d9e0a55f9ce0594aacf849315af9434e13)), closes [#3](https://github.com/aegisx-platform/aegisx-starter/issues/3) [#4](https://github.com/aegisx-platform/aegisx-starter/issues/4) [#19](https://github.com/aegisx-platform/aegisx-starter/issues/19)
- **ui:** address code review issues in sidebar-layout and page-shell ([f34ff36](https://github.com/aegisx-platform/aegisx-starter/commit/f34ff368eb3e3d13f22063e8e51cd5040a2ca1a3)), closes [#1](https://github.com/aegisx-platform/aegisx-starter/issues/1) [#7](https://github.com/aegisx-platform/aegisx-starter/issues/7) [#8](https://github.com/aegisx-platform/aegisx-starter/issues/8) [#8](https://github.com/aegisx-platform/aegisx-starter/issues/8) [#6](https://github.com/aegisx-platform/aegisx-starter/issues/6) [#5](https://github.com/aegisx-platform/aegisx-starter/issues/5) [#childMenu](https://github.com/aegisx-platform/aegisx-starter/issues/childMenu) [#2](https://github.com/aegisx-platform/aegisx-starter/issues/2)
- **ui:** address remaining review issues — signals, template ordering, system-shell ([75378ad](https://github.com/aegisx-platform/aegisx-starter/commit/75378adc271b65ae29d2e547d1c949ed0d4fa1a8))
- **ui:** contract vendor field — autocomplete instead of dropdown ([cdd9f08](https://github.com/aegisx-platform/aegisx-starter/commit/cdd9f08a4b736ef9148e164501e5384267738468))
- **ui:** fix a11y lint errors — add keyboard events and ARIA roles to overlays ([b9092c9](https://github.com/aegisx-platform/aegisx-starter/commit/b9092c961fd58ea2c2dfc8ccc606ca5c79e09ed4))
- **ui:** fix code review issues in event-based nav ([0caeb50](https://github.com/aegisx-platform/aegisx-starter/commit/0caeb509aa16479968c47a3b35076f41ca4612cd))
- **ui:** fix nav shell review issues — DestroyRef, token usage, height, matching ([a15e416](https://github.com/aegisx-platform/aegisx-starter/commit/a15e4166e413d6033aeaa8a844b6082379c28230))
- **ui:** fix Phase 2 review — dialog guard, CSS tokens, computed, ARIA ([7782ad6](https://github.com/aegisx-platform/aegisx-starter/commit/7782ad62882bf74a184b7aa8870fd313d448ef70))
- **ui:** fix Phase 3 review — comment typo, tokenize topbar text color ([e8e4b7e](https://github.com/aegisx-platform/aegisx-starter/commit/e8e4b7e20dd715427ef56f8e81c0cf0febe66358))
- **ui:** modernize enterprise-layout — OnPush, no CommonModule, fix hardcoded hex ([e1b6f80](https://github.com/aegisx-platform/aegisx-starter/commit/e1b6f80135dce0aafb4cd6fd2efd22af338896bc))
- **ui:** move ax-loading-bar out of the sidebar-layout grid container ([441cb5f](https://github.com/aegisx-platform/aegisx-starter/commit/441cb5f56b1c7be83946709170eece463ef5c9d2))
- **ui:** nav-item host display block + topbar width auto + hide badge on dock active ([d3376c4](https://github.com/aegisx-platform/aegisx-starter/commit/d3376c418b56c3d5990fdab5a828c859e937f4c4))
- **ui:** normalize nav shell spacing — divider margins, dock gap, button radius ([a1e580d](https://github.com/aegisx-platform/aegisx-starter/commit/a1e580d758494bc5819eb65d14625e3019eaaafe))
- **ui:** PR action errors show dialog instead of replacing list page ([8ff3e17](https://github.com/aegisx-platform/aegisx-starter/commit/8ff3e17e67fa311e15134d78c9293b42f0a8d7b3))
- **ui:** proper SVG icon sizing in enterprise + sidebar nav links ([84088f6](https://github.com/aegisx-platform/aegisx-starter/commit/84088f6eaae68bfdb6ba4e21481abfed130852d0))
- **ui:** refine nav user menu — icon layout switcher, topnav positioning, quieter logout ([e1b3a93](https://github.com/aegisx-platform/aegisx-starter/commit/e1b3a93f19d09e86576c4cd720aee91a727916d2))
- **ui:** remove 10 unused inventory components from aegisx-ui ([536d454](https://github.com/aegisx-platform/aegisx-starter/commit/536d4546f5958fa9221376884939a6d847681597))
- **ui:** remove console.log from theme service + CommonModule from theme-switcher ([0d10715](https://github.com/aegisx-platform/aegisx-starter/commit/0d1071581d611177b796a78489e71f00792ef0b8))
- **ui:** remove duplicate header on sub-warehouse inventory-levels page ([510b78a](https://github.com/aegisx-platform/aegisx-starter/commit/510b78a2539feeb940f71af2c8d7265fc7406ac4))
- **ui:** remove print button from budget dashboard — unused feature ([e21920e](https://github.com/aegisx-platform/aegisx-starter/commit/e21920e2f1b3acc88077597d73edf517ff38693e))
- **ui:** remove unnecessary optional chaining in image-preview template ([3dcc276](https://github.com/aegisx-platform/aegisx-starter/commit/3dcc2763099f7c3f9f4341f4f0fdd238831a3872))
- **ui:** replace hardcoded font-family with CSS variables ([5a5e6d0](https://github.com/aegisx-platform/aegisx-starter/commit/5a5e6d0d97cafcd7311d569bfe3cbcb42d10c0e9))
- **ui:** resolve NG8107 optional chain warning and content projection warning ([ca0033e](https://github.com/aegisx-platform/aegisx-starter/commit/ca0033e2f0ec998348d135c1a264cd016275a851))
- **ui:** restore ax-page-header margin-bottom for spacing before stat cards ([947d069](https://github.com/aegisx-platform/aegisx-starter/commit/947d069492c130003f4280836fbff28482330def))
- **ui:** section-card footer buttons spacing — use display:contents for projected wrapper ([5a8c90e](https://github.com/aegisx-platform/aegisx-starter/commit/5a8c90ecfe3ac4a1848cfd4d896ede9c04955fb6))
- **ui:** selectSuggested preserves contract_id from Smart Match ([ff57333](https://github.com/aegisx-platform/aegisx-starter/commit/ff573337e756d804280e4a6ae4d96dd59ce56d3f))
- **ui:** show snackbar when vendor selection save fails silently ([1107948](https://github.com/aegisx-platform/aegisx-starter/commit/11079483e3df6db0ea5fd6538b4379baed55603d))
- **ui:** strict action type + use config label in banner retry button ([e5bdcfc](https://github.com/aegisx-platform/aegisx-starter/commit/e5bdcfc66c651d0d28c96fad766cd6ead18fe721))
- **ui:** thai error messages, generic_id display, form validation UX ([742f8e9](https://github.com/aegisx-platform/aegisx-starter/commit/742f8e9bdda54c2877537d7b8e61722c09b5a1e6))
- **ui:** translate remaining English — HPP dialog, services, view dialogs ([5097171](https://github.com/aegisx-platform/aegisx-starter/commit/5097171390c48998fb1b0aa17234a9abb4b5d4cf))
- **ui:** unify page header typography and spacing across budget modules ([87e1cb9](https://github.com/aegisx-platform/aegisx-starter/commit/87e1cb95cffa168956fed8fe60e232551b20c3be))
- **vendor-selections:** wrap filter bar in mat-card bordered ([482e212](https://github.com/aegisx-platform/aegisx-starter/commit/482e212a82df3a54f5708be8f5dd91e974092723))
- **warehouse-dash:** address code review findings on frontend rewrites ([dd4aab5](https://github.com/aegisx-platform/aegisx-starter/commit/dd4aab5bde0f7b01db2af546ad32a24ad219ecde))
- **warehouse-dash:** sync frontend ReceiptLifecycle field rename ([7d7d2f0](https://github.com/aegisx-platform/aegisx-starter/commit/7d7d2f002f4333db6c3f25d593e57fd36f0ca211))
- **web:** 404 centering — move position:fixed to inner div ([dc6d2fe](https://github.com/aegisx-platform/aegisx-starter/commit/dc6d2fe2bd215079bdd8820410648b7d657624af))
- **web:** force-center 404 page with fixed inset + grid place-items ([99ab38a](https://github.com/aegisx-platform/aegisx-starter/commit/99ab38a9b4c888095530db5e93c1652e75496c6a))
- **web:** lift login logo above aurora + grid background layers ([bbc297f](https://github.com/aegisx-platform/aegisx-starter/commit/bbc297f25c0dc72d14442e24ca8a74daed58dd49))
- **web:** modernize system-shell — remove CommonModule, use DestroyRef ([19b3555](https://github.com/aegisx-platform/aegisx-starter/commit/19b35559408f0c2776c81c621b32c2dbe1fa80a0))
- **web:** move login logo to the top of the left panel ([683df07](https://github.com/aegisx-platform/aegisx-starter/commit/683df0769d459e61a4818f5728a9dec7eef38ec1))
- **web:** normalize budget page breadcrumb trails to 4-level Thai pattern ([859a8f2](https://github.com/aegisx-platform/aegisx-starter/commit/859a8f29a27182a5dab2bc5172d372ee630a3902))
- **web:** redesign 404 page with aegisx-ui tokens and brand logo ([64c8f42](https://github.com/aegisx-platform/aegisx-starter/commit/64c8f4247531ee8e7f2e2f7ca326351446733a98))
- **web:** register icons at app root + set portal Inventory to app-inventory ([02ae71f](https://github.com/aegisx-platform/aegisx-starter/commit/02ae71f920298cbcfe06970ceaafc136f3293a88))
- **web:** resolve icon paths with base href to bypass API interceptor ([940e487](https://github.com/aegisx-platform/aegisx-starter/commit/940e487c34c62d55ec898935c88cb3a31af4e61c))
- **web:** revert login logo back to vertical center ([7a6c361](https://github.com/aegisx-platform/aegisx-starter/commit/7a6c361f0621b64c52a0052fbfd0c1afc7d0b813))
- **web:** swap logo variants — dark=for dark bg, light=for light bg ([b230916](https://github.com/aegisx-platform/aegisx-starter/commit/b230916a41a6297e504320ab5ae92b6a8612f1a7))
- **web:** use absolute paths for layout demo nav links ([038ea6c](https://github.com/aegisx-platform/aegisx-starter/commit/038ea6c2976a13e4508a5c82224debcf853929f1))
- **web:** use config version in shell footer instead of hardcoded v1.0 ([18766bf](https://github.com/aegisx-platform/aegisx-starter/commit/18766bf111130d9226ffa8a8fe9b25866247d941))
- **workflow-step-progress:** post-review tidy-up ([cd01359](https://github.com/aegisx-platform/aegisx-starter/commit/cd01359eacc542d8bc8d0873e01ffe7158769e3f))

### Features

- add agent skills from skills.sh (impeccable, anthropics, wshobson) ([c6d35fb](https://github.com/aegisx-platform/aegisx-starter/commit/c6d35fbda1e0d29e0318eea1c9d2845c82cd40eb))
- add drug registry in plan page (ทะเบียนยาในแผนงบประมาณ) ([f5f7b64](https://github.com/aegisx-platform/aegisx-starter/commit/f5f7b6478f9e071907546196e8d2a90da15c38db))
- **aegisx-ui:** add .ax-data-table global style — bump to v0.5.3 ([0cdc07d](https://github.com/aegisx-platform/aegisx-starter/commit/0cdc07d98d5e1046ea4af41cfab7215d48ed6ac5))
- **aegisx-ui:** add <ax-dialog-fullscreen-button> ([0e17211](https://github.com/aegisx-platform/aegisx-starter/commit/0e17211994fad53061e05d75fef51f8441b04799))
- **aegisx-ui:** add <ax-step-progress> component ([5e97ada](https://github.com/aegisx-platform/aegisx-starter/commit/5e97ada7f6fc0c131375d1b773deb2fdd9e74743))
- **aegisx-ui:** add 5 new components + fix critical audit issues ([4355451](https://github.com/aegisx-platform/aegisx-starter/commit/43554515fb883fbc6498d8740e1d611ea3f43ec5)), closes [#fff3e0](https://github.com/aegisx-platform/aegisx-starter/issues/fff3e0)
- **aegisx-ui:** add ax-card-header component (Untitled UI pattern) ([66be01d](https://github.com/aegisx-platform/aegisx-starter/commit/66be01d03980f72481aea6ae501dced9068630ba))
- **aegisx-ui:** v0.3.0 — design system audit improvements ([3f4381e](https://github.com/aegisx-platform/aegisx-starter/commit/3f4381e45a6ee7e2279840a26aa4220c98cb4d36))
- **api:** add drug registry repository methods ([b689e6b](https://github.com/aegisx-platform/aegisx-starter/commit/b689e6b0163229d366f5d5356ec741b695593559))
- **api:** add drug registry service and controller methods ([4acf726](https://github.com/aegisx-platform/aegisx-starter/commit/4acf726fc6b76b44f91bf42dc995e40c0f5782ea))
- **api:** add drug registry TypeBox schemas ([371d300](https://github.com/aegisx-platform/aegisx-starter/commit/371d3005118e614c08519a526a9f3f2af47f4b1f))
- **api:** add workflow_summary field to PR/PO list responses ([0656f24](https://github.com/aegisx-platform/aegisx-starter/commit/0656f24b5088575e7daa4a140f455e8aad1ad76f))
- **api:** auto-initialise workflow_tracking on PR/PO create ([e0a38b6](https://github.com/aegisx-platform/aegisx-starter/commit/e0a38b6183be39ccc3576755b3a72c289a3fa308))
- **api:** bi-directional INTERNAL tracking sync on every PR/PO state ([cb6f882](https://github.com/aegisx-platform/aegisx-starter/commit/cb6f88298b9c4fbe326bb425e6ec4964026ef7c3))
- **api:** register drug registry routes (GET /registry, GET /registry/:genericId) ([f3c2930](https://github.com/aegisx-platform/aegisx-starter/commit/f3c2930ca0c65e15ac6a9aabbad7c6331891e767))
- **api:** replace budget PDF with official Thai procurement plan format ([00f6b19](https://github.com/aegisx-platform/aegisx-starter/commit/00f6b190edb60d4aa195cf7691bee489ea4bc19d))
- **api:** sync workflow_tracking INTERNAL on every PR/PO status change ([ae6b0c6](https://github.com/aegisx-platform/aegisx-starter/commit/ae6b0c68240661dcb72b107bd5d95ac76de5f983))
- **assets:** add AegisX icon library — 59 SVG icons (mono + colored) ([d83e163](https://github.com/aegisx-platform/aegisx-starter/commit/d83e163fb1d0db2fadd9116045828e4bc679e8a1))
- **auth:** align forgot-password page with login using ax-auth-layout ([bcf90b2](https://github.com/aegisx-platform/aegisx-starter/commit/bcf90b26a3c0371795333169cce99af50cc71181))
- **auth:** align register page with login using ax-auth-layout ([1f9baff](https://github.com/aegisx-platform/aegisx-starter/commit/1f9baff61dd9fa9faf79d738ce9b7ef0ddc948aa))
- **auth:** session picker + ticket-based force login ([e6541da](https://github.com/aegisx-platform/aegisx-starter/commit/e6541da1402d2841fde9c58ca8f5081617d0ec05))
- **ax-layouts:** page background owned by layout main, not by pages ([f8445f9](https://github.com/aegisx-platform/aegisx-starter/commit/f8445f9220a0b4ea79cdd32d1d8b5d471607f32b))
- **ax-stat-card:** 10 more variants — now 24 variants total ([4a89f24](https://github.com/aegisx-platform/aegisx-starter/commit/4a89f247812e0c0b530f6af0a5dc7487bb5cce6f)), closes [#18181b](https://github.com/aegisx-platform/aegisx-starter/issues/18181b)
- **ax-stat-card:** 6 data-rich variants + redesigned hero icon ([c6d960e](https://github.com/aegisx-platform/aegisx-starter/commit/c6d960e98027a7c68f33aee11e80218b69c27ea5))
- **ax-stat-card:** add optional progress bar support ([1dbe49f](https://github.com/aegisx-platform/aegisx-starter/commit/1dbe49fdaddd86d32df23e68e0cd2125852b4bcb))
- **ax-stat-card:** valueColor/iconColor inputs + neutral default + quieter hover ([6b92c22](https://github.com/aegisx-platform/aegisx-starter/commit/6b92c22f8f39e431d6a61b3057bdcd03c53ba423))
- **budget-monitoring:** phase 1 — L9 redesign additive summary fields ([4ca52c1](https://github.com/aegisx-platform/aegisx-starter/commit/4ca52c1ee74f4a80a0c4e39d8b5c2534442ec653))
- **budget-monitoring:** phase 2 — wire L9 hero + KPI row + activity bottom row ([90777c6](https://github.com/aegisx-platform/aegisx-starter/commit/90777c6b4cbf6ff2a520c8e78e395cafc03f731e))
- **cli:** add `sessions` command to list/clear user sessions ([4352ec2](https://github.com/aegisx-platform/aegisx-starter/commit/4352ec2ee878543b4959952395efdcf176d836d7))
- **core:** add UserPreferenceService for centralized localStorage ([9d7f511](https://github.com/aegisx-platform/aegisx-starter/commit/9d7f5111bd673599215c42b49723fb4bb374116d))
- **dashboard-summary:** add GET /activity-feed unified recent-events endpoint ([939dde7](https://github.com/aegisx-platform/aegisx-starter/commit/939dde70065d93affff9b251c6a624eb80e774a7))
- **dashboard:** add GET /warehouse-trends endpoint ([0f3fd3a](https://github.com/aegisx-platform/aegisx-starter/commit/0f3fd3aa3ba0fa29d7d1083ed627e4a60a700c22))
- **dashboard:** add receipt_lifecycle + distribution_pipeline to /overview ([9949f87](https://github.com/aegisx-platform/aegisx-starter/commit/9949f87143e411749dcab0675bf1240498db42ea))
- **dashboard:** add TS interfaces for warehouse trends + overview extensions ([92c35d1](https://github.com/aegisx-platform/aegisx-starter/commit/92c35d123639011e250a191dcf784a44d6d1717f))
- **dashboard:** add TypeBox schemas for warehouse trends + overview extensions ([45582a7](https://github.com/aegisx-platform/aegisx-starter/commit/45582a7b6e78f799e76ecd52c8c4042ff5f18040))
- **demo:** add children to budget_req and receiving modules for dock expand demo ([ff25af7](https://github.com/aegisx-platform/aegisx-starter/commit/ff25af7ea881dac5633fce48a4811a5bec9078ee))
- **demo:** add module types guide + live event log ([2dd8aaa](https://github.com/aegisx-platform/aegisx-starter/commit/2dd8aaa007dc533ac2265eea9f6ed3037535c5fe))
- **demo:** add nav accent color picker to shell demo ([20dfee3](https://github.com/aegisx-platform/aegisx-starter/commit/20dfee373eba253370245145ec7805dd796befcd))
- **design-system:** add layout playbook + 13 canonical pattern demos ([f1468fa](https://github.com/aegisx-platform/aegisx-starter/commit/f1468facf6b3b9eeba6d647a7b921e7ea1b8ae4c))
- **dispensing:** add progress tracking columns to sync_logs ([0f51059](https://github.com/aegisx-platform/aegisx-starter/commit/0f5105953c8636fe30e29b048d8dc5d7ca7b61e0))
- **dispensing:** b6 full — view-mapping-profile wizard in MatDialog ([e0aad10](https://github.com/aegisx-platform/aegisx-starter/commit/e0aad10ddedc0af2ff61ec20aaa4a6b795ddc950))
- **dispensing:** b7 — persist last_tested_at on successful testConnection ([799ea33](https://github.com/aegisx-platform/aegisx-starter/commit/799ea332a6e52d013eac04a400ab962433246e28))
- **dispensing:** better UX for Run Now + Test Connection in the list ([14f8faa](https://github.com/aegisx-platform/aegisx-starter/commit/14f8faab840ae914d8d3a2b2067b97b6b879d027))
- **dispensing:** c1 — shared layout with top-tab navigation ([4470987](https://github.com/aegisx-platform/aegisx-starter/commit/4470987d13fe0a8b017a7c969021e1be172b6e92))
- **dispensing:** chunked sync with progress + resumeSync ([24748b2](https://github.com/aegisx-platform/aegisx-starter/commit/24748b22663e07305f62bdbbf72f513967e17077))
- **dispensing:** date range filter on transaction browser ([51a365f](https://github.com/aegisx-platform/aegisx-starter/commit/51a365f01ef9b4440dfdba7974fc072816971337))
- **dispensing:** domain-specific stats on transaction browser ([ad3138c](https://github.com/aegisx-platform/aegisx-starter/commit/ad3138c21615c7c9f6cf76b217c136c100db5a55))
- **dispensing:** expand main search to HN + dispense# + his_reference ([adcd7ab](https://github.com/aegisx-platform/aegisx-starter/commit/adcd7ab1f9c5a7c851f0ae9fea57d5b93667134e))
- **dispensing:** items endpoint + redesigned detail drawer ([1a0937e](https://github.com/aegisx-platform/aegisx-starter/commit/1a0937e5950b46618da5326540f8e697098be3dc)), closes [#116](https://github.com/aegisx-platform/aegisx-starter/issues/116)
- **dispensing:** phase 2 — hub modes A/B with workflow guidance ([4f5d851](https://github.com/aegisx-platform/aegisx-starter/commit/4f5d851c904def8f7d2d80268a76bfaf493ee798))
- **dispensing:** phase 3 — empty states guide workflow prerequisites ([5af3770](https://github.com/aegisx-platform/aegisx-starter/commit/5af3770875a1c7f73540f9a74235eba0bd4ba46a))
- **dispensing:** phase 4 — live sync progress over websocket ([f063de7](https://github.com/aegisx-platform/aegisx-starter/commit/f063de79724bf8166013a1ed4847722caf9b1c7d))
- **dispensing:** phase 6 — per-record failure queue with retry ([b3445bf](https://github.com/aegisx-platform/aegisx-starter/commit/b3445bfc15e5ed79f6c5eb8c1d4c50b0620c9c2c))
- **dispensing:** phase 6 — reverse a completed dispensing ([137caf7](https://github.com/aegisx-platform/aegisx-starter/commit/137caf776211702417af911f31eb9ffe13dd9222))
- **dispensing:** richer transaction list columns for operator visibility ([13fcf13](https://github.com/aegisx-platform/aegisx-starter/commit/13fcf1302f36b043e830c0ebb5ff40bdefa78578))
- **dispensing:** schedule status column on HIS settings list ([5173dfc](https://github.com/aegisx-platform/aegisx-starter/commit/5173dfc68e6cdf13cde6274970ccbceb115f754b))
- **dispensing:** scheduler plugin for HIS sync with hot-reload ([f0f160f](https://github.com/aegisx-platform/aegisx-starter/commit/f0f160ffa815b8c86de96002cee2b14cefe1d536))
- **dispensing:** strict TypeBox schema for dispensing items endpoint ([d4e0c79](https://github.com/aegisx-platform/aegisx-starter/commit/d4e0c79ea38654779a7eed98c3d1180e41d4c850))
- **dispensing:** tier B (part 1) — wire cross-page flows ([0a4098a](https://github.com/aegisx-platform/aegisx-starter/commit/0a4098aea367da76a899980b86d31db38a7f42f8))
- **dispensing:** tier B (part 2) + tier C scoped — his-settings form + breadcrumbs ([e25e819](https://github.com/aegisx-platform/aegisx-starter/commit/e25e819e0ce7a0b566933ad9ce2230643616a9da))
- **dispensing:** unique partial index for concurrent sync protection ([a6fe116](https://github.com/aegisx-platform/aegisx-starter/commit/a6fe1164361ed6053d99735c1854db7059ba30d3))
- **distribution:** add GET /:id/pick-list-pdf endpoint + fix buildPdf return type ([520bf7c](https://github.com/aegisx-platform/aegisx-starter/commit/520bf7cbb1b051fc49d3d88dbdb9c5b7bc234710))
- **distribution:** add location fields to suggest-lots FEFO response ([6c4c156](https://github.com/aegisx-platform/aegisx-starter/commit/6c4c1563b91aa88730318d9ae1da08c10af5f6a8))
- **distribution:** add pick list PDF service with Thai fonts and zone grouping ([ae2b0a2](https://github.com/aegisx-platform/aegisx-starter/commit/ae2b0a24384ed573a23dded03b8cec64176e5e22))
- **distribution:** add pick list preview dialog component ([b737728](https://github.com/aegisx-platform/aegisx-starter/commit/b737728ff2732e1206a1c6e75741728793528eb9))
- **distribution:** add pick list preview entry points on requisition-management and dispensing pages ([f071265](https://github.com/aegisx-platform/aegisx-starter/commit/f071265e73470f7400df89f186a58ba723454327))
- **drug-form:** use ax-card-header for page title ([896de81](https://github.com/aegisx-platform/aegisx-starter/commit/896de81b4927cff73fd147cd281331d0c22a08c5))
- **drug-reference-prices:** add delete button on active + archive sources ([7c250db](https://github.com/aegisx-platform/aegisx-starter/commit/7c250dbdb1627f7857ea420ad1951b0777e737aa))
- **drug-reference-prices:** auto-download DMSIC file and prefill import dialog ([5820411](https://github.com/aegisx-platform/aegisx-starter/commit/5820411af893b552548e2138b4717f778f0e5e17))
- **drug-registry:** make compare-year opt-in via a toggle ([2c573d5](https://github.com/aegisx-platform/aegisx-starter/commit/2c573d5a362395e0ab1bfb0ac04703202a7d2f6b))
- **drugs:** add drug images storage — table, static route, convert & import scripts ([ab72dda](https://github.com/aegisx-platform/aegisx-starter/commit/ab72dda46475539d0c747e5dc43903b1efced50e))
- **drugs:** add his_drug_code field for HIS drug mapping ([f8fe6e4](https://github.com/aegisx-platform/aegisx-starter/commit/f8fe6e4eac72ebbe55beb8a0b9ae3d428b7be528))
- **drugs:** add image upload API + thumbnail in list + gallery tab in dialog ([bf17b8c](https://github.com/aegisx-platform/aegisx-starter/commit/bf17b8c67000e100c576823f4d555153cf8fbb5d))
- **drugs:** add master-detail browse page (MVP) ([9d3cd53](https://github.com/aegisx-platform/aegisx-starter/commit/9d3cd53f79b7acbf9020a2d5ee51243f6462c304))
- **drugs:** add primary_image_path to drugs list via LEFT JOIN drug_images ([31f7a99](https://github.com/aegisx-platform/aegisx-starter/commit/31f7a99a95912d74944c5b68bb5b6f4a945dcc0b))
- **drugs:** add view toggle between list and browse pages ([81523db](https://github.com/aegisx-platform/aegisx-starter/commit/81523dbd9620f15fa713b0087da2e875ef7ea208))
- **drugs:** apply ax-card-header to list + browse pages ([5924dc1](https://github.com/aegisx-platform/aegisx-starter/commit/5924dc11d00587ef69f927c114391ccb28f10c2b))
- **drugs:** copy drug name button on browse page ([ad8bbef](https://github.com/aegisx-platform/aegisx-starter/commit/ad8bbeffb313ea891de510569a5a5bdc44ad9582))
- **drugs:** image preview lightbox + MCP auth improvements ([0e6533b](https://github.com/aegisx-platform/aegisx-starter/commit/0e6533b7abc00ca546afc3401a60073b5f8fce57))
- **drugs:** migrate drug dialog to route-based form page with 9 tab components ([956cf4c](https://github.com/aegisx-platform/aegisx-starter/commit/956cf4c1d0ed0dc4f5bd538a35af49ea9aa907b1))
- **import:** add PPK hospital adapter set + extended column mappings ([0c56e25](https://github.com/aegisx-platform/aegisx-starter/commit/0c56e25a398a6d344954cce2da4b0d6fb15753f4))
- **import:** auto-create drug_suppliers when importing drugs ([923c75f](https://github.com/aegisx-platform/aegisx-starter/commit/923c75fd928fbf7c12fc20abe243ad6240e15236))
- **inventory-dashboard:** add L9 hero panel + fiscal year selector ([0792a21](https://github.com/aegisx-platform/aegisx-starter/commit/0792a21100411af6683ffc388e426dcea39239d6))
- **inventory-dashboard:** phase 4 — wire real activity feed end-to-end ([8fc4647](https://github.com/aegisx-platform/aegisx-starter/commit/8fc46476c5d79ebe174cf362c058c73241e8f17d))
- **inventory-dashboard:** PR 2 — trend-corner KPIs, gauge budget, ax-inner-loading ([5a26b75](https://github.com/aegisx-platform/aegisx-starter/commit/5a26b75225e0440407a0f52da0a324628e55fd79))
- **inventory-dashboard:** PR 3 — attention list + dispense mini-area bottom row ([be24754](https://github.com/aegisx-platform/aegisx-starter/commit/be24754949834a20d9ffc00108abd686d174fd02))
- **inventory:** add drug_suppliers M:N junction table — Phase 1 ([c079c09](https://github.com/aegisx-platform/aegisx-starter/commit/c079c09b1d722e45f5a605c875d5611af91e70de))
- **layouts-demo:** 10 more stat-card sections — all 24 variants covered ([6405a5e](https://github.com/aegisx-platform/aegisx-starter/commit/6405a5ed56d52c861d658e564dbdc925c9b3d318))
- **layouts-demo:** add L9 Dashboard Panel demo ([0c6551f](https://github.com/aegisx-platform/aegisx-starter/commit/0c6551fa6162f0b82f629aaade7373235a3cede7))
- **layouts-demo:** add trend-corner section + borderless bar-chart toggles ([ac235e5](https://github.com/aegisx-platform/aegisx-starter/commit/ac235e5ddabfa200b2ee3a3c40924b704aeb4c35))
- **layouts-demo:** stat-card showcase page ([3c11cbf](https://github.com/aegisx-platform/aegisx-starter/commit/3c11cbf360f51ba2493a2be96962f5c8a9aedc0d))
- **main-warehouse-dash:** redesign with l9 hero + value-based metrics ([8352e36](https://github.com/aegisx-platform/aegisx-starter/commit/8352e36236c1dfeb3d4762bfbb8d42a0cdea875e))
- **matching:** allocation status banner in Generate PO dialog ([fdd6a6d](https://github.com/aegisx-platform/aegisx-starter/commit/fdd6a6dfe909f389e95066b846882b13b4aad33c))
- **matching:** click contract badge to view contract details ([d774a6b](https://github.com/aegisx-platform/aegisx-starter/commit/d774a6b2e61c4c53c823da44c45f3e564b318b27))
- **matching:** expose existing_selections array on smart-match response ([43a8dbe](https://github.com/aegisx-platform/aegisx-starter/commit/43a8dbe1d3e06b561ce12fbc466264c2bcb124b0))
- **matching:** Option A — inline price-vs-contract hints ([33cb926](https://github.com/aegisx-platform/aegisx-starter/commit/33cb926d3775a4ea6ef27247d264966eea63b450))
- **matching:** seed from PR's original request, show contract as recommendation ([d824d22](https://github.com/aegisx-platform/aegisx-starter/commit/d824d22736d654b7591df4b702d26ed8832b4232))
- **matching:** show contract price in the contract badge ([49c000d](https://github.com/aegisx-platform/aegisx-starter/commit/49c000d3a12e229707a7716ff84369db3d00235a))
- **matching:** show selected drug_code alongside drug name ([76ca8b3](https://github.com/aegisx-platform/aegisx-starter/commit/76ca8b3911bd6b29e49486a39f682710862408a4))
- **matching:** SmartMatchPanel recommendation component + LineHint type ([07386cd](https://github.com/aegisx-platform/aegisx-starter/commit/07386cd7e1b2e30bc5638b76daa388574bcd3cc4))
- **matching:** Thai (English) unit display convention ([3ec9a6b](https://github.com/aegisx-platform/aegisx-starter/commit/3ec9a6baf911bf4306ae90d690d59de5210f977e))
- **matching:** unified vendor lines model (Task 5 + Task 6) ([8f038a1](https://github.com/aegisx-platform/aegisx-starter/commit/8f038a191b4e8bbeb133c3bb34839df89ba5950f))
- **migration:** add batch history and detail components ([d7c43da](https://github.com/aegisx-platform/aegisx-starter/commit/d7c43da276f49a70d6fc9d3ff45fb401ed8588a1))
- **migration:** add batch rollback service with dependency checking ([e963305](https://github.com/aegisx-platform/aegisx-starter/commit/e963305d1ad111b8534813c6ae54f13e824f2a72))
- **migration:** add column mapping service with auto-suggest ([a2b0115](https://github.com/aegisx-platform/aegisx-starter/commit/a2b0115c382a5831d318da9da058443ad780d87f))
- **migration:** add DB connector service for MySQL/MSSQL/PG ([d62aece](https://github.com/aegisx-platform/aegisx-starter/commit/d62aeced509cad71c2eb69c92bf4c2f706b0cd76))
- **migration:** add DB import component with SQL editor ([83a930f](https://github.com/aegisx-platform/aegisx-starter/commit/83a930fe4c6355db87ed04e0ba586b3438796574))
- **migration:** add entity resolvers for all import entity types ([b874215](https://github.com/aegisx-platform/aegisx-starter/commit/b874215597e9d255394496a09fd25055a1969c29))
- **migration:** add migration dashboard component ([c442f96](https://github.com/aegisx-platform/aegisx-starter/commit/c442f96e17c2f892d78fd1a9cefd50024ff0705a))
- **migration:** add migration service, controller, repository ([e3b109c](https://github.com/aegisx-platform/aegisx-starter/commit/e3b109c08752f37b7c1aa13975c73ed45a3c8a5b))
- **migration:** add migration tables and extend import_batches/staging ([959a24a](https://github.com/aegisx-platform/aegisx-starter/commit/959a24aed310479bb09758b94a823b9b63d207e4))
- **migration:** add reusable column mapper component ([e7d2831](https://github.com/aegisx-platform/aegisx-starter/commit/e7d2831dec9600ffd07181663745e4e4dade0da0))
- **migration:** add saved mapping templates component ([922605b](https://github.com/aegisx-platform/aegisx-starter/commit/922605be4ec9470f804a0f79115a510f57337abf))
- **migration:** add schemas, routes, register in inventory domain ([bf63454](https://github.com/aegisx-platform/aegisx-starter/commit/bf63454d2f068b32e29f728ed76177226d9662b7))
- **migration:** Migration Wizard — นำเข้าข้อมูลจากระบบเก่า ([#66](https://github.com/aegisx-platform/aegisx-starter/issues/66)) ([3dcf550](https://github.com/aegisx-platform/aegisx-starter/commit/3dcf5502f37946949ee67e0761eadc9174c3335c))
- **migration:** Phase 1 — hospital_profiles table + profile_id FK ([e7b3b39](https://github.com/aegisx-platform/aegisx-starter/commit/e7b3b3961f6748f5b28971cb16b926787c679310))
- **migration:** Phase 2 — Hospital Profile CRUD + drug_pack_ratios resolver ([043524d](https://github.com/aegisx-platform/aegisx-starter/commit/043524df1a0b1e8cc9146f3268c373cbaf1ea922))
- **migration:** Phase 3 — Hospital Profiles frontend UI ([9a3be6f](https://github.com/aegisx-platform/aegisx-starter/commit/9a3be6fac92f5da9df94804782eb42ae3c6b91b8))
- **migration:** Phase 4 — Connections management page ([0ab7740](https://github.com/aegisx-platform/aegisx-starter/commit/0ab7740a25f64933cb4c9aed5903f1a0fdb5e08c))
- **migration:** Phase 5 — Unified Import Wizard ([b89f90e](https://github.com/aegisx-platform/aegisx-starter/commit/b89f90e54981c247f6beb5dc982eb32907760709))
- **nav:** add AxNavDockPanelComponent — flush children panel for dock mode ([eda2182](https://github.com/aegisx-platform/aegisx-starter/commit/eda2182821e83f65022f5c2566e172f6a2041bef))
- **nav:** add chevron indicator on dock items with children ([b838e2b](https://github.com/aegisx-platform/aegisx-starter/commit/b838e2bf4f7829c8441fbdb1aedf5a397f568fa6))
- **nav:** add expandedModuleId state + toggleModuleExpand/collapseModule/setActiveChild ([5235719](https://github.com/aegisx-platform/aegisx-starter/commit/52357192138fc4d45a8976b33cbb8780cbf29788))
- **nav:** add optional badge to NavChild ([61740fe](https://github.com/aegisx-platform/aegisx-starter/commit/61740fe7e0bfe5ea7a03260f7368ea0a78721ac8))
- **nav:** close dock panel on Escape + outside click ([66d5645](https://github.com/aegisx-platform/aegisx-starter/commit/66d5645cfe8226ca332b33f61cb189a754ecdcc5))
- **nav:** export AxNavDockPanelComponent in public API ([18c537d](https://github.com/aegisx-platform/aegisx-starter/commit/18c537de179a608c4a7e10c7e36f7deaa07c0c9e))
- **nav:** render flush dock panel when module has children ([8f1ded0](https://github.com/aegisx-platform/aegisx-starter/commit/8f1ded001d651d5b546f8f043e5a93e9cd6a4914))
- **patient-dispensings:** server-side /daily-summary + /monthly-summary aggregates ([99cffd9](https://github.com/aegisx-platform/aegisx-starter/commit/99cffd903fc6dd525aed5a7f9b239b68db4da565))
- **pick-list-mobile:** hybrid editor with save flow + UX improvements ([76461c7](https://github.com/aegisx-platform/aegisx-starter/commit/76461c7b2301c1cc8390d447d1f3c89995bbed93))
- **pick-list:** add group by drug group option ([0f36a05](https://github.com/aegisx-platform/aegisx-starter/commit/0f36a0585cde0c954b01dfc9ef2bf77236aa6c86))
- **pick-list:** add mobile page + QR code on PDF ([96715dd](https://github.com/aegisx-platform/aegisx-starter/commit/96715ddcda39c890377467e847070de2ff2f78fe))
- **ppk:** add --mapping arg for HIS drug code (itemid → his_drug_code) ([fe0e725](https://github.com/aegisx-platform/aegisx-starter/commit/fe0e725595b22dc7e84392ba8c6f8994ccc323f9))
- **procurement-dashboard:** adopt L9 dashboard layout with real analytics APIs ([410e515](https://github.com/aegisx-platform/aegisx-starter/commit/410e5155249b9f992dde87fed6e13db4831779c4))
- **procurement:** add workflow reference dialog + PO detail tracking section ([58887ca](https://github.com/aegisx-platform/aegisx-starter/commit/58887ca710ce2c2078aa65d1b97b5a39a2692e64))
- **procurement:** Phase 1 PO-PR-Matching unified sync service ([35b6312](https://github.com/aegisx-platform/aegisx-starter/commit/35b63124f743913adc21ebfe3fc53c649283b0b9))
- **settings:** create settings shell with launcher page ([6aab84c](https://github.com/aegisx-platform/aegisx-starter/commit/6aab84c35a61bf9cd30d0e0fa490791a0f31d8eb))
- **settings:** move setup page into settings shell ([48a1398](https://github.com/aegisx-platform/aegisx-starter/commit/48a1398c67a5484fba68a0e8528b5c809a0bfb14))
- **skills:** add design-inspiration skill (project-shared) ([da30210](https://github.com/aegisx-platform/aegisx-starter/commit/da30210b846d4243e3dcd7a17078c5efc2f01e72))
- **stockcard:** add fullscreen toggle button with preference memory ([4e89a80](https://github.com/aegisx-platform/aegisx-starter/commit/4e89a80920aa77469c731e84abe13617aef5c1ab))
- **stockcard:** add Lot Registry tab in Stockcard dialog ([cb023d6](https://github.com/aegisx-platform/aegisx-starter/commit/cb023d6b1dc58b7e273fd526bed3c0482b30ac74))
- **stockcard:** show lot location + add drug-location map tab ([8790c26](https://github.com/aegisx-platform/aegisx-starter/commit/8790c26ecbbb80582df0dc319e57dae34dd890f6))
- **sub-warehouse-dash:** rewrite with l9 hero + zero hardcoded hex ([578ebe8](https://github.com/aegisx-platform/aegisx-starter/commit/578ebe8ce01916202b7701075ea83d40a4fd8e34)), closes [#fee2e2](https://github.com/aegisx-platform/aegisx-starter/issues/fee2e2) [#fff7ed](https://github.com/aegisx-platform/aegisx-starter/issues/fff7ed) [#fefce8](https://github.com/aegisx-platform/aegisx-starter/issues/fefce8)
- **ui/activity-list-card:** compose ax-card + ax-avatar + ax-badge ([068ecdb](https://github.com/aegisx-platform/aegisx-starter/commit/068ecdb2a788f5175249658a628b4365606c02ea))
- **ui/avatar:** add optional [color] tint input ([730bfa2](https://github.com/aegisx-platform/aegisx-starter/commit/730bfa2fb11448a598a234d1d30383ed7d8a3ccd))
- **ui/bar-chart-area:** add paired-bar chart area ([1333ad2](https://github.com/aegisx-platform/aegisx-starter/commit/1333ad29a0bf7eb98b71c622d33cc8c60868587d))
- **ui/hero-metric-card:** add blue-gradient hero card ([54729e7](https://github.com/aegisx-platform/aegisx-starter/commit/54729e7b0a6cb460a3a11cd3c6797e7024199efa))
- **ui/layouts:** add ax-dashboard-panel ([a778641](https://github.com/aegisx-platform/aegisx-starter/commit/a77864145080afbc180dd5d77c35bb88ea23aeb5))
- **ui/mini-area-chart-card:** wrap ax-card + use ax-badge ([6dfbe31](https://github.com/aegisx-platform/aegisx-starter/commit/6dfbe3182df1ebce9e9096f7b3d994caec8b83fb))
- **ui/nav-topbar:** add [theme]='dark' input ([7eaf7f0](https://github.com/aegisx-platform/aegisx-starter/commit/7eaf7f0b04412a001758b27bce150afdd4fd509e))
- **ui/stat-card:** add trend-corner variant ([e0868ce](https://github.com/aegisx-platform/aegisx-starter/commit/e0868ce2572331ba81fe71818ba3581689b922f1))
- **ui/tokens:** add --ax-dashboard-\* design constants ([97a6675](https://github.com/aegisx-platform/aegisx-starter/commit/97a667517b9c25938e2efdb02b7d5fc273a41288))
- **ui+api:** add PDF preview dialog + fix column names in budget PDF ([e7013e6](https://github.com/aegisx-platform/aegisx-starter/commit/e7013e6d8a1bf08e3c3d2e15210cd16c9ea847c6))
- **ui:** add 11 mono + 10 featured error icons (ax:err-_ + axf:err-_) ([49ff9ea](https://github.com/aegisx-platform/aegisx-starter/commit/49ff9ea3ca6ce8da5a34d057378518817cd33683))
- **ui:** add ax-app-switcher — 6-app grid overlay with CDK Dialog ([c39027a](https://github.com/aegisx-platform/aegisx-starter/commit/c39027a7b26cad70b75e7346d7dd13d178cfaf34))
- **ui:** add ax-error-banner — inline severity-colored alert with Thai messages ([4142de2](https://github.com/aegisx-platform/aegisx-starter/commit/4142de21d7f6528efc9d1dca6c1b7b718435b7ef))
- **ui:** add ax-list-item + ax-metadata-grid, bump to v0.5.1 ([166b909](https://github.com/aegisx-platform/aegisx-starter/commit/166b909e9b133ddfdaa27d9ce4b5fecdff0e318e))
- **ui:** add ax-nav-context-switcher — generic entity picker popover ([26d66fa](https://github.com/aegisx-platform/aegisx-starter/commit/26d66faa0ca1c3d4986bb82923feacbbab871321))
- **ui:** add ax-nav-expanded — rail + panel wrapper with pin/unpin ([138cc37](https://github.com/aegisx-platform/aegisx-starter/commit/138cc37ec1e028a175873c96f6f84c71af09d5cc))
- **ui:** add ax-nav-expanded-panel — white slide-out panel with pin/unpin ([dd10f78](https://github.com/aegisx-platform/aegisx-starter/commit/dd10f7880fbbc0344ae570e07cfd832f9d756fe7))
- **ui:** add ax-nav-item — reusable nav button with rail/dock/topbar variants ([887e3d7](https://github.com/aegisx-platform/aegisx-starter/commit/887e3d749c7876d3e17e2440cf24860e91a91529))
- **ui:** add ax-nav-rail — dark sidebar 80px with all nav sections ([d16e4b7](https://github.com/aegisx-platform/aegisx-starter/commit/d16e4b73211fc7f676bff8dfff7a437475eb776d))
- **ui:** add ax-nav-shell + wire public API exports ([fe2f4b6](https://github.com/aegisx-platform/aegisx-starter/commit/fe2f4b69c61548634990f6f2da0b5b75cdbefc70))
- **ui:** add ax-nav-topbar — horizontal dark navigation bar 56px ([36fb07a](https://github.com/aegisx-platform/aegisx-starter/commit/36fb07a9cde49eb00c4c7b56e058a8a1888dac88))
- **ui:** add ax-nav-user-menu — profile popover with layout picker ([d7a8266](https://github.com/aegisx-platform/aegisx-starter/commit/d7a8266196e5ad462317a9851dc684a609f257f8))
- **ui:** add ax-notification-panel — slide-right side sheet ([95e07fc](https://github.com/aegisx-platform/aegisx-starter/commit/95e07fc4ef8d8ccd4ba38e082ac30ddb89351af5))
- **ui:** add ax-page-shell for standard page layout + migrate budget pages ([24a524d](https://github.com/aegisx-platform/aegisx-starter/commit/24a524d45ad3ef0ea3434843f58a4fd539ba14dd))
- **ui:** add ax-protected-field component and fix theme tokens ([ff65a08](https://github.com/aegisx-platform/aegisx-starter/commit/ff65a08b40955b336c0699c8f5fa731a8bfc47c5))
- **ui:** add ax-section-card + ax-info-row components with settings demo ([b297146](https://github.com/aegisx-platform/aegisx-starter/commit/b29714608e1ab24da9b7514e9f1de67e1dc80d7b))
- **ui:** add ax-sidebar-layout — left sidebar alternative to ax-enterprise-layout ([13ac86d](https://github.com/aegisx-platform/aegisx-starter/commit/13ac86dfcaa627227c8900c906ace849b9e72bb5)), closes [#headerActions](https://github.com/aegisx-platform/aegisx-starter/issues/headerActions) [#userMenu](https://github.com/aegisx-platform/aegisx-starter/issues/userMenu)
- **ui:** add ax-stat-card component + consolidate mat-table overrides ([42decae](https://github.com/aegisx-platform/aegisx-starter/commit/42decae791a98e5c88e06f310a04c46332cef730))
- **ui:** add ax-status-badge + ax-image-preview components ([d8f1691](https://github.com/aegisx-platform/aegisx-starter/commit/d8f1691d6316114d1762599c55441997674298df))
- **ui:** add AxIconDirective — auto-detect font vs SVG icons ([45e22cc](https://github.com/aegisx-platform/aegisx-starter/commit/45e22ccb54b6773438edc233022285f3e928b05c))
- **ui:** add AxLayoutType to shared navigation types ([34867ef](https://github.com/aegisx-platform/aegisx-starter/commit/34867efb4c1eb989c8ef60a6e6b80167b896d162))
- **ui:** add AxNavService — signal-based nav state + localStorage ([3b882ca](https://github.com/aegisx-platform/aegisx-starter/commit/3b882ca0c31391747d0b7bdeebd28c61287e8073))
- **ui:** add bordered input to ax-error-state ([a15bf96](https://github.com/aegisx-platform/aegisx-starter/commit/a15bf968607be4beb08084c51f4e08458f21e48b))
- **ui:** add config popover + wire all overlays into nav shell ([8ed2a09](https://github.com/aegisx-platform/aegisx-starter/commit/8ed2a095b1b4310d61318f98bde609f4fa878016))
- **ui:** add diamond icon support to nav shell — auto-resolve ax/axd/axdl by context ([d1b5df8](https://github.com/aegisx-platform/aegisx-starter/commit/d1b5df8c2cb82e00ec6cabba88793149df9a7a6a))
- **ui:** add error message config — 10 codes, Thai messages, severity model ([73f7f3f](https://github.com/aegisx-platform/aegisx-starter/commit/73f7f3fac9b83f75621bde69207b24fddf6fb0a2))
- **ui:** add event-based navigation + font inherit ([9302d61](https://github.com/aegisx-platform/aegisx-starter/commit/9302d61f654810a95422651f20eda2098a9b0152))
- **ui:** add icon badge variant to ax-stat-card + redesign budget-requests list ([c325977](https://github.com/aegisx-platform/aegisx-starter/commit/c325977aeb6338bc68685ba3d5166f291bc5d571))
- **ui:** add icon showcase page with color/size preview ([50c7e08](https://github.com/aegisx-platform/aegisx-starter/commit/50c7e08d1d8592dbcb2aee46795c554731e0640c))
- **ui:** add icon-leading variant to ax-stat-card ([8bd6f0e](https://github.com/aegisx-platform/aegisx-starter/commit/8bd6f0e8e6bbfdda9dd7c4fe00219d46d31b1dc3))
- **ui:** add L1-L7 page shell components for inventory layouts ([3180d61](https://github.com/aegisx-platform/aegisx-starter/commit/3180d6145144deca7be70267723d87f4f4fd7fe6))
- **ui:** add mobile hamburger menu to enterprise-layout ([761193f](https://github.com/aegisx-platform/aegisx-starter/commit/761193fad17a1fa4e5fd10943da9d013adcb4720))
- **ui:** add nav accent color presets (8 colors) ([7f92444](https://github.com/aegisx-platform/aegisx-starter/commit/7f924440f6f9c3a8ecc115c5f14bc566e41db1bf))
- **ui:** add nav shared components (logo, avatar, badge, active-bar) ([da5961d](https://github.com/aegisx-platform/aegisx-starter/commit/da5961d2430ca0074bc1e5d3a18ab52dcaeff0be))
- **ui:** add nav shell animations (slideIn, slideRight, popIn, activeBar) ([db04f81](https://github.com/aegisx-platform/aegisx-starter/commit/db04f81e2c4a03a2ada0c2ecf43db14c3a68ea95))
- **ui:** add nav shell model types and event interfaces ([9f20949](https://github.com/aegisx-platform/aegisx-starter/commit/9f2094909a1f7eb5118c4e6f9d8801249bebe4a2))
- **ui:** add shortcuts service + wire notifications and search into shell ([9f332aa](https://github.com/aegisx-platform/aegisx-starter/commit/9f332aa06b122b99e6244cd32ec9dbf98e27db2b))
- **ui:** add showFooter + footerContent slot to sidebar-layout ([2fd34c4](https://github.com/aegisx-platform/aegisx-starter/commit/2fd34c4b93462979b75ebac4185dad19dec9e831))
- **ui:** add theme switcher (light/dark/system) to nav user menu ([d31a9a5](https://github.com/aegisx-platform/aegisx-starter/commit/d31a9a56decbeaebe7b05e6af427b074dbebfe21))
- **ui:** auto-close mobile drawer on route navigation ([3a72dbe](https://github.com/aegisx-platform/aegisx-starter/commit/3a72dbea83c5787a3cd470d4848a2a6c07ccae7b))
- **ui:** ax-priority-alert, ax-stat-group, stat-card hero variant ([db03a6f](https://github.com/aegisx-platform/aegisx-starter/commit/db03a6ffe8ff5a706dbbb618630da78792a3b4ab))
- **ui:** budget code display, ax-loading-state, dashboard layout, nav shell fixes ([8f453dd](https://github.com/aegisx-platform/aegisx-starter/commit/8f453dd9150ba383f5365adcf97e676bb3e4869c))
- **ui:** complete badge 12-color system, add ax-chip, redesign browse detail ([ba52f76](https://github.com/aegisx-platform/aegisx-starter/commit/ba52f76a59104ad13c2b02a60261c696b13c44e1))
- **ui:** drug form redesign + ax-chip brand color ([31bb36c](https://github.com/aegisx-platform/aegisx-starter/commit/31bb36cbcd8d447baaa09fa065f74ad7da16197a))
- **ui:** expand icon system — 92 mono + 67 diamond icons, logoSvgIcon input ([dc2d841](https://github.com/aegisx-platform/aegisx-starter/commit/dc2d8410ac1af220dc23c3bfa86fe080b96fd186)), closes [#4338ca](https://github.com/aegisx-platform/aegisx-starter/issues/4338ca)
- **ui:** inline SVG icon data — no HTTP, no assets, no config ([8b96a2d](https://github.com/aegisx-platform/aegisx-starter/commit/8b96a2d118c652352dd32848c7bd31a0b3f8506b))
- **ui:** integrate ax-diamond-icon into nav layouts ([33af9a1](https://github.com/aegisx-platform/aegisx-starter/commit/33af9a16a5167635f91112e365aa6c76314fd6c1))
- **ui:** redesign aegisx-ui components to Untitled UI style ([3379af6](https://github.com/aegisx-platform/aegisx-starter/commit/3379af6cef7ab074f8140c49d5dae5b8f728185e))
- **ui:** support SVG custom icons in enterprise + sidebar layouts ([3556234](https://github.com/aegisx-platform/aegisx-starter/commit/35562343daa7a00cb27610a9cba964eb6bbbbce3))
- **ui:** wire all 4 layout modes into nav shell ([e01a4b3](https://github.com/aegisx-platform/aegisx-starter/commit/e01a4b339fb223a4f134bc56d058b7dd41caec6d))
- **warehouse-dash:** frontend shared utilities + service extension ([79c67bc](https://github.com/aegisx-platform/aegisx-starter/commit/79c67bcbf91f31ee70798445baa72be9dab10002))
- **web:** add aegisx brand logo assets and wire into splash + login ([865785e](https://github.com/aegisx-platform/aegisx-starter/commit/865785eef6716951e72ece906f9505d7bb4d466e)), closes [#brandIcon](https://github.com/aegisx-platform/aegisx-starter/issues/brandIcon)
- **web:** add drug registry filter, column-picker, drawer, and table components ([8d60259](https://github.com/aegisx-platform/aegisx-starter/commit/8d60259fd06be6db1c51d686dc798cd547f23572))
- **web:** add drug registry page component ([b22cbca](https://github.com/aegisx-platform/aegisx-starter/commit/b22cbca294ec7d47b26ef3ac01a7f66ce69cd382))
- **web:** add drug registry to budget launcher + link from budget items page ([633a1a4](https://github.com/aegisx-platform/aegisx-starter/commit/633a1a4f756f198fa3b82a6e11b2af858baaa32b))
- **web:** add drug registry types and service ([859fae1](https://github.com/aegisx-platform/aegisx-starter/commit/859fae14b9f159fd147e7696bf0c437ec57beb11))
- **web:** add enterprise + compact layout demos to layouts-demo ([59c1eab](https://github.com/aegisx-platform/aegisx-starter/commit/59c1eab77e03c9cd863a5f86c6f681ab8511811d))
- **web:** add featured icons + error category to icon showcase demo ([1bf2bac](https://github.com/aegisx-platform/aegisx-starter/commit/1bf2bac4c5f0395b58dfe302efa7cde5f9213c3f))
- **web:** add layout config field to inventory app ([9f4a32e](https://github.com/aegisx-platform/aegisx-starter/commit/9f4a32e9cf93a4faf799ca83527245fd4bbda995))
- **web:** add nav shell demo page at /layouts-demo/nav-shell ([f3cc4e9](https://github.com/aegisx-platform/aegisx-starter/commit/f3cc4e9865041b94d3db81d60bde03322b9799c8))
- **web:** add workflow icon map + mapper + ax-step-progress fixes ([b57483c](https://github.com/aegisx-platform/aegisx-starter/commit/b57483c479431fdc100e2fb81f907044706e3905))
- **web:** adopt <ax-dialog-fullscreen-button> across PO-side dialogs ([f9430cf](https://github.com/aegisx-platform/aegisx-starter/commit/f9430cf5b29375e200e6eb2a18d5562e7a193a93))
- **web:** adopt <ax-dialog-fullscreen-button> in PR / PO / stockcard ([c1de8f0](https://github.com/aegisx-platform/aegisx-starter/commit/c1de8f0ea346ee5d690d19c4236244e81fc89864))
- **web:** bolder login panel — aurora mesh, grid, logo glow + float ([e9e84e4](https://github.com/aegisx-platform/aegisx-starter/commit/e9e84e489f888bcd3d7391818d0960865a19aa3a)), closes [#020617](https://github.com/aegisx-platform/aegisx-starter/issues/020617)
- **web:** dynamic layout shell with theme-switcher integration ([14b7e9b](https://github.com/aegisx-platform/aegisx-starter/commit/14b7e9beeef060af153d9b1f020586581b55ce3d))
- **web:** integrate <ax-step-progress> into PR/PO list + PO detail ([d9eeb7c](https://github.com/aegisx-platform/aegisx-starter/commit/d9eeb7c8b6ed361dc38cba506ceca1276175e563))
- **web:** logo polish — crop SVGs, fix variants, add to portal + sidebar ([6953dbb](https://github.com/aegisx-platform/aegisx-starter/commit/6953dbb696bd2d94b82af401dd6d972a590211f6))
- **web:** manual 'Init workflow tracking' action in PR/PO 3-dot menu ([9e92612](https://github.com/aegisx-platform/aegisx-starter/commit/9e92612ddf8f9f46c60718e00fb1fa92a0966f79))
- **web:** migrate all budget modules to ax-page-shell ([7403e54](https://github.com/aegisx-platform/aegisx-starter/commit/7403e5423c1b15a7d80df72a156971377e4b71fc))
- **web:** migrate budget-monitoring page to ax-page-shell ([40524b1](https://github.com/aegisx-platform/aegisx-starter/commit/40524b1b816289a7b8d5eb42a57c9109574a321a))
- **web:** redesign login left panel — drop text, add futuristic bg ([bcf4b51](https://github.com/aegisx-platform/aegisx-starter/commit/bcf4b5140970bd216b8d84db2d2f7ab8fe2065ee))
- **web:** register AegisX icons in inventory + update nav to domain icons ([f818e7b](https://github.com/aegisx-platform/aegisx-starter/commit/f818e7bfe854c6085508dce2a13f716fb5fbf20d))
- **web:** register drug registry route and navigation ([5efbe3f](https://github.com/aegisx-platform/aegisx-starter/commit/5efbe3fa15077435a5ccd4a4169c20ad145ff78b))
- **web:** replace v1 logo assets with v2 brand kit ([bc31963](https://github.com/aegisx-platform/aegisx-starter/commit/bc3196325bca3a1fa05590750c6f9d0c5adfe81c))
- **web:** update favicon to v4 SVG + refresh navbar icon ([64bd7b6](https://github.com/aegisx-platform/aegisx-starter/commit/64bd7b6917ac275e1694e71d8a6acfce65c10ff9))
- **web:** use full horizontal logo on 404, login, and splash screens ([be7542e](https://github.com/aegisx-platform/aegisx-starter/commit/be7542eca557dde2f2606aaeeb7e7eb4dac96517))

### Performance Improvements

- **dispensing:** paginate HIS-side fetch with OFFSET/LIMIT ([73d18a2](https://github.com/aegisx-platform/aegisx-starter/commit/73d18a202ffc19ba29edf80c3dbfb8f928fd3782))
- **monitoring:** defer system-dashboard widgets until viewport ([97bfd28](https://github.com/aegisx-platform/aegisx-starter/commit/97bfd287aca106452037ea8f0f1d0fd7e565c039))
- **tmt:** eliminate N+1 in getRelatedDrugs ([241ac93](https://github.com/aegisx-platform/aegisx-starter/commit/241ac93bbe98f7848174f4c649b019d0e752f901))

### Reverts

- **drug-reference-prices:** use plain Material buttons, drop ax-loading-button ([ee441c0](https://github.com/aegisx-platform/aegisx-starter/commit/ee441c019a258b1d6ea69516d295e2d194fb6fe6))
- **his-settings:** remove default_location_id — stock integrity requires declared location ([cbdcbee](https://github.com/aegisx-platform/aegisx-starter/commit/cbdcbee5925aae162f9704db57c12d9f8c564334))
- Revert "fix(distribution): use recursive CTE for descendant location lookup" ([9876db6](https://github.com/aegisx-platform/aegisx-starter/commit/9876db69b8ba8f3c5e433ce9f7e97e1f006963d2))
- Revert "fix(locations): enforce 1-warehouse-1-root hierarchy + BIN-only recursion" ([14a452d](https://github.com/aegisx-platform/aegisx-starter/commit/14a452d267a4879f21bf5d6dffe0557c6197ad83))

## [1.44.1](https://github.com/aegisx-platform/aegisx-starter/compare/v1.44.0...v1.44.1) (2026-03-31)

### Bug Fixes

- **receipts:** fix SQL - remove invalid drug_units join, use pack_unit directly ([0ef1e8a](https://github.com/aegisx-platform/aegisx-starter/commit/0ef1e8a3f3e0b982c78010b95a0d0cdde8a67224))

# [1.44.0](https://github.com/aegisx-platform/aegisx-starter/compare/v1.43.2...v1.44.0) (2026-03-31)

### Features

- **warehouse-transfers:** add transfer page to sub-warehouse section ([d628783](https://github.com/aegisx-platform/aegisx-starter/commit/d6287831f47797cf6bdc368841e2224b41934537))

## [1.43.2](https://github.com/aegisx-platform/aegisx-starter/compare/v1.43.1...v1.43.2) (2026-03-31)

### Bug Fixes

- **receipts:** allow barcode printing on all statuses with dev error detail ([3f2523a](https://github.com/aegisx-platform/aegisx-starter/commit/3f2523af6e6641044987e14c44923639f3c197f6))
- **receipts:** make barcode print button always clickable ([dceb645](https://github.com/aegisx-platform/aegisx-starter/commit/dceb6456ca5e6c2fa5a34c346adca50ea9c005e8))

## [1.43.1](https://github.com/aegisx-platform/aegisx-starter/compare/v1.43.0...v1.43.1) (2026-03-31)

### Bug Fixes

- **receipts:** make barcode print button always clickable ([4485a8c](https://github.com/aegisx-platform/aegisx-starter/commit/4485a8cdef7e6ba7429085bff4b08f19e3a5b966))

# [1.43.0](https://github.com/aegisx-platform/aegisx-starter/compare/v1.42.0...v1.43.0) (2026-03-31)

### Bug Fixes

- **dispensing:** warehouse_id query, dispense flow with destination inventory ([1fddad6](https://github.com/aegisx-platform/aegisx-starter/commit/1fddad600454fd581072874d48c8c56b6337ea20))
- **reports:** add json format validation and missing report launcher items ([6968974](https://github.com/aegisx-platform/aegisx-starter/commit/6968974914be92536c25ae4e7216548e090ee904))
- **warehouse-transfers:** fix items query column names to match actual DB schema ([9fe3c0e](https://github.com/aegisx-platform/aegisx-starter/commit/9fe3c0e1f9a43f197294c1662f78ce96660bd0ef))
- **warehouse-transfers:** fix stats to return per-status counts ([09a23fa](https://github.com/aegisx-platform/aegisx-starter/commit/09a23faed0d6d35e757002d95c8deac5346b4e3f))
- **warehouse-transfers:** prevent same source and destination location ([9f3174a](https://github.com/aegisx-platform/aegisx-starter/commit/9f3174a99612b2e026e2a6ed21f6334527f2bb93))

### Features

- **receipts:** add barcode label printing for received items ([62e92cc](https://github.com/aegisx-platform/aegisx-starter/commit/62e92cc110db23acd4e1a8196027d5256fc58c0b))
- **warehouse-transfers:** complete working workflow — form items, view dialog, bug fixes ([cf0a155](https://github.com/aegisx-platform/aegisx-starter/commit/cf0a15507535e964625e9747b0f3056915a99382))

# Changelog

All notable changes to this project will be documented in this file. See [standard-version](https://github.com/conventional-changelog/standard-version) for commit guidelines.

## [1.42.0](https://github.com/aegisx-platform/aegisx-starter/compare/v1.41.0...v1.42.0) (2026-03-31)

### ⏪ Reverts

- Revert "fix(workflow): fix step completion bug + add AP report to procurement menu" ([efb3fc0](https://github.com/aegisx-platform/aegisx-starter/commit/efb3fc0f13779cb898dbac77070286d50c520994))

### ✨ Features

- **portal:** add dispensing board to launcher ([d87e2d4](https://github.com/aegisx-platform/aegisx-starter/commit/d87e2d4e67229c31b1eafa03210025039aa21299))
- **receipts:** add package unit selector for PO and Non-PO receipts ([9f0a544](https://github.com/aegisx-platform/aegisx-starter/commit/9f0a544286a83c0af9d971a8db9d91482f3fa137))
- **vendor-matching:** smart pack selection + pack recommendation ([d4cdce4](https://github.com/aegisx-platform/aegisx-starter/commit/d4cdce40cfad0479ec9e97b31ae81c78ab99bcc5))

### 🐛 Bug Fixes

- **companies:** treat bank_id 0 as null to prevent FK violation ([9b63069](https://github.com/aegisx-platform/aegisx-starter/commit/9b63069a11f0b8cafa3e44779c1f6974900adcfb))
- **dispensing-board:** move to main-warehouse section instead of portal ([1be8498](https://github.com/aegisx-platform/aegisx-starter/commit/1be84985be9390787b1ea3b6c968cd1d4b93ad71))
- **dispensing:** remove redundant tabs, fix sync to handle all locations ([502f543](https://github.com/aegisx-platform/aegisx-starter/commit/502f543ab8347c365eb5fe3840acd58f81a79fbf))
- **drug-returns:** auto-fill locations and add reason code selector ([2907023](https://github.com/aegisx-platform/aegisx-starter/commit/2907023aa2eaec939b1e4959d356ca56fa02519c))
- **drug-returns:** fix stats API mismatch and Thai localization ([5a11239](https://github.com/aegisx-platform/aegisx-starter/commit/5a11239ac9df31ce29d793b349d527aeda9bc6f0))
- **drug-returns:** initialize warehouse context and validate item quantity ([e3829c7](https://github.com/aegisx-platform/aegisx-starter/commit/e3829c764d5af7cb9ec451ec1a898d41bc5df355))
- **inventory:** add admin role to all tabs and shells ([9d0aab4](https://github.com/aegisx-platform/aegisx-starter/commit/9d0aab4e7f4554b911a1c950ed3f9dfbd9d05012))
- **locations:** expand location_code from varchar(10) to varchar(50) ([e150fdf](https://github.com/aegisx-platform/aegisx-starter/commit/e150fdf14df5f86a4ecbba6fb0371422d63bf832))
- **po:** address code review — lifecycle leak, contract price priority, error handling ([0547b5f](https://github.com/aegisx-platform/aegisx-starter/commit/0547b5fad224be38448b167d767befb7070d0979))
- **po:** address code review — lifecycle leak, contract price priority, error handling ([2c88546](https://github.com/aegisx-platform/aegisx-starter/commit/2c88546225f38543e51bc6018b1f73823bc96259))
- **po:** clean up code review issues — response parsing, dead code, migration ([e0c564f](https://github.com/aegisx-platform/aegisx-starter/commit/e0c564f9c883774cce6a2ca0636dd387e9ccfb10))
- **po:** use drug_pack_ratios for correct unit/price in PO drug selector ([713b457](https://github.com/aegisx-platform/aegisx-starter/commit/713b4570c1d38fe2659e60f6aa01dcb91a2d5d09))
- **po:** use drug_pack_ratios for correct unit/price in PO drug selector ([95d7b99](https://github.com/aegisx-platform/aegisx-starter/commit/95d7b99d692b33dbaa63a5032bcd05670c4635d4))
- **pr+vendor:** show purchase method in PR list + persist pack metadata in vendor matching ([add1966](https://github.com/aegisx-platform/aegisx-starter/commit/add1966abe8a816a3aaf5893cde4c7e7904cf670))
- **purchase-orders:** add source_type and emergency_reason to controller transform ([e32ac12](https://github.com/aegisx-platform/aegisx-starter/commit/e32ac12efd63cc99e79af99d3e45410f24853cf5))
- **purchase-orders:** prevent deletion of non-DRAFT purchase orders ([e3534a4](https://github.com/aegisx-platform/aegisx-starter/commit/e3534a4b8534f36a3d43a53ab7252cc01a6f950b))
- **purchase-orders:** remove dead validateDelete code, Thai error messages ([5363734](https://github.com/aegisx-platform/aegisx-starter/commit/53637341770ca9ad4b84d2c8e69fd79842feda87))
- **purchase-orders:** remove duplicate /api prefix from send-email URL ([c402042](https://github.com/aegisx-platform/aegisx-starter/commit/c402042878f35056277fbfb00a61279a4373c1ee))
- **rbac:** add drugPackRatios:read permission to procurement and related roles ([44ac3ff](https://github.com/aegisx-platform/aegisx-starter/commit/44ac3ffc7c210ea6754758c70a1c63e278d8c848))
- **rbac:** add drugPackRatios:read permission to procurement and related roles ([258e77c](https://github.com/aegisx-platform/aegisx-starter/commit/258e77cd1cefd2ef6ca724c9508809b1a88c80e9))
- **receipts:** show bin location name instead of ID in receipt detail ([1e38f4d](https://github.com/aegisx-platform/aegisx-starter/commit/1e38f4d057ddb11cf5875402fabe35faf4f33993))
- **receipts:** show location code + name in bin column (e.g., A - ยาเย็น) ([2a56beb](https://github.com/aegisx-platform/aegisx-starter/commit/2a56beb7d7a8e24f88f1564ce8cdcc2e158ec556))
- **requisition:** use from_location_id for stock balance instead of hardcoded '1' ([9c8cd39](https://github.com/aegisx-platform/aegisx-starter/commit/9c8cd39c12d5e06279a1c6ca3f77c2f670a1c3d6))
- **smart-match:** add base_unit + pr_unit_per_pack to response schema ([dd8389a](https://github.com/aegisx-platform/aegisx-starter/commit/dd8389a23cdd4ab6c9ff98603f78b36cb678463f))
- **smart-match:** fix unit conversion — compare in base units, show correct unit labels ([6a364b1](https://github.com/aegisx-platform/aegisx-starter/commit/6a364b152f676cf6fc9bf4a831cba71d5453136b))
- **smart-match:** hide 'สัญญาหมด' chip when no contract + code review fixes ([298e1ff](https://github.com/aegisx-platform/aegisx-starter/commit/298e1ffcb0441102046018a7ef674d8f1267fa43))
- **smart-match:** resolve UNIT to actual pack_unit + reorder fields ([58d9446](https://github.com/aegisx-platform/aegisx-starter/commit/58d94460e75a784005fef0f8bc7bdbd08ed3eb52))
- **smart-match:** summary badge counts AMBER without contract as gray ([a2f1d36](https://github.com/aegisx-platform/aegisx-starter/commit/a2f1d3646c5e9b9296bc97f3e70fccd61a74ac32))
- **smart-match:** use pack_unit from PR item + show base unit conversion ([59ab085](https://github.com/aegisx-platform/aegisx-starter/commit/59ab0852b9ff046ad4d90deb658db670b65115e2))
- **stock-counts:** show warning when populate finds no inventory items ([8122ddf](https://github.com/aegisx-platform/aegisx-starter/commit/8122ddfbd8cfe304c986e86c931fba965238eb56))
- **sub-warehouse:** remove ตัดจ่ายผู้ป่วย from top nav ([926b15c](https://github.com/aegisx-platform/aegisx-starter/commit/926b15cbfcc15c6b9a6e82b5c013368fa940d0c7))
- **sub-warehouse:** remove โอนระหว่างคลัง from nav ([a53dda8](https://github.com/aegisx-platform/aegisx-starter/commit/a53dda884eecc922ee4174cf183f8cd052154c62))
- **sub-warehouse:** restore permissions + add roles fallback for nav visibility ([4c3e955](https://github.com/aegisx-platform/aegisx-starter/commit/4c3e95522e622d6355e06c9e56870d13d404b785))
- **sub-warehouse:** show all nav items + reorder (Dashboard, ทะเบียนยา, ใบเบิกยา, ตัดจ่าย, ส่งคืน, โอน) ([ae97ccf](https://github.com/aegisx-platform/aegisx-starter/commit/ae97ccf11de11bc8ab3001cb111111034792484e))
- **sub-warehouse:** ใบเบิกยา → requisitions link, hide รับยาจากคลังใหญ่ + โอนระหว่างคลังย่อย ([cdb94ed](https://github.com/aegisx-platform/aegisx-starter/commit/cdb94ed49b939dc9c71ffdbb74fc1e97241d2c86))
- **workflow:** fix step completion bug + add AP report to procurement menu ([c23b323](https://github.com/aegisx-platform/aegisx-starter/commit/c23b323d760df119e1bca132a48ec73d21c93902))
- **workflow:** fix step completion bugs + add AP report to procurement menu ([92f4314](https://github.com/aegisx-platform/aegisx-starter/commit/92f4314fa8e181de250b2f651c8940c3b3f0e28f))
- **workflow:** fix step completion bugs + add AP report to procurement menu ([ccb619f](https://github.com/aegisx-platform/aegisx-starter/commit/ccb619faf85738ae8807edcaa8f2b4cca83f0f12))
- **workflow:** replace err: any with err: unknown in catch blocks ([0276470](https://github.com/aegisx-platform/aegisx-starter/commit/0276470dc60bdb19fce5e6ddfc8be998894243bf))
- **workflow:** use err: unknown and reset completingStepId on error ([397055e](https://github.com/aegisx-platform/aegisx-starter/commit/397055ed1c7c19e8721fcab4f2c36fb2d8ce7785))

# [1.41.0](https://github.com/aegisx-platform/aegisx-starter/compare/v1.40.6...v1.41.0) (2026-03-30)

### Bug Fixes

- **budget-adjustments:** add fiscal year filter to allocation dropdown ([5a38095](https://github.com/aegisx-platform/aegisx-starter/commit/5a380959f76d2561b7fb4f8fe4a4d4d447a475a3))
- **budget-adjustments:** add quarterly Q1-Q4 breakdown fields to form ([0143435](https://github.com/aegisx-platform/aegisx-starter/commit/0143435432c78ce129b2397a9bed28ca0221bf5a))
- **budget-adjustments:** load allocations from API by fiscal year ([046e65e](https://github.com/aegisx-platform/aegisx-starter/commit/046e65e67f0bbcd717a894213487973577c0de7f))
- **budget-adjustments:** preserve allocation in edit mode + safe async handler ([6829f1d](https://github.com/aegisx-platform/aegisx-starter/commit/6829f1d7f5fb1f586c44855fed6532f6ad884582))
- **budget-items:** preserve user-edited requested_qty on reload + Thai headers ([b998a3f](https://github.com/aegisx-platform/aegisx-starter/commit/b998a3ffb46782f46750b13e8507e80cb278a81f))
- **budget-items:** prevent negative values in editable grid columns ([20d7043](https://github.com/aegisx-platform/aegisx-starter/commit/20d70432eb49461c0686992a5d0934b94abc9a20))
- **budget-journals:** add getJoinQuery to show created_by_name in all list queries ([54bc3a9](https://github.com/aegisx-platform/aegisx-starter/commit/54bc3a91d03dc8f6e7e94d9a8ba0707d3ff24bb9))
- **budget-journals:** remove table alias in getJoinQuery to fix ORDER BY conflict ([5f01f98](https://github.com/aegisx-platform/aegisx-starter/commit/5f01f983cc886db8fffa2a0f840f4b710903e36f))
- **budget-requests:** prevent negative input in number fields ([a67fc2a](https://github.com/aegisx-platform/aegisx-starter/commit/a67fc2a38a47120473cf2409d2f68277317c924c))
- **budget-requests:** recalculate total_requested_amount on submit and finance approve ([4f7b0b4](https://github.com/aegisx-platform/aegisx-starter/commit/4f7b0b4468013a2c266e01bcc9c6d25069e3c980))
- **budget-requests:** remove budget_name column from list table ([b84deae](https://github.com/aegisx-platform/aegisx-starter/commit/b84deae5ded707befd5e00c5df9cb392cde4839a))
- **budget-requests:** show user names instead of UUIDs in approval timeline ([bb7aae7](https://github.com/aegisx-platform/aegisx-starter/commit/bb7aae7726cba1d384a6e0abfeabf28db98549be))
- **budget-revisions:** server-side stats, N+1 fix, comparison transform ([00dc6b4](https://github.com/aegisx-platform/aegisx-starter/commit/00dc6b44c96d2cab5e5ee42718ef642230222900))
- **budget:** add before/after amounts to revision payload + confirm dialogs ([07050d3](https://github.com/aegisx-platform/aegisx-starter/commit/07050d31e2eec02c2c3cca0e3177436d4f72529b))
- **budget:** add is_locked checks and fix entity type for transfer ([ef4534e](https://github.com/aegisx-platform/aegisx-starter/commit/ef4534e7033b8e9ed3ae9dfb76fcc09f7442b906))
- **budget:** address phase 2 review issues ([4abd15f](https://github.com/aegisx-platform/aegisx-starter/commit/4abd15fb13586e36309e05134ac10c0d35564bca))
- **budget:** address phase 4 review issues ([14b105f](https://github.com/aegisx-platform/aegisx-starter/commit/14b105fd596167772dca51838dd948aae53a30ed))
- **budget:** address phase 5 review issues ([9a6dc3e](https://github.com/aegisx-platform/aegisx-starter/commit/9a6dc3e95a1fc9b93efa815bb4c31f421b811de7))
- **budget:** address review issues in phase 1 migrations ([6ee42a6](https://github.com/aegisx-platform/aegisx-starter/commit/6ee42a62dd5ffbcdea58460e0088435fb91346d8))
- **budget:** address UI review issues ([cd13904](https://github.com/aegisx-platform/aegisx-starter/commit/cd13904427e58f6afe4999b022d71d445cc3ea2e))
- **budget:** code review fixes — transaction safety, error handling, UX ([8a34f2f](https://github.com/aegisx-platform/aegisx-starter/commit/8a34f2f020e04d03e2b43e4da379106034edf945))
- **budget:** fix frontend-backend schema alignment ([0b7e16b](https://github.com/aegisx-platform/aegisx-starter/commit/0b7e16b13b3c1ac6205cde7536b3dedc7920dab7))
- **budget:** move history routes before /:id to prevent Fastify route shadowing ([d2e3b2a](https://github.com/aegisx-platform/aegisx-starter/commit/d2e3b2ab693654ca9f791e6fc8dd190052500b8b))
- **budget:** remove duplicate history methods from plan revisions service ([442aa91](https://github.com/aegisx-platform/aegisx-starter/commit/442aa91610d260b558e3242fb4fe03c95be804d6))
- **budget:** show created_by_name in BR + department in allocation list ([4209455](https://github.com/aegisx-platform/aegisx-starter/commit/4209455b3c1da7e2eda66509b41e0d847541650e))
- **budget:** show only 4 ready modules in budget menu ([36f33b6](https://github.com/aegisx-platform/aegisx-starter/commit/36f33b608d04a3133aae5bf0b8bda5878af8443b))
- **budget:** update plan based on deep code review ([e32f46a](https://github.com/aegisx-platform/aegisx-starter/commit/e32f46aa727aed9466bbf7af5f7df1950413cc38))
- **deploy:** fix health check path in install-inventory.sh — add /api prefix for host access ([7ccd3dd](https://github.com/aegisx-platform/aegisx-starter/commit/7ccd3dd07749e57860f26171d835ac4c89d751d3))
- **deploy:** fix health check paths in install.sh — add /api prefix, fix port default ([174a505](https://github.com/aegisx-platform/aegisx-starter/commit/174a505e747ed8874538a7757a88ba5a2f75654b))
- **dispensing-sync:** fix spinner layout shift + correct drug mapping link path ([4802f83](https://github.com/aegisx-platform/aegisx-starter/commit/4802f83921bf7f836f888c6727ab1a85aee7e928))
- **dispensing-sync:** fix spinner layout shift + correct drug mapping link path ([8fd061c](https://github.com/aegisx-platform/aegisx-starter/commit/8fd061c3aea1a08b00ae98bf1fc7910fbe4d8f98))
- **his-settings:** add missing fields, enlarge dialogs, fix dashboard ([fd3b1a6](https://github.com/aegisx-platform/aegisx-starter/commit/fd3b1a654ff0a0db0e97cccf033a629a9082ab36))
- **his-settings:** escape double curly braces in query template placeholder ([423ad85](https://github.com/aegisx-platform/aegisx-starter/commit/423ad8576c8922a25c8f6a13e82cf28c03dee882))
- **his-settings:** escape template interpolation in query placeholder ([75d1a74](https://github.com/aegisx-platform/aegisx-starter/commit/75d1a74cf1cbf65f3636ef3ceba3aa245fb844d0))
- **hospital-settings:** add addressing_text and governor_acting_text to all LAC layers ([12d1a51](https://github.com/aegisx-platform/aegisx-starter/commit/12d1a51fa7c63a53bdd532b94a8c0624be85c25e))
- **import:** move [@if](https://github.com/if) outside button to fix spinner layout ([cb04fbf](https://github.com/aegisx-platform/aegisx-starter/commit/cb04fbfe5669f51c9a3ed2e9e18fcdd2e9321d6f))
- **import:** refactor PR import to use drug_code ([43b5322](https://github.com/aegisx-platform/aegisx-starter/commit/43b5322199cb5a64df25c9d48617c03914732afd))
- **inventory:** add delete guards for transfers, allocations, reservations ([2f29abd](https://github.com/aegisx-platform/aegisx-starter/commit/2f29abd62a095c7502903c505b5325c77697cda7))
- **inventory:** correct procurement dashboard receipts path ([c93a31e](https://github.com/aegisx-platform/aegisx-starter/commit/c93a31eb41a9163c5eee9b5610b3688a4ec6fbe7))
- **inventory:** prevent deletion of non-draft distributions, returns, contracts ([4e0b283](https://github.com/aegisx-platform/aegisx-starter/commit/4e0b283681382acdbc5e584d8a782c1b95ce3691))
- **inventory:** re-throw CANNOT_DELETE errors instead of swallowing ([569ee70](https://github.com/aegisx-platform/aegisx-starter/commit/569ee70c28578d9616fc27a8142e6ec5279a4033))
- **inventory:** transform Date objects to ISO date strings in 6 modules ([28b5355](https://github.com/aegisx-platform/aegisx-starter/commit/28b5355bcadcae0a72affd79c8839fd381a0dd0f))
- **LAC:** add addressing_text to PR repository + UpdateHospitalSettingsSchema ([2c21c23](https://github.com/aegisx-platform/aegisx-starter/commit/2c21c23fccdebb87686c4fb6df0fc88cdd1e9303))
- **locations:** allow null for nullable fields in Create/Update schemas ([17a26cd](https://github.com/aegisx-platform/aegisx-starter/commit/17a26cd93930c5a909199e01deb96bb9dbab805a))
- **locations:** code review fixes — memory leak, validators, emitEvent ([c6f0c8d](https://github.com/aegisx-platform/aegisx-starter/commit/c6f0c8db57aa8b3bfeb0b57fa9a98f94974cac75))
- **locations:** hide External Unit for non-HEALTH_CENTER, lock type/parent for BIN ([3541645](https://github.com/aegisx-platform/aegisx-starter/commit/3541645e3ec5e5d905b874ffa9fd56b66789cc41))
- **locations:** hide External Unit for non-HEALTH_CENTER, lock type/parent for BIN ([c52a917](https://github.com/aegisx-platform/aegisx-starter/commit/c52a9170806a299ea0b071881b83f35694830fe3))
- **locations:** lock parent_id field when preset (use != null check) ([6aa997d](https://github.com/aegisx-platform/aegisx-starter/commit/6aa997d7ce33696976978e07efd36d7e90958fa9))
- **locations:** lock parent_id field when preset (use != null check) ([6364efc](https://github.com/aegisx-platform/aegisx-starter/commit/6364efc628205db057845352313aebed7b636399))
- **locations:** merge Thai labels for bin form fields ([5881ebc](https://github.com/aegisx-platform/aegisx-starter/commit/5881ebc51fdddb25165e41bdf9bf00136a5f37d9))
- **locations:** replace broken bin location tab with dedicated CRUD dialog ([904ab03](https://github.com/aegisx-platform/aegisx-starter/commit/904ab0310283104b88cc4314e4ababff14ea9e10))
- **locations:** show server error message on create failure (e.g. duplicate code) ([27daef4](https://github.com/aegisx-platform/aegisx-starter/commit/27daef4af4a80a94593c3e10fce61fb48df760ed))
- **locations:** use Thai labels for bin location headers and form fields ([80ba808](https://github.com/aegisx-platform/aegisx-starter/commit/80ba808d2933ee9a278f4cba71b3915912302e05))
- **pdf:** add horizontal lines under header fields + indent opening paragraph ([0386b70](https://github.com/aegisx-platform/aegisx-starter/commit/0386b70451a12e3d9e9c1de900f95dabfafd0d20))
- **pdf:** add spacing between เรียน label and addressing text ([416c852](https://github.com/aegisx-platform/aegisx-starter/commit/416c85288fe2012fc504218ccd3a031032e209cd))
- **pdf:** add บาท suffix to reference price in government report table ([c32ec0f](https://github.com/aegisx-platform/aegisx-starter/commit/c32ec0f08c56df03f55da4e3cfc37544ae77f6b6))
- **pdf:** convert table numbers to Thai numerals + show pack unit info in prices ([2511961](https://github.com/aegisx-platform/aegisx-starter/commit/2511961768d88b4e26b1e159e2b17c26fc3e7ddc))
- **pdf:** fallback to settings.addressing_text for existing PRs without snapshot ([39aac38](https://github.com/aegisx-platform/aegisx-starter/commit/39aac38c525c537c24288c0048b408c347a57c58))
- **pdf:** fix line lengths to fit page width + use em spaces for proper indent ([849dba8](https://github.com/aegisx-platform/aegisx-starter/commit/849dba8498742383f9374d228b3ddad161ce9c9b))
- **pdf:** indent addressing text second line + increase spacing before opening paragraph ([f090e8a](https://github.com/aegisx-platform/aegisx-starter/commit/f090e8aca020df59003c2460320c20e1b5f3e3ab))
- **pdf:** pass dataColor to reference price table function ([9f40971](https://github.com/aegisx-platform/aegisx-starter/commit/9f409718f80d8e0c46c73e24fc5d96c067fff0aa))
- **pdf:** remove duplicate วิธี prefix in government report template ([891b6a5](https://github.com/aegisx-platform/aegisx-starter/commit/891b6a517644c1f089fd5b825950705db4b455e1))
- **pdf:** remove left margin from opening paragraph - spaces already in template ([9b6a50d](https://github.com/aegisx-platform/aegisx-starter/commit/9b6a50d488eaec12938dd4dfa8b3aecbcd6d040e))
- **pdf:** remove underline from addressing text - only header fields have lines ([5270f0d](https://github.com/aegisx-platform/aegisx-starter/commit/5270f0d01cc25797a53fdc7d995b1f43944da4b1))
- **pdf:** show last purchase price per base unit (TAB) not per pack ([5a21765](https://github.com/aegisx-platform/aegisx-starter/commit/5a217656bac24660c4cd5d6b658310098506d854))
- **pdf:** show unit info on reference price (e.g. 160.50 บาท/TAB) ([f021c31](https://github.com/aegisx-platform/aegisx-starter/commit/f021c314d7c9e3bff1b52dbdc90f727b6b7ef78d))
- **pdf:** use dg.base_unit from existing join for reference price unit display ([041cbc5](https://github.com/aegisx-platform/aegisx-starter/commit/041cbc56d2701ca69c2d45fe4c45b9b794225f2d))
- **pdf:** use drugs.package_unit as base unit for reference price display ([0400f65](https://github.com/aegisx-platform/aegisx-starter/commit/0400f65dd79b01e1806ebf83dae9515ee0909e0a))
- **pdf:** use non-breaking spaces for first-line indent on opening paragraph ([29aa8e4](https://github.com/aegisx-platform/aegisx-starter/commit/29aa8e4ce0f2321ab7db136476a5fc122785337b))
- **pdf:** use pdfmake leadingIndent for first-line paragraph indent ([2a025ef](https://github.com/aegisx-platform/aegisx-starter/commit/2a025efaf8ea3f86dfc07a6f24871c565034f42d))
- **pdf:** use PR item's last_purchase_price before PO lookup ([c561a06](https://github.com/aegisx-platform/aegisx-starter/commit/c561a060ad6039c7633ef139292368a32f12aa4b))
- **pr-import:** merge — unify PR number format + package_size validation ([5442394](https://github.com/aegisx-platform/aegisx-starter/commit/544239439608ef98a13e1bab67ca7912f202a4f0))
- **pr-import:** unify PR number format + add package_size validation ([66aa372](https://github.com/aegisx-platform/aegisx-starter/commit/66aa372b6d937421488d516f50be4caeb3f6f939))
- **pr-pdf:** fix price display + disable auto-fill reference price ([62da331](https://github.com/aegisx-platform/aegisx-starter/commit/62da3312ff0ef9ce9ca53e8623bc80ba657df83c))
- **pr-pdf:** show package_size after generic_name in all PDF templates ([7bca720](https://github.com/aegisx-platform/aegisx-starter/commit/7bca72067933c69f21aa0c803f4736df67f729dc))
- **pr:** add appearance=outline to all form fields in PR dialog ([75c0cf6](https://github.com/aegisx-platform/aegisx-starter/commit/75c0cf6ca9f69fbf3927751a3b5719ebd602cac0))
- **pr:** add drug_code JOIN in repository + pack fields in types ([67f569f](https://github.com/aegisx-platform/aegisx-starter/commit/67f569f2894b45d90e813a1d18043601df5c9ee9))
- **pr:** add package_size input field in drug item selector ([d264bd5](https://github.com/aegisx-platform/aegisx-starter/commit/d264bd5b11add7ac451c0941dbee594ba148c158))
- **pr:** auto-fill price from pack_price not reference_price, reference is display-only ([8af4f0d](https://github.com/aegisx-platform/aegisx-starter/commit/8af4f0de4f2173990557ca130c600d7db8c922a6))
- **pr:** cancel previous pack request on drug change instead of local array ([6e3d633](https://github.com/aegisx-platform/aegisx-starter/commit/6e3d633ec424ec962de50909e284d9910e5550b0))
- **pr:** code review fixes — validate generic_id, backward compat edit ([acd0f71](https://github.com/aegisx-platform/aegisx-starter/commit/acd0f711014628722c5e586a648d469033b1fd02))
- **pr:** compare reference price per base unit when using pack pricing ([9ba7649](https://github.com/aegisx-platform/aegisx-starter/commit/9ba7649702a0236340598cd6f561fb3a2959873c))
- **pr:** load pack options in edit mode + fix race condition ([7c9e606](https://github.com/aegisx-platform/aegisx-starter/commit/7c9e606b8942a4304ba9f53f22eebb3837a81f6e))
- **procurement:** prevent deletion of non-DRAFT purchase requests and orders ([a14927d](https://github.com/aegisx-platform/aegisx-starter/commit/a14927d1fcc75f06ea1d9fad6e65cfca828ab267))
- **pr:** organize form into sections with dividers and headings ([c170ce2](https://github.com/aegisx-platform/aegisx-starter/commit/c170ce2c2751a85d499d7a1381ca0d51cfd3d454))
- **pr:** package dropdown from drug_pack_ratios + default purchase method/reason ([96610c1](https://github.com/aegisx-platform/aegisx-starter/commit/96610c1ea819ca44c9592155f00650b1e5f742ba))
- **pr:** recalculate unit price on pack change + outline form style ([688d559](https://github.com/aegisx-platform/aegisx-starter/commit/688d5599971beb8aee99fdf2c5b1d6d7907c6596))
- **pr:** show package_size in drug selector + save to form + PDF display ([1476884](https://github.com/aegisx-platform/aegisx-starter/commit/147688439453c11fde102dd1379393555c3e082c))
- **pr:** transform date fields to ISO date string in transformToEntity ([69c12b8](https://github.com/aegisx-platform/aegisx-starter/commit/69c12b8154742efd8c710d00b9d68d0159652903))
- **purchase-requests:** add missing getStats method to service ([c89dd5d](https://github.com/aegisx-platform/aegisx-starter/commit/c89dd5dd7b17571996cf5e2128331b699372681a))
- **purchase-requests:** auto-fill fiscal quarter, hide delete for non-DRAFT, underline addressing text ([43dacef](https://github.com/aegisx-platform/aegisx-starter/commit/43dacef00525132dc10692948623e08f86d1c820))
- **purchase-requests:** fix edit mode package dropdown, unit display, budget policy, and add addressing settings ([fa5c3fd](https://github.com/aegisx-platform/aegisx-starter/commit/fa5c3fd6c1fa10cb5b2b479d89f616743227c4bb))
- **purchase-requests:** remove พิมพ์ PDF submenu, keep only รายงานขอซื้อขอจ้าง ([cfa1f6a](https://github.com/aegisx-platform/aegisx-starter/commit/cfa1f6a88d1a055350d496d436b8f8ab79ea18ef))
- **purchase-requests:** rename menu to พิมพ์รายงานขอซื้อขอจ้าง + print icon ([dc251f4](https://github.com/aegisx-platform/aegisx-starter/commit/dc251f4d6230fbd50ab13740eb2446fd8ca1af56))
- **purchase-requests:** replace วันที่ต้องการ with ความสำคัญ + วิธีจัดซื้อ columns ([c442328](https://github.com/aegisx-platform/aegisx-starter/commit/c442328fbc60c56dc7f0474fda4bc4cddf9b414d))
- **reports:** default date filters to current month ([e805be5](https://github.com/aegisx-platform/aegisx-starter/commit/e805be5d453263f185ca9d0c3a68ade722b7bc56))
- **reports:** exclude default dates from hasAnyFilters ([b1cfbc8](https://github.com/aegisx-platform/aegisx-starter/commit/b1cfbc854dedf5ea68a2948923c33b8e91ff4ed6))
- resolve merge conflicts in route configs ([87bd464](https://github.com/aegisx-platform/aegisx-starter/commit/87bd464d7298ec6450e5f5414e4de068a02b7c5c))
- **settings:** add purple preset color + native color picker ([fefbaa0](https://github.com/aegisx-platform/aegisx-starter/commit/fefbaa06e1f2bc61db1e4ad3f9b38ef4367c6a11)), closes [#4B0082](https://github.com/aegisx-platform/aegisx-starter/issues/4B0082)
- **settings:** remove reference price section, load purchase reasons dropdown ([b43700a](https://github.com/aegisx-platform/aegisx-starter/commit/b43700a6106a9c4edd6b0f3f1b7ebad8dcd72107))
- **settings:** send null instead of undefined for addressing fields + remove as any cast ([6e030fe](https://github.com/aegisx-platform/aegisx-starter/commit/6e030fedc32fef2d2d0892fe3ccaab79273b02ee))
- **stats:** add missing /stats API endpoints for 10 inventory modules ([1df35cf](https://github.com/aegisx-platform/aegisx-starter/commit/1df35cfa3fe4bdd5e4d3e29dad082ce855dc8de8))
- **stats:** use status-based counts instead of is_active for workflow modules ([22fcd0b](https://github.com/aegisx-platform/aegisx-starter/commit/22fcd0b7e825339404174e8ed4273aff3aa8b934))
- **transmittal:** add menu item and register route for document transmittals ([829b16d](https://github.com/aegisx-platform/aegisx-starter/commit/829b16df16fd5982cc4af55f8152db08da9dffb1))
- **ui:** replace [@if](https://github.com/if) spinner inside buttons with [class.invisible] ([50ced46](https://github.com/aegisx-platform/aegisx-starter/commit/50ced46490af3acb7e39c343c477a9e2c20d1cd5))

### Features

- **auth:** add masterdata and pharmacist demo accounts to login page ([2a2fffa](https://github.com/aegisx-platform/aegisx-starter/commit/2a2fffad8720b76d3ad954644928930557a2e145))
- **budget-requests:** add งบประมาณ column to list table ([add0a41](https://github.com/aegisx-platform/aegisx-starter/commit/add0a415cff2a0f76ecb85c595ad8ea37a9c225f))
- **budget:** add 4 frontend modules + extend adjustments for TRANSFER ([dbf9635](https://github.com/aegisx-platform/aegisx-starter/commit/dbf96353231dfd89522ccd5da20671b5766512b0))
- **budget:** add 7 database migrations for budget plan adjustment system ([ed1cb74](https://github.com/aegisx-platform/aegisx-starter/commit/ed1cb749cd9cce50246b04c5fe6b403b188b33cb))
- **budget:** add atomic TRANSFER support to budget adjustments ([9ae8399](https://github.com/aegisx-platform/aegisx-starter/commit/9ae83997a58e816382d879d54f60aad51ecd574c))
- **budget:** add budget plan revisions backend module ([143c83f](https://github.com/aegisx-platform/aegisx-starter/commit/143c83ff2c62c0ebb38efb1540039ad9cfe0259e))
- **budget:** add opening balance module for system go-live ([bcb761f](https://github.com/aegisx-platform/aegisx-starter/commit/bcb761f65f877f0c2afbb14e7a78b46f050d53b7))
- **budget:** add revision form dialog + transfer dialog ([17d5696](https://github.com/aegisx-platform/aegisx-starter/commit/17d5696d4167b68220983ffc1ef7840247808e1b))
- **budget:** add year-end module (summary, lock, carry-forward) ([3cb45a3](https://github.com/aegisx-platform/aegisx-starter/commit/3cb45a3ceb30d9ea2a122748408e29aad98abb69))
- **budget:** build real UI components for all 4 modules ([4f701d5](https://github.com/aegisx-platform/aegisx-starter/commit/4f701d53dce05386f5d9877b2f55f011da117af4))
- **dispensing-sync:** add summary stats API + location filter ([7f57f45](https://github.com/aegisx-platform/aegisx-starter/commit/7f57f45080e4350e811a058f34070dd2e35054db))
- **dispensing:** add setup stepper to landing page ([77ed715](https://github.com/aegisx-platform/aegisx-starter/commit/77ed7150fc96c1d0fcd6b27aeaf404239340a8e9))
- **his-settings:** add create profile button + test connection hint ([f06e4c8](https://github.com/aegisx-platform/aegisx-starter/commit/f06e4c8ac2ad0d043680c7e641750370a80f57a4))
- **inventory:** add role management page and 2 new roles ([2d519a1](https://github.com/aegisx-platform/aegisx-starter/commit/2d519a16ee0db5bc3e3e387cd19188be6df1ab36))
- **inventory:** add role-management to launcher ([d5317c5](https://github.com/aegisx-platform/aegisx-starter/commit/d5317c54dcc236b687ccaa87245bc8e0f6a270b9))
- **locations:** simplify BIN form — hide irrelevant sections, auto-generate code ([a0ff4ca](https://github.com/aegisx-platform/aegisx-starter/commit/a0ff4ca601bb301ae472cf56af85a45e767cdd06))
- **pr:** search by drug code/trade name instead of generic ([75af04f](https://github.com/aegisx-platform/aegisx-starter/commit/75af04feb3a47169bfa4517b3ac2ad5e9b1ff46b))
- **pr:** store pack_unit + unit_per_pack for PO compatibility ([4565ec1](https://github.com/aegisx-platform/aegisx-starter/commit/4565ec1d20732f3952bba1bc23cdbc8d89686cdd))

## [1.40.6](https://github.com/aegisx-platform/aegisx-starter/compare/v1.40.5...v1.40.6) (2026-03-29)

### Bug Fixes

- **server:** add debug logging for listen hang diagnosis ([b29a897](https://github.com/aegisx-platform/aegisx-starter/commit/b29a897553bc4a2a5ccde65ab231e76fd57f0343))

## [1.40.5](https://github.com/aegisx-platform/aegisx-starter/compare/v1.40.4...v1.40.5) (2026-03-29)

### Bug Fixes

- **websocket:** trigger release for Socket.IO defer fix on arm64 ([a3baf70](https://github.com/aegisx-platform/aegisx-starter/commit/a3baf70de3cdd2309130d779e68f9745d4143978))

## [1.40.4](https://github.com/aegisx-platform/aegisx-starter/compare/v1.40.3...v1.40.4) (2026-03-29)

### Bug Fixes

- **locations:** hide Bin Location section for non-BIN types ([a48cd9e](https://github.com/aegisx-platform/aegisx-starter/commit/a48cd9ebbd3d098d4cc549f4c33927998e5e572b))
- **websocket:** add null guards for deferred Socket.IO initialization ([f5b89e6](https://github.com/aegisx-platform/aegisx-starter/commit/f5b89e6dd718cb0ec2a91d69eb03db448c436974))

## [1.40.3](https://github.com/aegisx-platform/aegisx-starter/compare/v1.40.2...v1.40.3) (2026-03-29)

### Bug Fixes

- **locations:** add /stats route for KPI cards ([9ad31dd](https://github.com/aegisx-platform/aegisx-starter/commit/9ad31dd494099d9823d082d616d8ec37176ad139))
- **locations:** highlight MAIN row + badge + hide delete ([a3faf3e](https://github.com/aegisx-platform/aegisx-starter/commit/a3faf3e46514c36cd985aad7c36896462c17cc00))
- **locations:** protect MAIN warehouse + add bin management menu ([c76414e](https://github.com/aegisx-platform/aegisx-starter/commit/c76414e0e79da651bf6dadcfb3b527f1e4d005f6))
- **locations:** simplify view dialog + protect MAIN + reduce seed ([b6a4f82](https://github.com/aegisx-platform/aegisx-starter/commit/b6a4f82ce5fe6e96988bf99d836dfebb7cb3b739))
- **seeds:** ลด locations seed เหลือแค่คลังยาหลัก ([1aeea4d](https://github.com/aegisx-platform/aegisx-starter/commit/1aeea4debd935ccda41a9d5913a9d6e3206d4849))
- **websocket:** defer Socket.IO attach until after server listen ([48781cb](https://github.com/aegisx-platform/aegisx-starter/commit/48781cb6323dda22945fe12527cecddd5645c9b6))

## [1.40.2](https://github.com/aegisx-platform/aegisx-starter/compare/v1.40.1...v1.40.2) (2026-03-29)

### Bug Fixes

- **seeds:** make ALL seeds production-safe with upsert pattern ([1214382](https://github.com/aegisx-platform/aegisx-starter/commit/12143827253d196639b770fffdbef92d9ca998ef))

## [1.40.1](https://github.com/aegisx-platform/aegisx-starter/compare/v1.40.0...v1.40.1) (2026-03-29)

### Bug Fixes

- **crud-template:** redesign filter + stats + view dialog templates ([3611327](https://github.com/aegisx-platform/aegisx-starter/commit/36113276e828218ec3c6c4c9a372b223b46d7b9f))
- **docker:** ensure .compiled dir exists before schema build ([e4505cb](https://github.com/aegisx-platform/aegisx-starter/commit/e4505cbd00fd936cfd54b4264cea8c0aadbaa3d9))

# [1.40.0](https://github.com/aegisx-platform/aegisx-starter/compare/v1.39.2...v1.40.0) (2026-03-29)

### Bug Fixes

- **crud-generator:** generate server-side stats instead of client-side ([d982b96](https://github.com/aegisx-platform/aegisx-starter/commit/d982b9610032510cedbcab3a31564259ed5559a1))
- **docker:** pre-compile TypeBox schemas in Docker build ([89aea9d](https://github.com/aegisx-platform/aegisx-starter/commit/89aea9dde42d16d2d0a7e677f8852355eddd9d63))
- **setup:** add inventory schema creation and migration to setup command ([0a4c689](https://github.com/aegisx-platform/aegisx-starter/commit/0a4c6892ba7633db307ce8bc4cab96b3c0f878a1))

### Features

- **drugs:** add pharmacological_groups FK table + fix drug UI ([08a86fa](https://github.com/aegisx-platform/aegisx-starter/commit/08a86fa72d7f5316ea90d6f17e5c89a931186fb4))
- **pharmacological-groups:** add CRUD module + dropdown in drug dialog ([1a1fd59](https://github.com/aegisx-platform/aegisx-starter/commit/1a1fd596b336aa1718b7a2f2a87bd66e57b0b1b1))

## [1.39.2](https://github.com/aegisx-platform/aegisx-starter/compare/v1.39.1...v1.39.2) (2026-03-28)

### Bug Fixes

- **stats:** add server-side stats API to all inventory modules ([bca97a8](https://github.com/aegisx-platform/aegisx-starter/commit/bca97a81ad9ed22ec1a7f65bafeff4c0e8c31830))

## [1.39.1](https://github.com/aegisx-platform/aegisx-starter/compare/v1.39.0...v1.39.1) (2026-03-28)

### Bug Fixes

- **migration:** remove hardcoded GRANT TO postgres in inventory schema ([7d040e4](https://github.com/aegisx-platform/aegisx-starter/commit/7d040e48098abe463caa484852449a0ecafda7ee))

# [1.39.0](https://github.com/aegisx-platform/aegisx-starter/compare/v1.38.1...v1.39.0) (2026-03-28)

### Bug Fixes

- **budget-requests:** prevent deletion of non-DRAFT budget requests in UI ([50e1eb0](https://github.com/aegisx-platform/aegisx-starter/commit/50e1eb03743ad2d58f59ebcc132889d91a214f14))
- **budget:** ปรับปรุง UI หน้าจัดสรรงบและจองงบ ([80c976a](https://github.com/aegisx-platform/aegisx-starter/commit/80c976acc3164685ea35c89814ffe4d32c9e498e))
- **dispensing-board:** atomic updates for race condition + sync drug_group always ([03c86da](https://github.com/aegisx-platform/aegisx-starter/commit/03c86da01c918794213c1b9d4591fa43c6dd39ad))
- **dispensing-board:** fix picked_by UUID type — use null instead of 'anonymous' ([71cd300](https://github.com/aegisx-platform/aegisx-starter/commit/71cd300a92a50eb0eaee106cba1e4642ffde859d))
- **dispensing-board:** remove any types and unnecessary whereRaw cast ([aa11278](https://github.com/aegisx-platform/aegisx-starter/commit/aa11278dc9404352dd1da7cc1e79ad1fa829356c))
- **dispensing:** address code review critical issues ([54f8905](https://github.com/aegisx-platform/aegisx-starter/commit/54f8905a190b9eb39693df7661eee131aa2d0cf2))
- **dispensing:** fix [@else-if](https://github.com/else-if) as expression and querySelectorAll type errors ([5c8372c](https://github.com/aegisx-platform/aegisx-starter/commit/5c8372c335615c9304c9eac29f4882ebf16d83e8))
- **dispensing:** fix dispense-with-backorder API 500 error ([f8659c5](https://github.com/aegisx-platform/aegisx-starter/commit/f8659c5efe92982c4e58d2328fd602e5c097aa9b))
- **distribution:** show all available lots in FEFO suggestion, not just needed ([ddf6df5](https://github.com/aegisx-platform/aegisx-starter/commit/ddf6df515611b0b66db59dfb0a29b5e2493d4d6d))
- **drug-generics:** add server-side stats API and fix route ordering ([25dc57f](https://github.com/aegisx-platform/aegisx-starter/commit/25dc57ffdd6bcb5d2a321fa5d1a6fdbc0a149009))
- **drug-generics:** fix template download, CSV support, strength_value type ([ce3b30c](https://github.com/aegisx-platform/aegisx-starter/commit/ce3b30c7c26d92f4b98084963e3c77e60e33984d))
- **drugs:** fix drug-groups dropdown API response mapping ([7792ad1](https://github.com/aegisx-platform/aegisx-starter/commit/7792ad1b31cad81effdb7cd3a0f2855b487833a5))
- **inventory:** code review fixes — findById after transaction, dropdown schema ([2baa2b3](https://github.com/aegisx-platform/aegisx-starter/commit/2baa2b392328ace4721e293c36742dd3437bbd97))
- **inventory:** code review round 2 — cancel return, controller type, unused imports ([ecfeb92](https://github.com/aegisx-platform/aegisx-starter/commit/ecfeb92727892c727185860884d51e86e6f24817))
- **inventory:** critical bug fixes for transfers, bin locations, and lot tracking ([50feed6](https://github.com/aegisx-platform/aegisx-starter/commit/50feed6dec15a5fcb40d35fadc37dd0d0c82c67e))
- **inventory:** move drugForCancel lookup outside conditional blocks ([3f6e6bb](https://github.com/aegisx-platform/aegisx-starter/commit/3f6e6bb1ec1f18289124e6ee214542b139e435eb))
- **main-warehouse:** replace inline buttons with 3-dot menu, add view detail dialog ([a60b976](https://github.com/aegisx-platform/aegisx-starter/commit/a60b9763f56d7edaebde857e950a002120beb898))
- make data public for template access ([4e173ec](https://github.com/aegisx-platform/aegisx-starter/commit/4e173ec613d92ce20ea9a4498cc2afe65cd5dcc9))
- **pdf:** adjust garuda size and font to match DMS templates ([339e805](https://github.com/aegisx-platform/aegisx-starter/commit/339e805fa786b1a76b33ff86a24ada17a7291a15))
- **pdf:** correct evaluation report text to match DMS template ([9ddcd05](https://github.com/aegisx-platform/aegisx-starter/commit/9ddcd05710ea9df41f83f4f5f6ccd4f89b60e899))
- **procurement:** fix PR import from Excel — multipart parsing, schema alignment, and UI ([2d8f566](https://github.com/aegisx-platform/aegisx-starter/commit/2d8f566d8d4ad1744e0874bc4ed8d268408beed2))
- **procurement:** po date serialization, pr import multipart, hide create PO button ([4b8cd27](https://github.com/aegisx-platform/aegisx-starter/commit/4b8cd272e07ade027f6928840b63d8bdb3ca663b))
- **purchase-requests:** refactor budget validation to service-side calculation and fix field alignment ([2233ef7](https://github.com/aegisx-platform/aegisx-starter/commit/2233ef7bf61ccce90f184f51d959340f7e0f4226))
- **receipts:** show drug trade name instead of generic name in receipt detail ([f8ed7e5](https://github.com/aegisx-platform/aegisx-starter/commit/f8ed7e5badd9ac1e573e07b6c9c7304c48cbfca3))
- **reports:** add vendor_region filter to accounts payable frontend ([98544c3](https://github.com/aegisx-platform/aegisx-starter/commit/98544c362a8e6cb3e72486b20785bbece2412075))
- **reports:** deduplicate receipts join, add vendor_region to supported params ([3c3d811](https://github.com/aegisx-platform/aegisx-starter/commit/3c3d8119e644fb44436a3cf47ee53d36eaec741c))
- **reports:** update accounts payable to match DMS form with receipt data and vendor region ([d713a49](https://github.com/aegisx-platform/aegisx-starter/commit/d713a49a1d4f60338cdc63dec6336c87f3b31bd5))
- **requisition:** hide warehouse actions in sub-warehouse detail dialog ([d987be2](https://github.com/aegisx-platform/aegisx-starter/commit/d987be2eee8f4a179e70cb5dd10c6b5121e252e0))
- **seed:** use TRUNCATE CASCADE to fix FK constraint errors on re-seed ([0a1c2a9](https://github.com/aegisx-platform/aegisx-starter/commit/0a1c2a995973fdfe434dd8bcd8a974fe752af8f2))
- **settings:** add out_of_plan_policy to controller transformUpdateSchema ([8af90e0](https://github.com/aegisx-platform/aegisx-starter/commit/8af90e0f6734b7465599a67ab0d64a7f6239573e))
- **sub-warehouse:** select qty text on focus for quick typing ([4407ede](https://github.com/aegisx-platform/aegisx-starter/commit/4407eded04967b9e6948648ae5208176ef056bd5))
- **sub-warehouse:** use drug-autocomplete, fetch main warehouse stock, fix serialization ([870cbdb](https://github.com/aegisx-platform/aegisx-starter/commit/870cbdb574e29152b5bbbfa55eae7715e552c301))
- **transmittal-pdf:** match header format and font size to DMS template ([39cecfa](https://github.com/aegisx-platform/aegisx-starter/commit/39cecfa09d234a2f41026f847d55fca2c4c1bb2c))
- **transmittal:** fix list pagination format to match PaginatedResponseSchema ([ae4f53e](https://github.com/aegisx-platform/aegisx-starter/commit/ae4f53e23d213773de346609df23727e96803e9a))
- **transmittal:** fix vendor join, remove Type.Any, replace toPromise ([fcff03a](https://github.com/aegisx-platform/aegisx-starter/commit/fcff03ad4d04bc2fe674fa01c663a1a809af58d0))
- **transmittal:** send pagination as separate key matching PaginatedResponseSchema ([bcf0093](https://github.com/aegisx-platform/aegisx-starter/commit/bcf0093f8b3796278cdafb54aa46ee91b686dd07))
- **unit-conversion:** add company_id to ratio mapping and use getAllRatiosForDrug ([d0bafea](https://github.com/aegisx-platform/aegisx-starter/commit/d0bafeafa8808e1a309c5ca812e65178b489c697))
- **workflow:** address review findings — remove dead code, fix badges ([8794697](https://github.com/aegisx-platform/aegisx-starter/commit/879469774e64635d5096e038433c9b009a225742))
- **workflow:** wrap auto-sync in try/catch for graceful degradation ([f7f2c33](https://github.com/aegisx-platform/aegisx-starter/commit/f7f2c33a1f5748db4a96d7e40f8b5421cf37a0d0))

### Features

- **db:** create document_transmittal tables for pharmacy document tracking ([1d6eb3c](https://github.com/aegisx-platform/aegisx-starter/commit/1d6eb3c29707357963b91111874a8abe7444ca2e))
- **dispensing-board:** add claim/complete/unclaim endpoints + progress stats ([69570b1](https://github.com/aegisx-platform/aegisx-starter/commit/69570b1eacb3e9b5b018181da35a41a6387e2ac3))
- **dispensing-board:** add status badges, progress bar, claim/complete buttons to TV UI ([7b59de2](https://github.com/aegisx-platform/aegisx-starter/commit/7b59de2997ee35979c21530c595cb102b4e5c894))
- **dispensing-board:** add TV dashboard API and full-screen UI ([aa187b5](https://github.com/aegisx-platform/aegisx-starter/commit/aa187b5bee42b19f88e11a0aec8bb1934ccaa4c0))
- **dispensing:** add dispensing page shell and route ([4cb5802](https://github.com/aegisx-platform/aegisx-starter/commit/4cb58029a4bd0357950be3096e3a276504926c80))
- **dispensing:** add drug info card component ([d2ab8c6](https://github.com/aegisx-platform/aegisx-starter/commit/d2ab8c6db3d6385ea64555d1938c02bbc070a71e))
- **dispensing:** add LOT selection table with FEFO auto-fill ([8492ef6](https://github.com/aegisx-platform/aegisx-starter/commit/8492ef67d2ddc2556b1d82f684599e25235872bc))
- **dispensing:** add models and state service for dispensing page ([0b2ca9f](https://github.com/aegisx-platform/aegisx-starter/commit/0b2ca9f80020d6e4c9e1ea6992fa4feb9c8510b7))
- **dispensing:** add sidebar component with drug list and progress ([feec7c6](https://github.com/aegisx-platform/aegisx-starter/commit/feec7c619df935156ed62f18e6322f9c8a49feae))
- **dispensing:** add summary and action bar components ([774f7e4](https://github.com/aegisx-platform/aegisx-starter/commit/774f7e4aae53fb37436a37976938346c5c6ac1c2))
- **dispensing:** navigate to dispensing page instead of pick dialog ([eaf5f50](https://github.com/aegisx-platform/aegisx-starter/commit/eaf5f50f9df74ad054d339e5ba4fcfb8bdbbde04))
- **dispensing:** wire up data loading and save logic ([e87bdf2](https://github.com/aegisx-platform/aegisx-starter/commit/e87bdf27e1803c63c7f017b382358ee92fa494d6))
- dms workflow redesign, document transmittal, accounts payable fix ([6847707](https://github.com/aegisx-platform/aegisx-starter/commit/684770716a20b59d2dcbdd6ec89ffbdda3d87486))
- **drug-groups:** add drug_groups master table with CRUD and normalize FK ([357896e](https://github.com/aegisx-platform/aegisx-starter/commit/357896ef2053c107181a4ef0c71db2691956f60c))
- **drug-groups:** add seed file for drug_groups master data ([79610b7](https://github.com/aegisx-platform/aegisx-starter/commit/79610b7bee131dfd3c8573ac8fb9fcfdacff865f))
- **drugs:** add drug_group_id FK to drugs form + dispensing_status migration ([60a1e47](https://github.com/aegisx-platform/aegisx-starter/commit/60a1e47836ea8d8abda9032d84bc8e6f9af77c74))
- **inventory:** add bin tab, simplify menu, add stock card bin column ([bf8dcfb](https://github.com/aegisx-platform/aegisx-starter/commit/bf8dcfbb204f669d724d5e97d2b0c5b222f0f242))
- **receipts:** filter bin dropdown by location_type + auto-suggest bin ([e171d6f](https://github.com/aegisx-platform/aegisx-starter/commit/e171d6f15cf43ffa52caa5d4a94d667c735cf00d))
- **requisition:** pick button in detail, mat-card table, wider pick dialog ([9bb6ad7](https://github.com/aegisx-platform/aegisx-starter/commit/9bb6ad7df45475c95925d61d32d25eb32302ccc9))
- **requisition:** stock column + approve/reject in detail dialog ([943f758](https://github.com/aegisx-platform/aegisx-starter/commit/943f75818640573cd62c1b33b7f7eb1bff9ebb73))
- **settings-ui:** add province, officer name, and document signer fields to settings page ([0588e7c](https://github.com/aegisx-platform/aegisx-starter/commit/0588e7c0c71d06f0dccee45f1f0da09ad01952f3))
- **settings:** add PDF signer fields to hospital_settings for document customization ([77d08f9](https://github.com/aegisx-platform/aegisx-starter/commit/77d08f9fc5462b41bda32003fdd4a38917012e74))
- **sub-warehouse:** add detail/edit dialogs, 3-dot menu, elapsed time, drug_code in items response ([983e373](https://github.com/aegisx-platform/aegisx-starter/commit/983e373a14e67a84187fa7a4a170614fed39bf58))
- **sub-warehouse:** add requisition detail dialog with items view ([e36eb06](https://github.com/aegisx-platform/aegisx-starter/commit/e36eb068506d49ad93ae271f812ac5f69bef94d4))
- **transmittal:** add document transmittal CRUD API ([09f971b](https://github.com/aegisx-platform/aegisx-starter/commit/09f971bf8683d36e2ad1d46322e6d90ef20c6ade))
- **transmittal:** add frontend module + PDF service for document transmittal ([1055349](https://github.com/aegisx-platform/aegisx-starter/commit/10553496997c049219ed0ed7e115ef75607e4ec9))
- **warehouse:** redesign pick dialog, auto-flow approve>pick>dispense, focus UX ([1b3caab](https://github.com/aegisx-platform/aegisx-starter/commit/1b3caab87a9468a1e61a66476f68da93f63bb355))
- **workflow-ui:** redesign workflow tab with auto vs manual steps ([7f9e827](https://github.com/aegisx-platform/aegisx-starter/commit/7f9e827a55429f4dc413f21279535429d9983c24))
- **workflow:** add auto-sync from PR/PO/Receipt status ([c4b6614](https://github.com/aegisx-platform/aegisx-starter/commit/c4b6614e37aeee59a4a5608314aa7583a1e29785))

## [1.38.1](https://github.com/aegisx-platform/aegisx-starter/compare/v1.38.0...v1.38.1) (2026-03-27)

### Bug Fixes

- **settings:** fix TS2322 type cast for out_of_plan_policy ([7e6dd95](https://github.com/aegisx-platform/aegisx-starter/commit/7e6dd9557ca47dea3a914c595f7836ab4ebb5c30))

# [1.38.0](https://github.com/aegisx-platform/aegisx-starter/compare/v1.37.1...v1.38.0) (2026-03-27)

### Bug Fixes

- **budget:** complete LAC alignment for out_of_plan_policy across all layers ([ba0d011](https://github.com/aegisx-platform/aegisx-starter/commit/ba0d011d7fd4fb3b816baacf9140ab31b2467be5))
- **budget:** fix import XLS for budget request items ([18fee2f](https://github.com/aegisx-platform/aegisx-starter/commit/18fee2fe580f6d4954f642434a27ad9b0c6033c9))
- **ui:** align ROP Dashboard and PO Tracking with Procurement Dashboard style ([6255764](https://github.com/aegisx-platform/aegisx-starter/commit/6255764212864b6a614b422922de6ff455de7493))

### Features

- **budget:** configurable out-of-plan policy for PR budget validation ([aa34ce8](https://github.com/aegisx-platform/aegisx-starter/commit/aa34ce84cc2b6ad845673c1f9d686eb9c2d9d291))

## [1.37.1](https://github.com/aegisx-platform/aegisx-starter/compare/v1.37.0...v1.37.1) (2026-03-27)

### Bug Fixes

- **budget:** add adjustment_percent/adjusted_usage to BatchUpdate schema + frontend type ([5a3f377](https://github.com/aegisx-platform/aegisx-starter/commit/5a3f377b15ebf98e96cba61289c6983e024b5895))
- **budget:** auto-split Q1-Q4 when sum does not match requested_qty on load ([517743f](https://github.com/aegisx-platform/aegisx-starter/commit/517743ffe008c3187922f4795fc759497de0b840))
- **ui:** improve ROP Dashboard layout and visual consistency ([3b28aac](https://github.com/aegisx-platform/aegisx-starter/commit/3b28aac4257cadd82e2aa11efb14aa8200268326))

# [1.37.0](https://github.com/aegisx-platform/aegisx-starter/compare/v1.36.0...v1.37.0) (2026-03-26)

### Bug Fixes

- add home nav to user profile, remove blank lines in company dialogs ([994a0cd](https://github.com/aegisx-platform/aegisx-starter/commit/994a0cd73313e8bbd829ea8d545c7474caeced89))
- **budget:** allow qty=0 in backend import, only reject negative ([770184d](https://github.com/aegisx-platform/aegisx-starter/commit/770184d804b3ef4fedfe4f55ff4cde14cac3896b))
- **budget:** always recalculate requested_qty from estimated - stock on load ([96c6cfc](https://github.com/aegisx-platform/aegisx-starter/commit/96c6cfc6255f0fd83849a25e8601df2796201e09))
- **budget:** change qty=0 from error to warning, add warning status in import preview ([63ca7ec](https://github.com/aegisx-platform/aegisx-starter/commit/63ca7ec7d546f2365607b206454c27b361cbf205))
- **budget:** count warning rows as valid so import can proceed ([37d8ad0](https://github.com/aegisx-platform/aegisx-starter/commit/37d8ad01bb9e52270681fbf1622064b7ba9cb0e6))
- **budget:** populate package_size and unit in budget request items ([c376c77](https://github.com/aegisx-platform/aegisx-starter/commit/c376c777f5ff83fc7aa4b414ce7d167821f2f922))
- **budget:** pre-fill unit_price and stock in template, improve toggle button ([3bfcc66](https://github.com/aegisx-platform/aegisx-starter/commit/3bfcc6680d06231a94286bc0ce1c5db31735bd21))
- **companies:** remove Pack Ratio tab from company dialogs ([8558f92](https://github.com/aegisx-platform/aegisx-starter/commit/8558f9296f9a224f9d156aba486a58fa6e9d3add))
- **import:** clean up import page UI and fix PDF preview in production ([69a8032](https://github.com/aegisx-platform/aegisx-starter/commit/69a8032cff1e9c349b4635d90aaebed10da557dc))
- **import:** don't block step navigation when loadPreview fails ([cc36d35](https://github.com/aegisx-platform/aegisx-starter/commit/cc36d359fda6a0b54bc52a611d970cccdf0cbcbd))
- **import:** refine UI to Shadcn style with proper layout ([0ce732a](https://github.com/aegisx-platform/aegisx-starter/commit/0ce732a2327b7bf461db7aa1b834f1f11ac7ced3)), closes [#e5e7](https://github.com/aegisx-platform/aegisx-starter/issues/e5e7)
- **inventory:** reorder budget nav, update procurement nav menu items ([083facb](https://github.com/aegisx-platform/aegisx-starter/commit/083facbf77f48a431f31ce20638338cad8b27f3a))
- **profile:** add Home nav button, fix drug import data ([b90da9b](https://github.com/aegisx-platform/aegisx-starter/commit/b90da9b5cda86e1735ea950590be82c91cc82b8d))
- **purchase-order:** make delivery_date optional ([7e20d66](https://github.com/aegisx-platform/aegisx-starter/commit/7e20d66cb96ea2af1c811e4333ae39f883714155))
- **purchase-request:** make required_date optional ([0c9e0af](https://github.com/aegisx-platform/aegisx-starter/commit/0c9e0af1416d0423cb60f84dc210bbe92376e3b0))
- **tmt:** code review fixes - transaction, knex via options, Number(), button pattern ([67e66b4](https://github.com/aegisx-platform/aegisx-starter/commit/67e66b49f108acaaa1fec738033ff46a633d0156))
- **tmt:** full-width layout and outlined mat-cards for generic status tab ([8992769](https://github.com/aegisx-platform/aegisx-starter/commit/899276977815be5f3efb01df8a270b3b733f9e2c))

### Features

- **budget:** auto-calculate avg, estimated, requested_qty on page load ([281f516](https://github.com/aegisx-platform/aegisx-starter/commit/281f51634534e1f6a9ee373587c32a9694a4da86))
- **budget:** chain recalculation on field change + tooltip formulas ([9de083d](https://github.com/aegisx-platform/aegisx-starter/commit/9de083dca0ec4e70492753114dc2161ff5d94dd8))
- **budget:** import from drugs table with trade_name, alignment fixes ([4ad5962](https://github.com/aegisx-platform/aegisx-starter/commit/4ad59620c3b0bd854ffa15986d7f5b5544d20756))
- **budget:** improve budget request items UX ([8989e87](https://github.com/aegisx-platform/aegisx-starter/commit/8989e877ae58bd0a7d08f40e71df2e13614bc15e))
- **budget:** improve import template, SSCJ export, navigation, and error handling ([44a8600](https://github.com/aegisx-platform/aegisx-starter/commit/44a860034f348ce0ea04b9fe5f6e7b77766db404))
- **drug-generics:** add is_active toggle in form and status column in list ([ca65fa2](https://github.com/aegisx-platform/aegisx-starter/commit/ca65fa2c5b2b5b575e57fbbce5fb02de96ff7b16))
- **tmt:** add generic status management tab - activate/deactivate by drug mapping ([6a48c27](https://github.com/aegisx-platform/aegisx-starter/commit/6a48c27fe4d55638a84ba966c1c974381de88380))
- **ui:** add loading overlay to drug and drug-generic edit dialogs ([d4cd1af](https://github.com/aegisx-platform/aegisx-starter/commit/d4cd1af72076d9b1368f6d897f39a635dfaba8a1))

### Performance Improvements

- **docker:** remove unused libs/ from API Dockerfile ([8e3ad3c](https://github.com/aegisx-platform/aegisx-starter/commit/8e3ad3c228895733ce1a8cdcc62f975977d351b6))

# [1.36.0](https://github.com/aegisx-platform/aegisx-starter/compare/v1.35.2...v1.36.0) (2026-03-26)

### Bug Fixes

- add home nav to user profile, remove blank lines in company dialogs ([5ccbf3e](https://github.com/aegisx-platform/aegisx-starter/commit/5ccbf3e72e552e4f45f89b43282945fc7d0cf941))
- **budget:** allow qty=0 in backend import, only reject negative ([239586c](https://github.com/aegisx-platform/aegisx-starter/commit/239586cfde35e37103d55d9b9287c7f07ad7c9f2))
- **budget:** change qty=0 from error to warning, add warning status in import preview ([9adde5c](https://github.com/aegisx-platform/aegisx-starter/commit/9adde5c596016565918e83c597173a2aa396dd39))
- **budget:** count warning rows as valid so import can proceed ([1204775](https://github.com/aegisx-platform/aegisx-starter/commit/12047757bb4ce442edb2e172f81e90cbe1e5c2ec))
- **budget:** pre-fill unit_price and stock in template, improve toggle button ([33ddda2](https://github.com/aegisx-platform/aegisx-starter/commit/33ddda2b2f7f500a4457797c0754f2fe179b614e))
- **companies:** remove Pack Ratio tab from company dialogs ([6cb9154](https://github.com/aegisx-platform/aegisx-starter/commit/6cb9154bf0aff3455d74bf09735dae39fbe64689))
- **import:** clean up import page UI and fix PDF preview in production ([33f740c](https://github.com/aegisx-platform/aegisx-starter/commit/33f740c4517d8ebef2027e3647db8804365682e6))
- **import:** refine UI to Shadcn style with proper layout ([a67df33](https://github.com/aegisx-platform/aegisx-starter/commit/a67df33f494fc36ef5f939e3f5ae3e9bd0947ad9)), closes [#e5e7](https://github.com/aegisx-platform/aegisx-starter/issues/e5e7)
- **inventory:** reorder budget nav, update procurement nav menu items ([cc8fa3b](https://github.com/aegisx-platform/aegisx-starter/commit/cc8fa3b981bd2d6107c6ae2f1720a8e06be579cd))
- **profile:** add Home nav button, fix drug import data ([3d304a2](https://github.com/aegisx-platform/aegisx-starter/commit/3d304a2eeb0255ae2bd5e7058fc9e8a1c8ef62d2))
- **purchase-order:** make delivery_date optional ([5de1761](https://github.com/aegisx-platform/aegisx-starter/commit/5de176193de234cb45c50b27ad1c712a402c120c))

### Features

- **budget:** import from drugs table with trade_name, alignment fixes ([0c1820f](https://github.com/aegisx-platform/aegisx-starter/commit/0c1820f2cc51557eec83e18349842d5bedcd0591))
- **budget:** improve import template, SSCJ export, navigation, and error handling ([7a19e9a](https://github.com/aegisx-platform/aegisx-starter/commit/7a19e9ad65039748eb6551232606b0d87ea769b2))

### Performance Improvements

- **docker:** remove unused libs/ from API Dockerfile ([be4f0f6](https://github.com/aegisx-platform/aegisx-starter/commit/be4f0f61751d56760d4ed843691967185e8aee8e))

## [1.35.2](https://github.com/aegisx-platform/aegisx-starter/compare/v1.35.1...v1.35.2) (2026-03-25)

### Bug Fixes

- **budget:** populate package_size and unit in budget request items ([cde8137](https://github.com/aegisx-platform/aegisx-starter/commit/cde81375a9936253675022ad20c868d1f7af9fc9))
- **purchase-order:** make delivery_date nullable and update PO schemas ([10a946c](https://github.com/aegisx-platform/aegisx-starter/commit/10a946c08e787c4025e946e8d103eb2d33364bb8))
- **purchase-request:** make required_date optional ([753f11b](https://github.com/aegisx-platform/aegisx-starter/commit/753f11b92e0e591f9589fe4202481dcee6520bc4))

## [1.35.1](https://github.com/aegisx-platform/aegisx-starter/compare/v1.35.0...v1.35.1) (2026-03-25)

### Bug Fixes

- **ci:** use previous release tag for NX affected detection instead of ~1 ([bcac722](https://github.com/aegisx-platform/aegisx-starter/commit/bcac722a2f81ee34bfb2f0b5b978408f59894583))

# [1.35.0](https://github.com/aegisx-platform/aegisx-starter/compare/v1.34.0...v1.35.0) (2026-03-25)

### Features

- **auth:** session management improvements (OWASP best practices) ([75a9802](https://github.com/aegisx-platform/aegisx-starter/commit/75a98021b12674ba4cf9461701699322df814a56))
- **budget:** add adjustment_percent for estimated usage with full layer alignment ([bf89ecd](https://github.com/aegisx-platform/aegisx-starter/commit/bf89ecd9908a6c24a3af2546f832a7eb55b9f584))

# [1.34.0](https://github.com/aegisx-platform/aegisx-starter/compare/v1.33.1...v1.34.0) (2026-03-25)

### Bug Fixes

- **api:** parse single sort field:direction format in base repository ([35383ad](https://github.com/aegisx-platform/aegisx-starter/commit/35383addefc99cce8ef0a67523c4b3147df266a0))
- **docker:** fix PDF font loading in production — use relative paths + copy all assets ([06c184e](https://github.com/aegisx-platform/aegisx-starter/commit/06c184e2571c9bf9e0a65e869f36f1e3c5e16f77))
- **inventory:** add export route for drugs & companies, fix drug-generics route order ([2ba15f7](https://github.com/aegisx-platform/aegisx-starter/commit/2ba15f756a232a1304527f9af360c73844c4b61e))
- **inventory:** expand drug dialog to 95vw (max 1400px) ([711550b](https://github.com/aegisx-platform/aegisx-starter/commit/711550bc3c0e1f2cb3b27d80145f41b38eb03deb))
- **inventory:** fix companies dropdown search using BaseRepository ([3c6a363](https://github.com/aegisx-platform/aegisx-starter/commit/3c6a3631cc438cb893fc26bbbdbc3ced03ba00b1))
- **inventory:** rename all manufacturer labels to vendor (ผู้ผลิต → ผู้ขาย) ([b441d4c](https://github.com/aegisx-platform/aegisx-starter/commit/b441d4cbd7fa37076d7e5a88bde7a30ec26daa7b))
- **inventory:** rename manufacturer label to vendor (ผู้ผลิต → ผู้ขาย) ([d747d4a](https://github.com/aegisx-platform/aegisx-starter/commit/d747d4a724a19e8011d8ccda7b190c13e446f4a2))
- **inventory:** show Thai unit names in package converter dropdown ([4f40ed6](https://github.com/aegisx-platform/aegisx-starter/commit/4f40ed6b7659bff3f7fa8559bd1c337ce2bdb8f7))

### Features

- **inventory:** add drug dialog search drugs, unit fallback, SSCJ fix ([a803765](https://github.com/aegisx-platform/aegisx-starter/commit/a803765808d7252eed0ed0dfa757a8a5ccc2fecd))
- **inventory:** collapse mapping stats section — click to expand ([018ecec](https://github.com/aegisx-platform/aegisx-starter/commit/018ecec7bb6942d744cc21101baa91de799f57f3))
- **inventory:** quick create drug dialog, UI improvements & error handling ([7360971](https://github.com/aegisx-platform/aegisx-starter/commit/7360971e1bf51fda1efb2693de33a5933c1c75d0))

## [1.33.1](https://github.com/aegisx-platform/aegisx-starter/compare/v1.33.0...v1.33.1) (2026-03-24)

### Bug Fixes

- **dispensing:** fix sync dashboard showing 0 records — use records_created from DB ([db98af6](https://github.com/aegisx-platform/aegisx-starter/commit/db98af64a73768f2ac2b5caca6b63a90437a638b))
- **docker:** copy Thai font files to production image for PDF generation ([1d14078](https://github.com/aegisx-platform/aegisx-starter/commit/1d14078c780c5d1b566d9fade043d91669857e8b))
- **docker:** copy Thai fonts for PDF generation ([a9a7dbe](https://github.com/aegisx-platform/aegisx-starter/commit/a9a7dbeb20da30b8088d3b2eef63e27cff46ff5f))
- **inventory:** ensure current generic/manufacturer in dropdown on edit mode ([a248074](https://github.com/aegisx-platform/aegisx-starter/commit/a2480744f8eb569698d015ec633a882b1c0811b6))

# [1.33.0](https://github.com/aegisx-platform/aegisx-starter/compare/v1.32.0...v1.33.0) (2026-03-24)

### Bug Fixes

- **auth:** address code review — token_hint index, remove race condition, fix Redis sync ([b8251de](https://github.com/aegisx-platform/aegisx-starter/commit/b8251dead74f4e5be57e1df22ca9425d056991d0))
- **auth:** atomic token rotation with FOR UPDATE, update UserSession interface ([3d129ca](https://github.com/aegisx-platform/aegisx-starter/commit/3d129ca5f0f3426b98fb9ae8f74b4826b787219e))
- **auth:** fix websocket session revoked data access — subscribeToEvent returns data directly ([3a2e40d](https://github.com/aegisx-platform/aegisx-starter/commit/3a2e40d83452d630b39e8d0fa6d9f850e9ce3b79))
- **auth:** logout on snackbar action click or dismiss, not just timeout ([0b7dab5](https://github.com/aegisx-platform/aegisx-starter/commit/0b7dab5702a79abd7bd6b605251173cd558c5136))
- **auth:** make sessionRedis optional in type declaration to match defensive checks ([37152dd](https://github.com/aegisx-platform/aegisx-starter/commit/37152dda7a2e89cc6e37a8a700b2a7047e4abdbf))
- **auth:** sha256 token hint, refresh rotation grace period, evicted session redis removal ([a73b27a](https://github.com/aegisx-platform/aegisx-starter/commit/a73b27ac823ebdfc7dde6d7aeb94a3f70edae42e))
- **auth:** wait for websocket connected before subscribing to auth features ([1c41c15](https://github.com/aegisx-platform/aegisx-starter/commit/1c41c159ac1f4ca334c32e5e5418200c34c4b012))
- **inventory:** align frontend with backend schema — picked_by, priority, quantity fields ([ed5eba6](https://github.com/aegisx-platform/aegisx-starter/commit/ed5eba677558672cc93100d511389c0383aa8146))
- **inventory:** code review — user guard, cancelled card, backorder, parallel FEFO ([908a3e5](https://github.com/aegisx-platform/aegisx-starter/commit/908a3e554b8a291711f39e0d411464999cdd5296))
- **inventory:** code review fixes — compareWith, null-check, unit display, race condition ([7fc14e1](https://github.com/aegisx-platform/aegisx-starter/commit/7fc14e1dd3ee609746112532fe282e6bfd2efff3))
- **inventory:** fix review issues — signal input init, delete handling, import path ([70f6d01](https://github.com/aegisx-platform/aegisx-starter/commit/70f6d01cdda06bc932e9ce8559debb7b41a888e7))
- **inventory:** rewrite unit conversion to industry standard pattern ([498224a](https://github.com/aegisx-platform/aegisx-starter/commit/498224adf387ca752fb1dbc618dcabafb2d01db1))
- **inventory:** update drug_generics.base_unit from drugs.package_unit ([523aab3](https://github.com/aegisx-platform/aegisx-starter/commit/523aab3cb3089ce58d2f8c87a9e256bd03708fb4))
- **locations:** add parent_id filter to dropdown endpoint ([073c7a5](https://github.com/aegisx-platform/aegisx-starter/commit/073c7a51edbab140b39835b788bd4b39cdb371b7))
- **receipts:** fix bin dropdown not loading in receipt form ([9f590a7](https://github.com/aegisx-platform/aegisx-starter/commit/9f590a72d39cee31463d15a01598f37e9b11ddc0))

### Features

- **auth:** profile session revoke removes from redis + sends websocket notification ([247442b](https://github.com/aegisx-platform/aegisx-starter/commit/247442b2722825666c8b25da9603ecc2c3496792))
- **auth:** real-time session revocation via websocket notification ([85d4e74](https://github.com/aegisx-platform/aegisx-starter/commit/85d4e74b1f00ecad6b30c5bf65349f5ec5d54636))
- **auth:** session & JWT security overhaul — Redis session store, token hashing, rotation ([908b546](https://github.com/aegisx-platform/aegisx-starter/commit/908b54673ed1558ab5c58bc753ef4130a88e3a87))
- **auth:** session & JWT security overhaul — Redis session store, token hashing, rotation ([17077ac](https://github.com/aegisx-platform/aegisx-starter/commit/17077ac2030455488df5047cbd04d4addf2f1188))
- **inventory:** add clearOnSelect input and clear() method to drug-autocomplete ([ced2a2c](https://github.com/aegisx-platform/aegisx-starter/commit/ced2a2c6a2af7da41c29fbbaa0601ce3abaf4b99))
- **inventory:** add drug-package-editor component with role support ([ae7d1f7](https://github.com/aegisx-platform/aegisx-starter/commit/ae7d1f76c13dd9edee0af42a1c2fbe19e1134429))
- **inventory:** add Min/Max calculator from avg daily usage in dialog ([3e41480](https://github.com/aegisx-platform/aegisx-starter/commit/3e41480ed0e4ece3d046b64f45a431ae2e837391))
- **inventory:** add Min/ROP/Max columns and tune dialog to sub-warehouse inventory page ([0e241fc](https://github.com/aegisx-platform/aegisx-starter/commit/0e241fce3763350d8a519b61c9d599629de50ee9))
- **inventory:** add package management button to drugs list page ([c912e67](https://github.com/aegisx-platform/aegisx-starter/commit/c912e6702966f81140440d72541562c59b6b3211))
- **inventory:** add requested_unit columns to distribution items + backfill ([087a852](https://github.com/aegisx-platform/aegisx-starter/commit/087a852146e20de702b522553031fdf4e91de8b4))
- **inventory:** add requested_unit fields to distribution schemas, repository, route ([fe3c8ea](https://github.com/aegisx-platform/aegisx-starter/commit/fe3c8eae0cc5a1aaf75b2285aad6d8f52ad86be0))
- **inventory:** add requisition-management route, redirect old pages ([d2f8d06](https://github.com/aegisx-platform/aegisx-starter/commit/d2f8d065e0004057d1ff0ace88bc207b6028e298))
- **inventory:** add unit selector to quick requisition dialog ([2292d17](https://github.com/aegisx-platform/aegisx-starter/commit/2292d17ce9f7ca44de2d152fd5608fddf6bae32c))
- **inventory:** dispense confirm dialog with 2-step flow and backorder handling ([e156261](https://github.com/aegisx-platform/aegisx-starter/commit/e15626131f219d434db3f381b7d20147a83c495a))
- **inventory:** display unit info in pick dialog ([c371b0f](https://github.com/aegisx-platform/aegisx-starter/commit/c371b0f721c2922ec009eb3b3e4878cebc0715fc))
- **inventory:** display unit info in review and dispense dialogs ([393b807](https://github.com/aegisx-platform/aegisx-starter/commit/393b80768dd54b533e817e3e8928f6bce6e33cc7))
- **inventory:** extract shared reject-reason dialog component ([41067f8](https://github.com/aegisx-platform/aegisx-starter/commit/41067f8472af1ebcac893d52b8a710c502ee75a2))
- **inventory:** pick dialog with FEFO lot selection ([d474e1f](https://github.com/aegisx-platform/aegisx-starter/commit/d474e1f5200ee3b72ff4f799a7809b442be35cd8))
- **inventory:** review dialog for optional checker step ([202929f](https://github.com/aegisx-platform/aegisx-starter/commit/202929f524cd04a35399523d7173223db35e9221))
- **inventory:** unified requisition management + unit-aware workflow ([7c175e9](https://github.com/aegisx-platform/aegisx-starter/commit/7c175e9b8a37dec21ca9210f986bc1c4e33c8f7d))
- **inventory:** unified requisition management page with status cards and table ([a876b59](https://github.com/aegisx-platform/aegisx-starter/commit/a876b596d12406f38a931c37a396cd64c16911b0))
- **inventory:** update sub-warehouse requisition pages and quick-requisition dialog ([834ff55](https://github.com/aegisx-platform/aegisx-starter/commit/834ff55106de9bce0e78b225cf97e09eea3ac455))

### Performance Improvements

- **auth:** cache deleted_at check in redis, avoid DB query on every request ([f4f2a50](https://github.com/aegisx-platform/aegisx-starter/commit/f4f2a506057b9e41e1e21dffb53aeb5db6426d88))

# [1.32.0](https://github.com/aegisx-platform/aegisx-starter/compare/v1.31.0...v1.32.0) (2026-03-23)

### Bug Fixes

- **auth:** atomic force-login, correct session criterion, lockout recording, cookie maxAge ([112a127](https://github.com/aegisx-platform/aegisx-starter/commit/112a127515f776f05f0814ad8d743f38b64fdaa8))
- **budget:** recalculate total_requested_amount when recalculating allocations ([f5ccfb0](https://github.com/aegisx-platform/aegisx-starter/commit/f5ccfb0ec8e2cf44a6b6decaeb241058f41e0135))
- **inventory:** remove /api/ prefix from bin location calls and allow null external_type ([a2bfba9](https://github.com/aegisx-platform/aegisx-starter/commit/a2bfba90d83d1b025c76394024cafccf92c91e92))
- **inventory:** remove self-approval restrictions from budget adjustments ([c92a5a6](https://github.com/aegisx-platform/aegisx-starter/commit/c92a5a6435edef19cbab68b9f8382385b467e22a))

### Features

- **auth:** add force-login to revoke oldest session when limit reached ([e06d8f1](https://github.com/aegisx-platform/aegisx-starter/commit/e06d8f1d0904397a2db6c11b041c951cbaede8cb))

# [1.31.0](https://github.com/aegisx-platform/aegisx-starter/compare/v1.30.0...v1.31.0) (2026-03-22)

### Bug Fixes

- **auth:** count only active sessions (30min activity) for concurrent limit ([bb88c44](https://github.com/aegisx-platform/aegisx-starter/commit/bb88c44dcc58bbdb54d1ceec2fbafc048e8bba7a))
- **dashboard:** add mt-4 spacing before task list section ([bce17de](https://github.com/aegisx-platform/aegisx-starter/commit/bce17de7fdfd320759f36eb9de581a48f33fc316))
- **dashboard:** add top padding (pt-8) for better spacing from nav ([04a05e6](https://github.com/aegisx-platform/aegisx-starter/commit/04a05e6c2c623e53c674d4bd8e3e80e20e2a1991))
- **dashboard:** change limit=0 to limit=1 for KPI count queries ([bb554b7](https://github.com/aegisx-platform/aegisx-starter/commit/bb554b75ff857e6b68d1d5f2e8c8b621819b2098))
- **dashboard:** increase spacing between sections (space-y-6 → space-y-8) ([6baaa61](https://github.com/aegisx-platform/aegisx-starter/commit/6baaa61c2040de31c800b6e08e2f97837e38cc32))
- **dashboard:** increase task list spacing to mt-10 with block display ([ed4be3b](https://github.com/aegisx-platform/aegisx-starter/commit/ed4be3b45fb0a1c766a48aee5fb56d31d0a291bc))
- **dashboard:** reduce task list spacing mt-10 to mt-6 ([512a7ef](https://github.com/aegisx-platform/aegisx-starter/commit/512a7ef44e82c6a3bea057b7ae202fd956ec9c7e))
- **deploy:** add HIS_ENCRYPTION_SECRET to install.sh and docker-compose ([ea7d229](https://github.com/aegisx-platform/aegisx-starter/commit/ea7d2296faf6ab3564e1e4b0a2639157e22b3331))
- **inventory:** move warehouse-transfers and stock-counts from top nav to launcher ([aeeb607](https://github.com/aegisx-platform/aegisx-starter/commit/aeeb607cc9ea27702f669ed879835470d2670167))
- **warehouse-transfers:** add workflow routes, fix review issues ([4fb6c61](https://github.com/aegisx-platform/aegisx-starter/commit/4fb6c615207f4f1c77b93f4d6c70b62193cdf707))

### Features

- **auth:** block login at session limit, add session revoke UI ([2edfb43](https://github.com/aegisx-platform/aegisx-starter/commit/2edfb4380f19ed472c81d2c8012504ba141ee638))
- **procurement:** po dialog v2 — layout overhaul, unit filter, pr auto-fill ([fc29acb](https://github.com/aegisx-platform/aegisx-starter/commit/fc29acb8b2aeb6702c18fd2ad401a205452ab1bc))

# [1.30.0](https://github.com/aegisx-platform/aegisx-starter/compare/v1.29.0...v1.30.0) (2026-03-22)

### Bug Fixes

- **attachments:** change entity_id from uuid to text for non-uuid entities ([16b5ce8](https://github.com/aegisx-platform/aegisx-starter/commit/16b5ce8071c6f37479d9a5ce54e16bacecd8a216))
- **attachments:** remove uuid format from entityId - supports non-uuid entity IDs like receipt integer IDs ([16e9b78](https://github.com/aegisx-platform/aegisx-starter/commit/16e9b78aab26349c1ff9fa4812fc3d205b6146e3))
- **auth:** address PIN login code review issues (double-submit, sanitize, interceptor) ([0c662ff](https://github.com/aegisx-platform/aegisx-starter/commit/0c662ffbb98aaf473ee2b793efe55bb96e738527))
- **auth:** auto-focus PIN input when switching to PIN mode ([cb23b99](https://github.com/aegisx-platform/aegisx-starter/commit/cb23b99c7cb91273ccd2cdf5bd070deb87d2df02))
- **auth:** mask PIN input digits and fix submit button not activating ([afde639](https://github.com/aegisx-platform/aegisx-starter/commit/afde639643b21db6769b26f6cb6e9c675a753281))
- **auth:** rename OTP pattern input to avoid Angular PatternValidator conflict ([06a408c](https://github.com/aegisx-platform/aegisx-starter/commit/06a408cf1f75ab2981025d26b820e68580cf6b70))
- **auth:** send token for /auth/set-pin endpoint ([4e6e347](https://github.com/aegisx-platform/aegisx-starter/commit/4e6e3473ce68c5c5989f32cc5cd5fd28f53ac7fc))
- **budget-allocations:** add budget relation to BudgetAllocation type, remove any cast ([47611a3](https://github.com/aegisx-platform/aegisx-starter/commit/47611a3c8ae7477a1ae7f6c7d8a32a3e1cebbb1d))
- **budget-allocations:** replace Q1/Q2 columns with total_spent and remaining_budget ([d86a91b](https://github.com/aegisx-platform/aegisx-starter/commit/d86a91b4a285a2e2a3998243c58f7d5257188ea5))
- **budget-allocations:** show budget description instead of ID, hide department column ([0379dd9](https://github.com/aegisx-platform/aegisx-starter/commit/0379dd908bdd2e20446fb182d2db0240a4f733c1))
- **budget-allocations:** show Q1-Q4 columns, remove edit/delete actions ([ebcc349](https://github.com/aegisx-platform/aegisx-starter/commit/ebcc34944601d1ca72d2a81e3f0f136faf4879c0))
- **budget-reservations:** handle null LEFT JOIN objects and DECIMAL type conversion ([184681c](https://github.com/aegisx-platform/aegisx-starter/commit/184681c6b00c46af7b71bc74e01727cccdb0239d))
- **budget:** fix FK display across budget section - show names instead of IDs ([adbae72](https://github.com/aegisx-platform/aegisx-starter/commit/adbae721d4bf7f821ecc0cd33a1639096123ff60))
- **budget:** fix total_requested_amount calculation, remove edit from allocation view ([8ac5fd3](https://github.com/aegisx-platform/aegisx-starter/commit/8ac5fd3c8d8287d12cc9e83bba8b364cc7c64dcb))
- **budget:** review fixes - whereIn, optional fields, reply.success, fiscal_year max ([99a1e04](https://github.com/aegisx-platform/aegisx-starter/commit/99a1e0437468d4218200c31ce5608faeb598b22d))
- **dashboard:** remove shortcuts section and increase card spacing ([865fcbd](https://github.com/aegisx-platform/aegisx-starter/commit/865fcbd45475cdd1837106671653fcedf2a096a6))
- **data-sync:** add SQL injection protection and db_client validation ([d34bf23](https://github.com/aegisx-platform/aegisx-starter/commit/d34bf23670cb6c22fccc13c980f50abba3ab964e))
- **dispensing:** auto-match drugs by code and make patient dispensing read-only ([63fc92f](https://github.com/aegisx-platform/aegisx-starter/commit/63fc92f803ed1abaec75762943d7a570904728fa))
- **dispensing:** convert selectedHisSettingsId to signal for reactive computed ([f6237c8](https://github.com/aegisx-platform/aegisx-starter/commit/f6237c8657415cfeea3cfc0087e3908933359135))
- **dispensing:** make location_id optional in RunSyncRequest type ([c15b9de](https://github.com/aegisx-platform/aegisx-starter/commit/c15b9de9b9e383099e6b3194e23c8d049573568e))
- **dispensing:** remove location dropdown from sync dashboard, auto-select connection ([a5e06b6](https://github.com/aegisx-platform/aegisx-starter/commit/a5e06b6cae07ef0c8364e7526b61b59d84ce9ea6))
- **dispensing:** remove remaining openCreateDialog and bulkDelete references from template ([cebbe4f](https://github.com/aegisx-platform/aegisx-starter/commit/cebbe4f7ea4a2788db0a8d6716bbaccf8578f6be))
- **dispensing:** support per-record location from HIS view mapping ([a255fbb](https://github.com/aegisx-platform/aegisx-starter/commit/a255fbbb2e9c188e25e04c962df042c879346687))
- **disposal:** address final code review (self-approval, schema security, transactions, cleanup) ([b29ce3c](https://github.com/aegisx-platform/aegisx-starter/commit/b29ce3cce60253980c1ff326590c2152cf9ff72d))
- **disposal:** address workflow service review issues (race conditions, stock check, types) ([b80f047](https://github.com/aegisx-platform/aegisx-starter/commit/b80f04768c040a9e8cc0dcc7beed2564149123fe))
- **disposal:** remaining review fixes (items dialog, approval labels, documents, cancel button) ([2bb166a](https://github.com/aegisx-platform/aegisx-starter/commit/2bb166a58b57403cbe9360e23e1af1982f6d7ed8))
- **disposal:** review fixes for schema and route ([4b87845](https://github.com/aegisx-platform/aegisx-starter/commit/4b87845e2becc4e05cdfe797f7df5787aa9f1ed7))
- **disposal:** route order, stock locks, status guards, upload schema ([4d8276f](https://github.com/aegisx-platform/aegisx-starter/commit/4d8276fd99848322b8df267146c9c2a0fb4b0cd3))
- **drug-units:** allow null unit_type in schema to match DB data ([33b858b](https://github.com/aegisx-platform/aegisx-starter/commit/33b858bc9888e04c39e267c70ed0ed6e38927a5e))
- **file-upload:** decode thai filename from latin1 to utf-8 ([e5122d8](https://github.com/aegisx-platform/aegisx-starter/commit/e5122d86770ac5b4a80b05ab83647ed4b28b2c4b))
- **file-upload:** encode Thai filenames in Content-Disposition header using RFC 5987 ([57f33d6](https://github.com/aegisx-platform/aegisx-starter/commit/57f33d68dfeb592dbfbc3e3085f68210d07d6f6b))
- **grn-pdf:** checklist match frontend logic - add quantity_match and label_check computed checks ([fe93d67](https://github.com/aegisx-platform/aegisx-starter/commit/fe93d67db27ead33c856708fc8240c36ed9982be))
- **grn-pdf:** handle PostgreSQL boolean 't'/'f' strings in checklist comparison ([837c491](https://github.com/aegisx-platform/aegisx-starter/commit/837c491d6443072eb618fb4bd1f8cf314939c797))
- **grn-pdf:** increase font sizes to match PO/PR PDF standard ([7b16c7e](https://github.com/aegisx-platform/aegisx-starter/commit/7b16c7e2a4e33eb36852d313480578d96d1b6372))
- **his-sync:** fix record-grouper bug, sync status, add frontend features ([aa5caaf](https://github.com/aegisx-platform/aegisx-starter/commit/aa5caafd8c14c3bd6dfdf5409fe63b5f772fc270))
- **import:** fix companies bulk import failing all rows ([bc7f185](https://github.com/aegisx-platform/aegisx-starter/commit/bc7f18510f297b672e62020529df9f055388db25))
- **inventory:** add bin fields to controller transform methods ([8f3e117](https://github.com/aegisx-platform/aegisx-starter/commit/8f3e11749ad93fb7a82dc8be1d8074657e3e5903))
- **inventory:** add race condition guard to BudgetPlanFilterService ([5584802](https://github.com/aegisx-platform/aegisx-starter/commit/558480270ea1b4f59b58ba7656c9cadc7cfab830))
- **inventory:** address code review issues ([c36a617](https://github.com/aegisx-platform/aegisx-starter/commit/c36a61782af0140ff8ddb05fbb9b8e4f522b7fed))
- **inventory:** align drug picker types with backend schema optionality ([c736b82](https://github.com/aegisx-platform/aegisx-starter/commit/c736b8254c556d0c4ccf7c4b3ffedcd16b1a3506))
- **inventory:** code review - cancel reason, dispense body, nullable dept, dialogs ([951fdd5](https://github.com/aegisx-platform/aegisx-starter/commit/951fdd5f7545722bc2ed649139fd3d13cad057f8))
- **inventory:** code review fixes - canBeDeleted prefix, transfer audit, products query ([cb40fa3](https://github.com/aegisx-platform/aegisx-starter/commit/cb40fa336597c08b297b2410d3964f22d473ee98))
- **inventory:** code review fixes - pagination, error handling, types, BIN form option ([dd71282](https://github.com/aegisx-platform/aegisx-starter/commit/dd712824b79fd130e7dced9d49633e5f4f0bf21a))
- **inventory:** code review fixes - PUSH validation, HIGH priority, Material dialogs, Thai mapping ([3fa38a8](https://github.com/aegisx-platform/aegisx-starter/commit/3fa38a8911b332c687f5fffcea2661024668f988))
- **inventory:** code review fixes for location, stockcard, and receipts ([02166dc](https://github.com/aegisx-platform/aegisx-starter/commit/02166dc81c345a24d2a488ca57858292c1f71927))
- **inventory:** final review fixes - remove dead code, type safety, spec alignment ([2437b71](https://github.com/aegisx-platform/aegisx-starter/commit/2437b7167d843c7cf3baef477c11c52102409622))
- **inventory:** fix auto-req item_number, KPI status filter, and dist number race condition ([a45b54e](https://github.com/aegisx-platform/aegisx-starter/commit/a45b54ed1e21061ae4d684152c3503a4d1e6d726))
- **inventory:** fix budget-adjustments repository transformToDb and controller error handling ([57fdd39](https://github.com/aegisx-platform/aegisx-starter/commit/57fdd3996f3ad8e28501b26e84a55d6e96391626))
- **inventory:** fix checker check body shape + deduplicate config order values ([817ebe9](https://github.com/aegisx-platform/aegisx-starter/commit/817ebe95d7cec28057a79d90fcefec7cf62265af))
- **inventory:** fix location transformToDb missing external fields + auto-req drug_name column ([e2be18c](https://github.com/aegisx-platform/aegisx-starter/commit/e2be18c0e1a2be29bd812565e5e4cf1760b8fed6))
- **inventory:** fix multiple issues across budget, drugs, PR, and receipts ([ca4bd8e](https://github.com/aegisx-platform/aegisx-starter/commit/ca4bd8e324d731caec8511a8b16e91a04a8fec97))
- **inventory:** fix PO create to save items and correct enum values ([276fb58](https://github.com/aegisx-platform/aegisx-starter/commit/276fb5867d4c7d8394ab6c47c04a2a01bf671328))
- **inventory:** fix PO form - update items, discount calc, payment_terms dropdown ([14f8d0b](https://github.com/aegisx-platform/aegisx-starter/commit/14f8d0b81b383556854a54d79976deccdb9017b5))
- **inventory:** fix PO items - unit dropdown, schema, detail page, totals ([4a5ec52](https://github.com/aegisx-platform/aegisx-starter/commit/4a5ec526362d2080f2c20d0266fc4e258b3799a7))
- **inventory:** fix PULL requesting_dept_id resolution + location external fields transform ([89d4ba7](https://github.com/aegisx-platform/aegisx-starter/commit/89d4ba7f1ed98b6760c82bc2c11d71b1b261ed89))
- **inventory:** fix review issues in budget adjustments/journals ([1d442eb](https://github.com/aegisx-platform/aegisx-starter/commit/1d442eb5b90716dfb095b30b346b4864bab8a38d))
- **inventory:** fix UUID column types and remove strict response schemas for budget modules ([b7acb90](https://github.com/aegisx-platform/aegisx-starter/commit/b7acb9082515d25bc284ec9e67492106ff2444df))
- **inventory:** fix UUID comparison in budget adjustment workflow guards ([0345473](https://github.com/aegisx-platform/aegisx-starter/commit/034547339c96847373da6b27c312d9ed517e78af))
- **inventory:** remove old drug-distributions CRUD from main-warehouse and sub-warehouse menus ([17e8939](https://github.com/aegisx-platform/aegisx-starter/commit/17e8939ad594356e05c3d5c79d5fb4311a3e0f00))
- **inventory:** review fixes - budgetMode signal, confirm guard, dialog open guard ([77306ed](https://github.com/aegisx-platform/aegisx-starter/commit/77306edd7b095ebdfa7e70e3cd51f2ccd1f83de8))
- **inventory:** review fixes - loading state, ed_category type, reactive inputs, budget preload ([5505c93](https://github.com/aegisx-platform/aegisx-starter/commit/5505c93d788b12ecbaa7fcec19e72e5d78a32b08))
- **inventory:** review fixes - receipt number sequence and budget fallback ([21a634a](https://github.com/aegisx-platform/aegisx-starter/commit/21a634af762893e60aa37428bf6f108e005fbbac))
- **inventory:** tpu review fixes - budgetMode init, confirming guard, type assertion removal ([59d2762](https://github.com/aegisx-platform/aegisx-starter/commit/59d2762616848731c9b76e23ec14920cf9b246f0))
- **inventory:** wire up missing import routes for 8 master-data modules ([01a37cc](https://github.com/aegisx-platform/aegisx-starter/commit/01a37cc0c4ce7466d5fa2e46fae1ed2baa2ce16c))
- **locations:** complete LocationFormData interface with all form fields ([0398325](https://github.com/aegisx-platform/aegisx-starter/commit/0398325d167600370dacef9f800b025c591cc681))
- **locations:** remaining review fixes - perf, types, cleanup ([38c0d33](https://github.com/aegisx-platform/aegisx-starter/commit/38c0d3336228b66e58d04415a91ba42c7e15e2fe))
- **po-items:** add generic_id and drug_code to PO items response schema — fixes receipt FK error ([41f7bc1](https://github.com/aegisx-platform/aegisx-starter/commit/41f7bc1a5973223fd0f552373093f907a2cb644b))
- **po:** bonus_unit change from text to dropdown, auto-fill from item unit ([46ff386](https://github.com/aegisx-platform/aegisx-starter/commit/46ff386d212eae6d4abcbe9f0d3265098dbc15ac))
- **po:** calculatedTotal not updating - change from computed to writable signal ([a3b2686](https://github.com/aegisx-platform/aegisx-starter/commit/a3b2686c0c6e3427178aef76c32a55ff48b59268))
- **po:** convert pr_id from BIGINT string to number in transformToEntity ([abbe42c](https://github.com/aegisx-platform/aegisx-starter/commit/abbe42c071bf6f4ab0fd30d5ec3a760a7ae83a7e))
- **po:** fix SQL injection, edit mode patchValue, confirm dialog, and repository types ([53f479d](https://github.com/aegisx-platform/aegisx-starter/commit/53f479ddc8a1bbd245e8669a8755e4d2b423a5e1))
- **po:** recalculate totals after loading existing PO items in edit mode ([cf5d51c](https://github.com/aegisx-platform/aegisx-starter/commit/cf5d51cf85439a14e31a6387a78bda5941b5b17c))
- **po:** remove discount percentage from summary, show amount only ([fcabcc4](https://github.com/aegisx-platform/aegisx-starter/commit/fcabcc43eaab62e6802b3b5769db4f39a8dd2a75))
- **po:** replace alert with snackbar, fix decimal rounding in PO items constraint ([bdc412d](https://github.com/aegisx-platform/aegisx-starter/commit/bdc412dd239fe8dc8e0804a548cb3401fa4355e5))
- **po:** show discount percentage in summary box ([2ba33fa](https://github.com/aegisx-platform/aegisx-starter/commit/2ba33fa051c0d23f797b39072f664a046fb3435d))
- **po:** use firstValueFrom for axDialog.confirm (was executing without waiting), translate to Thai ([67fc1da](https://github.com/aegisx-platform/aegisx-starter/commit/67fc1da9deaf324b6fcab5c1caf2e1ce994ea76b))
- **receipts:** add Number() coercion for bonus_quantity, extract getPoItemForIndex helper ([7bb57e4](https://github.com/aegisx-platform/aegisx-starter/commit/7bb57e42221c1920850e0a8ff5d8aa0d2c40bf34))
- **receipts:** align grn pdf font sizes with pr/po standard ([1e484d8](https://github.com/aegisx-platform/aegisx-starter/commit/1e484d8827f5e00abdb9a76718c63e1b7e6be4ee))
- **receipts:** allow edit in all statuses except POSTED ([4ee63bd](https://github.com/aegisx-platform/aegisx-starter/commit/4ee63bd7bf73df01fdeb022c2c32a0f8221dac15))
- **receipts:** code review fixes for inspection features ([aad0666](https://github.com/aegisx-platform/aegisx-starter/commit/aad0666626a546c441792e804d59449455e15dc4))
- **receipts:** deduplicate checklist items and fix GRN PDF checkboxes ([db3fd55](https://github.com/aegisx-platform/aegisx-starter/commit/db3fd5523a645585c3647af6e798d40078cbb1b6))
- **receipts:** download files via HttpClient with auth token ([746f5de](https://github.com/aegisx-platform/aegisx-starter/commit/746f5de32eaea3964bc4b7ca26ced4e8389aabcf))
- **receipts:** DRAFT status shows 'start inspection' button instead of 'approve' - follow correct workflow ([d597987](https://github.com/aegisx-platform/aegisx-starter/commit/d59798747813fd32791cbf9a3de960e1fe2ecf46))
- **receipts:** drug autocomplete shows [object Object] - add displayWith ([9b5fafb](https://github.com/aegisx-platform/aegisx-starter/commit/9b5fafb79a1d97631f9f66aec645ac570cf7bc78))
- **receipts:** enlarge receipt dialog to 95vw/95vh for better usability ([cac9728](https://github.com/aegisx-platform/aegisx-starter/commit/cac9728d300a1025b1f68e1c7f00f3587ea741d1))
- **receipts:** fix GRN PDF column names and schema serialization ([ef06956](https://github.com/aegisx-platform/aegisx-starter/commit/ef06956ced0c89303cd743c41fb02b5e4c5796e2))
- **receipts:** fix inspection dialog layout and width ([80a0d32](https://github.com/aegisx-platform/aegisx-starter/commit/80a0d3281fee4978fe3df819921c685fb3656afd))
- **receipts:** fix inspection dialog layout using mat-dialog structure ([9c0ebf9](https://github.com/aegisx-platform/aegisx-starter/commit/9c0ebf9e8b871798ad0c0d8e05a5489eb1a1fbc6))
- **receipts:** grn pdf opens in dialog with auth token ([03c9efd](https://github.com/aegisx-platform/aegisx-starter/commit/03c9efd402498ab291fb6d60dd3c5a87e2272b37))
- **receipts:** improve inspector badge and icon styling in detail page ([1ce453a](https://github.com/aegisx-platform/aegisx-starter/commit/1ce453aceb7b889737463e0473d8d06c08db548e))
- **receipts:** inspector list shows UUID instead of name ([d548002](https://github.com/aegisx-platform/aegisx-starter/commit/d54800278c5a20cdea337628f086eb5041703c07))
- **receipts:** non-po dialog hides po-specific fields, adds remove button ([94eb30a](https://github.com/aegisx-platform/aegisx-starter/commit/94eb30a6f8f88ca047d37fbea185b6eeb284eb3b))
- **receipts:** po autocomplete, edit button, items in API, lot patching ([10207ca](https://github.com/aegisx-platform/aegisx-starter/commit/10207cac303977f7f3bed9e14267863b85b0f083))
- **receipts:** post to inventory waits for confirm before calling API ([763f73b](https://github.com/aegisx-platform/aegisx-starter/commit/763f73b489951806ab18521a20994b04b9aac959))
- **receipts:** receipt_date include time using datetime-local input ([7c74a16](https://github.com/aegisx-platform/aegisx-starter/commit/7c74a16686679a5410481f441d12c7384ee8f74e))
- **receipts:** remove max-width:900px CSS, expand dialog content height ([27fb6c6](https://github.com/aegisx-platform/aegisx-starter/commit/27fb6c6962a9dc0c601959b53ed22e1c9b33db6b))
- **receipts:** remove signature from inspection dialog, use thai labels ([a56fe30](https://github.com/aegisx-platform/aegisx-starter/commit/a56fe30cf5f22d32b66e5462a8e7def69cf9af6e))
- **receipts:** remove unsupported variant property from AxConfirmDialogData ([08d3d6c](https://github.com/aegisx-platform/aegisx-starter/commit/08d3d6c46ceb275ec0b2c565d0020f95ec368aeb))
- **receipts:** show approve buttons when inspectors already assigned ([9201e02](https://github.com/aegisx-platform/aegisx-starter/commit/9201e0294175c000accc4840853e828dd2d75fd4))
- **receipts:** show drug_code as subtitle, remove redundant TPU label ([6e5c5c7](https://github.com/aegisx-platform/aegisx-starter/commit/6e5c5c71cae672a27a7f1e41fb00c601b3786525))
- **receipts:** show workflow buttons per status correctly ([a8a8ed6](https://github.com/aegisx-platform/aegisx-starter/commit/a8a8ed675a5c0a2a1984c5887f0f3eae6a1d0d8b))
- **receipts:** start inspection directly when inspectors already assigned, skip redundant dialog ([dd3da0b](https://github.com/aegisx-platform/aegisx-starter/commit/dd3da0bb0cf4febb27e966b29df2cfb3cbfc57bc))
- **receipts:** sticky dialog actions buttons at bottom, prevent scrolling out of view ([7f25f94](https://github.com/aegisx-platform/aegisx-starter/commit/7f25f9491f5d0bc7080aa8e6f000002f2830ecf7))
- **receipts:** use /download endpoint for file preview and download ([7680a94](https://github.com/aegisx-platform/aegisx-starter/commit/7680a946c9180f179561d8f961ad09bdaf162f5f))
- **receipts:** use correct signal name loading instead of saving ([2fc043d](https://github.com/aegisx-platform/aegisx-starter/commit/2fc043d1c806afe68d9798543a41885364348f91))
- **receipts:** wrap axDialog.confirm() with firstValueFrom to prevent approve action executing without confirmation ([511c159](https://github.com/aegisx-platform/aegisx-starter/commit/511c159864b9fa261611548b63fc10ad1f1b8b65))
- **receipt:** use isDangerous instead of unsupported variant property ([0fc0dd0](https://github.com/aegisx-platform/aegisx-starter/commit/0fc0dd08c45bea3b11e8545d1396b5edd568d702))
- remove duplicate /api/ prefix from all frontend HTTP calls ([5db84d0](https://github.com/aegisx-platform/aegisx-starter/commit/5db84d0ac6467de0af435024411b2ac29d7588c4))
- **reports:** fix receipt_type filter passthrough, orientation param, and add error handling ([57228ff](https://github.com/aegisx-platform/aegisx-starter/commit/57228ffa8a97d151f1d2a60ff48f070e30c2604b))
- **stock-counts:** add drug join, fix permissions, remove console.log ([7a34e55](https://github.com/aegisx-platform/aegisx-starter/commit/7a34e55fcb89a42c1a1accd2c037cc7f940c897d))
- **stock-counts:** remove empty string fields before submit to fix validation error ([61861ca](https://github.com/aegisx-platform/aegisx-starter/commit/61861ca473c367a371ff9c0ddcffd78dd844d98a))
- **stockcard:** fix date filter and inline custom datepickers ([411d142](https://github.com/aegisx-platform/aegisx-starter/commit/411d142888dcc31631fe37834f866da81694358b))
- **test:** fix all API unit test failures (62 failed to 0 failed) ([898a8d7](https://github.com/aegisx-platform/aegisx-starter/commit/898a8d7385f1a52af6ad72ec3c3afbb652c29faf))

### Features

- **attachments:** add receipt_item entity type config ([426f385](https://github.com/aegisx-platform/aegisx-starter/commit/426f38531ae32cf39298dd5b9f80e062eadb3850))
- **auth:** add concurrent login limit with per-user override ([d1cb9e2](https://github.com/aegisx-platform/aegisx-starter/commit/d1cb9e2f6d63e119ef3b39a326625d1efa42458f))
- **auth:** auto-fill PIN login with remembered account ([af437b3](https://github.com/aegisx-platform/aegisx-starter/commit/af437b3aa83980aca195a97205dbbeb9f0be63dc))
- **auth:** improve PIN login UX with OTP input and profile card ([c5cfbe9](https://github.com/aegisx-platform/aegisx-starter/commit/c5cfbe9ffa691d6901ac57abdf27a3dd8d36117e))
- **budget:** add budget-plan-items endpoint for drug picker filter ([136b6cc](https://github.com/aegisx-platform/aegisx-starter/commit/136b6ccdfc795bc6cfa52797048601eab036903a))
- **data-sync:** add generic table sync to external databases ([78f9548](https://github.com/aegisx-platform/aegisx-starter/commit/78f954861ccc5d3b44d946b73416d9f5cc4d9845))
- **dispensing:** add default_location_id to his_settings and make location optional ([c749fb5](https://github.com/aegisx-platform/aegisx-starter/commit/c749fb5247bc8291756d1c27af670f1445a5512f))
- **dispensing:** redesign UI - single page sync dashboard + categorized launcher ([1d8c927](https://github.com/aegisx-platform/aegisx-starter/commit/1d8c927d1bcb08bac800936da1839d01cd2035c6))
- **disposal:** add detail page with items, approval, documents tabs and dialogs ([d1c584b](https://github.com/aegisx-platform/aegisx-starter/commit/d1c584b387d5e15d4dfba1557800a46149fc345f))
- **disposal:** add documents management service ([406a671](https://github.com/aegisx-platform/aegisx-starter/commit/406a671e6e32ec81f384fb6e85b39f454d5aa91e))
- **disposal:** add FINAL_APPROVED status and DISPOSE transaction type ([af79720](https://github.com/aegisx-platform/aegisx-starter/commit/af797200dc5c04802ffa78f37e351f68aef666e5))
- **disposal:** add items management service ([fd1ea6d](https://github.com/aegisx-platform/aegisx-starter/commit/fd1ea6dea0dc32e112c013987f8b0fb97af94e38))
- **disposal:** add PDF generation for request and certificate ([cbd9128](https://github.com/aegisx-platform/aegisx-starter/commit/cbd912876bbe3e4bbefddabee13305a9fac0e035))
- **disposal:** add workflow API methods to frontend service ([d002b8d](https://github.com/aegisx-platform/aegisx-starter/commit/d002b8dbc83dc1de7174a04e406b2c0586ed53b8))
- **disposal:** add workflow routes, controller methods, wire all services ([e70f97f](https://github.com/aegisx-platform/aegisx-starter/commit/e70f97f72fb49ac3258a7aa4f22d02aa9d34592d))
- **disposal:** add workflow schemas and types ([a511be0](https://github.com/aegisx-platform/aegisx-starter/commit/a511be0798fdf74a2cad0de4ea214b535cc3ccd0))
- **disposal:** add workflow service with 2-level approval and stock deduction ([55a02f2](https://github.com/aegisx-platform/aegisx-starter/commit/55a02f29380868414cdbf1966e71d35014f21a8c))
- **disposal:** update list with status badges and detail page navigation ([2a1d7bf](https://github.com/aegisx-platform/aegisx-starter/commit/2a1d7bf6c8854fdbdaee67fb2caa1c25010f05a1))
- **drug-picker:** show manufacturer name and TPU code in autocomplete dropdown ([9517454](https://github.com/aegisx-platform/aegisx-starter/commit/9517454b5b069d57de27960776ce48adae28a708))
- **inventory:** add auto-requisition endpoint for below-reorder-point items ([14d5119](https://github.com/aegisx-platform/aegisx-starter/commit/14d5119f936b6276648348c3ba5df3aefadf3425))
- **inventory:** add bin fields to locations schemas, repository, service ([31d5e81](https://github.com/aegisx-platform/aegisx-starter/commit/31d5e817f1114a103906392a58a8b3afbc2ad227))
- **inventory:** add bin location database migrations ([1311fcc](https://github.com/aegisx-platform/aegisx-starter/commit/1311fcc7e6349f1cd6acc2e6c1f1ba483cce309d))
- **inventory:** add bin location fields to location form and list ([bc1f12e](https://github.com/aegisx-platform/aegisx-starter/commit/bc1f12e7ab07a85a3091e4f69a0bca566f1a5bbc))
- **inventory:** add bin location picker to receipt dialog lot rows ([9743783](https://github.com/aegisx-platform/aegisx-starter/commit/97437839daea1bbf24f6180b6d1a61a53d660526))
- **inventory:** add BIN location type enum value ([3cc6b98](https://github.com/aegisx-platform/aegisx-starter/commit/3cc6b982a28eb37a2121d010948be6d849b49a12))
- **inventory:** add BinProductsDialog and connect to warehouse view dialog ([25f59db](https://github.com/aegisx-platform/aegisx-starter/commit/25f59dbe8d7b3381a0f3f6816d39c4d3f2246e13))
- **inventory:** add budget_adjustment_requests and budget_journals tables ([ed935fe](https://github.com/aegisx-platform/aegisx-starter/commit/ed935fe950532123b31f42028c4ab023248f8417))
- **inventory:** add budget-adjustments and budget-journals frontend ([164da0b](https://github.com/aegisx-platform/aegisx-starter/commit/164da0b68c2b6e75c64ffb5021a32cf34f3248da))
- **inventory:** add budget-adjustments module with approval workflow ([11c61ad](https://github.com/aegisx-platform/aegisx-starter/commit/11c61ad758a3b2e4d980c31ef118e2f778374610))
- **inventory:** add budget-journals read-only module ([00a1a31](https://github.com/aegisx-platform/aegisx-starter/commit/00a1a31276470e0758254ba2c2aa6688ddf4d43e))
- **inventory:** add BudgetPlanFilterService with fiscal year cache ([673302e](https://github.com/aegisx-platform/aegisx-starter/commit/673302e7b6589e727364a6fbcab327e5bf9ae9d7))
- **inventory:** add checker page for distribution verification and dispense ([b634102](https://github.com/aegisx-platform/aegisx-starter/commit/b634102510c507389bc1eb8d074bca944e28ac0a))
- **inventory:** add configurable VAT rate in settings, improve PO dialog UX ([f030483](https://github.com/aegisx-platform/aegisx-starter/commit/f0304833e0d245e9351fc329dbc8bc54b574394a))
- **inventory:** add data sync menu to main warehouse launcher ([3aa6477](https://github.com/aegisx-platform/aegisx-starter/commit/3aa6477291255fc21f6fd0a35718f2d74038a7b4))
- **inventory:** add drug picker shared types ([793ab33](https://github.com/aegisx-platform/aegisx-starter/commit/793ab33bb5f64f818467f063e316c334d2143ca8))
- **inventory:** add DrugAutocompleteComponent for TPU selection ([d0a159d](https://github.com/aegisx-platform/aegisx-starter/commit/d0a159dcdda2b3f94d8b090a80c64f6b72ffbfc4))
- **inventory:** add DrugDialogComponent for TPU selection ([acb5772](https://github.com/aegisx-platform/aegisx-starter/commit/acb5772b527c3c6dfde7b7d038e29e6ec8095046))
- **inventory:** add DrugGenericAutocompleteComponent for budget-aware drug search ([064674b](https://github.com/aegisx-platform/aegisx-starter/commit/064674b34440b3a55064540b6d3af8408c26a01f))
- **inventory:** add DrugGenericDialogComponent with budget plan filter ([f9768ce](https://github.com/aegisx-platform/aegisx-starter/commit/f9768ce73d73fd473b7938c39fff4afa74d7cd0e))
- **inventory:** add DrugGenericPickerComponent wrapper ([a91f7d8](https://github.com/aegisx-platform/aegisx-starter/commit/a91f7d89641e855a6d7bfb4b3afc531d67522182))
- **inventory:** add DrugPickerComponent wrapper for TPU ([59d390b](https://github.com/aegisx-platform/aegisx-starter/commit/59d390bae1b8a7a6f19aa60e1a3d75029ceda362))
- **inventory:** add DrugSearchService for shared drug picker ([343f898](https://github.com/aegisx-platform/aegisx-starter/commit/343f898292318bb31f870dc0b86ba2986368446e))
- **inventory:** add HEALTH_CENTER location type + is_external/hcode/external_type fields ([f561c8e](https://github.com/aegisx-platform/aegisx-starter/commit/f561c8ed4fee7d715c63f49b20ba2868a67623d5))
- **inventory:** add pending requisitions page to main warehouse ([23eff02](https://github.com/aegisx-platform/aegisx-starter/commit/23eff020afdda046c0c5d2b43395181a1327ae27))
- **inventory:** add pick list page with FEFO lot suggestion ([c4b3183](https://github.com/aegisx-platform/aegisx-starter/commit/c4b3183c9d0d0d1445d67e1a81fa7d1ee7795342))
- **inventory:** add products-in-location and transfer-location endpoints ([da476ee](https://github.com/aegisx-platform/aegisx-starter/commit/da476ee47b177f5c6ebef5185ab50b372417cc40))
- **inventory:** add PULL request support with auto-resolve and external location guard ([b5793b8](https://github.com/aegisx-platform/aegisx-starter/commit/b5793b8d07211f7b8c3cb13139c74509513e72e6))
- **inventory:** add request_type/required_date to distribution schemas and types ([205fac8](https://github.com/aegisx-platform/aegisx-starter/commit/205fac83d83de5986dee6f0b931819c3481a52ba))
- **inventory:** add requisition fields to distributions + external location support ([7afe190](https://github.com/aegisx-platform/aegisx-starter/commit/7afe190e77c49b4d557147ed245873238b8d3404))
- **inventory:** add requisition KPI cards and auto-requisition button to dashboards ([3ae86cd](https://github.com/aegisx-platform/aegisx-starter/commit/3ae86cd235a73203ae007d7a8f5541982f9c6a35))
- **inventory:** add requisition list page to sub-warehouse ([8e96e7f](https://github.com/aegisx-platform/aegisx-starter/commit/8e96e7fa8dcf9c7e7f25a4eefeef9fdf31ab830d))
- **inventory:** add warehouse-transfers frontend module with workflow support ([46bbd12](https://github.com/aegisx-platform/aegisx-starter/commit/46bbd129d3e1516e2a92a855ca3aca38b916d4fb))
- **inventory:** assign bin location from receipt detail suggestions ([1120601](https://github.com/aegisx-platform/aegisx-starter/commit/112060173acd704014ac2783c36f52f8284bf573))
- **inventory:** enhance receive dialog with lot-level verification and discrepancy tracking ([7f1dc8a](https://github.com/aegisx-platform/aegisx-starter/commit/7f1dc8a57d28380012841a1c26c6e8ae0f90227c))
- **inventory:** hide BIN from location list, add bin tab to warehouse view ([c981825](https://github.com/aegisx-platform/aegisx-starter/commit/c981825eaaf215374ccb79424ed15d84eecd219d))
- **inventory:** make drug-lots read-only and add print labels to receipt page ([da377fd](https://github.com/aegisx-platform/aegisx-starter/commit/da377fd346d7da67f98ad66ab33399d655b15a0f))
- **inventory:** per-item bin location in receipt POST workflow ([851822e](https://github.com/aegisx-platform/aegisx-starter/commit/851822e7a91fae68d7d19ac6dc31e457fde1e831))
- **inventory:** register budget-adjustments/journals modules and add INITIAL journal ([bb5890d](https://github.com/aegisx-platform/aegisx-starter/commit/bb5890d1864e9de9a6650c024253ca9933943855))
- **inventory:** update quick requisition to PULL model with priority and external filter ([b953b05](https://github.com/aegisx-platform/aegisx-starter/commit/b953b050122b15bd2eccf676fbf81a5dc1f6fed4))
- **po-api:** include bonus fields in PO items response ([52d97d3](https://github.com/aegisx-platform/aegisx-starter/commit/52d97d32b3f16e9eead920d7819ac38e2c384a76))
- **po:** add drugs-for-vendor and contract-items API endpoints ([2bd5e50](https://github.com/aegisx-platform/aegisx-starter/commit/2bd5e50f129bc44293e741a9481984ec0c733d2c))
- **po:** add frontend types and service methods for multi-flow PO ([4947237](https://github.com/aegisx-platform/aegisx-starter/commit/49472373a30d4ce91b359303a3115c1a602a872e))
- **po:** add source type selector, vendor-contract cascade, and contract items in PO dialog ([fe41653](https://github.com/aegisx-platform/aegisx-starter/commit/fe41653695b5a760614327bbd4c7977152310810))
- **po:** add source_type and emergency_reason to PO schemas, types, validation, and repository ([b87a1a1](https://github.com/aegisx-platform/aegisx-starter/commit/b87a1a1907187167ed6ffbed4f8efdae1f3d8390))
- **po:** add source_type enum and make pr_id nullable for multi-flow procurement ([f5e5f7a](https://github.com/aegisx-platform/aegisx-starter/commit/f5e5f7a6f4f9c6eb6e7c8f9e87c41d5b76735661))
- **po:** enhance drug selector with vendor filter and contract price hints ([466952a](https://github.com/aegisx-platform/aegisx-starter/commit/466952a511cce84f31032571ba5a53bbbc36d6f4))
- **po:** replace inline drug autocomplete with shared DrugPickerComponent ([cacb17d](https://github.com/aegisx-platform/aegisx-starter/commit/cacb17d27da76f01d0578a5a8ef87e85042474b4))
- **po:** show source_type badge in PO list and view dialog ([7f406c6](https://github.com/aegisx-platform/aegisx-starter/commit/7f406c6006081f2f8bfae021e523fbbaf7333862))
- **po:** show subtotal and discount in summary boxes ([4b212fd](https://github.com/aegisx-platform/aegisx-starter/commit/4b212fd20c3cd54f02887e9018c550c0965893ff))
- **receipts:** add bonus lot (is_bonus) and Non-PO receipt support ([75a2579](https://github.com/aegisx-platform/aegisx-starter/commit/75a25796e9aa5f679771855c6c285c0bd9691911))
- **receipts:** add edit inspectors button in committee card ([9d19df0](https://github.com/aegisx-platform/aegisx-starter/commit/9d19df0f2745d58392efda55daeb1d50ca60ec73))
- **receipts:** add GRN PDF generation endpoint ([423689f](https://github.com/aegisx-platform/aegisx-starter/commit/423689f1899003de7cfdbfefcc39893340d235dc))
- **receipts:** add item-level attachment dialog with upload/list ([a121e8c](https://github.com/aegisx-platform/aegisx-starter/commit/a121e8cdb03ba876d32fd47bd3fa256091ccc1f1))
- **receipts:** add receipt_type column and filter in list page ([112f053](https://github.com/aegisx-platform/aegisx-starter/commit/112f05335b8cbcec2d9ac58e3ad875c7ccd4aa19))
- **receipts:** add receipt-level attachment upload and list ([4f95cf9](https://github.com/aegisx-platform/aegisx-starter/commit/4f95cf9a6a22d0f2e7554148506ffc7998b5fbba))
- **receipts:** inspection dialog with radio options for approve/reject ([9e8b86e](https://github.com/aegisx-platform/aegisx-starter/commit/9e8b86ef850d99096984ae25006a917b872379ee))
- **receipts:** inspector dialog edit mode with pre-fill and timestamps ([7e8af60](https://github.com/aegisx-platform/aegisx-starter/commit/7e8af60b6847dbde72f1ca0a21223898b90d5cff))
- **receipts:** integrate inspection checklist and GRN button into detail page ([20c9c52](https://github.com/aegisx-platform/aegisx-starter/commit/20c9c52bd56b7debb98eba18f49f4e0a63e4f284))
- **receipts:** multi-lot support, filter fully-received items, max validation ([e0ca83e](https://github.com/aegisx-platform/aegisx-starter/commit/e0ca83ee3122fa17598e096f14140d2b8170c1d7))
- **receipts:** preview image and pdf attachments in dialog ([9a566a0](https://github.com/aegisx-platform/aegisx-starter/commit/9a566a06bfa47ce4ef43c88c997ecd2df40a7aa3))
- **receipts:** show drug_code/tpu in non-po item display ([f92fadf](https://github.com/aegisx-platform/aegisx-starter/commit/f92fadfec5ff86e01a634e6aa04aeaf88b085ef6))
- **receipts:** show PO bonus info and add bonus lot button ([f56e0d9](https://github.com/aegisx-platform/aegisx-starter/commit/f56e0d93d1e198ef8f5f4da9d2bd9f6dd5669799))
- **reports:** add frontend report cards for receipt-summary and inventory-valuation ([035d5db](https://github.com/aegisx-platform/aegisx-starter/commit/035d5db5a74e7af5ed5163fd930b385cc76c55f3))
- **reports:** add repository queries for receipt-summary and inventory-valuation ([c3b31c3](https://github.com/aegisx-platform/aegisx-starter/commit/c3b31c380245a61b39f75bf5e4d1aac5c618a9a4))
- **reports:** add routes and controller for receipt-summary and inventory-valuation ([e44d68f](https://github.com/aegisx-platform/aegisx-starter/commit/e44d68f357d1a318005ad358c2a3b3392140adc0))
- **reports:** add service logic for receipt-summary and inventory-valuation reports ([354dbc0](https://github.com/aegisx-platform/aegisx-starter/commit/354dbc0cd0f3c5bb6a2632f0d6c7614de9798115))
- **reports:** add types and schemas for receipt-summary and inventory-valuation reports ([02064aa](https://github.com/aegisx-platform/aegisx-starter/commit/02064aa3803bb32e461e4f68e76e05957b67630b))
- **stock-counts:** add recount and cancel workflow endpoints ([7bcf834](https://github.com/aegisx-platform/aegisx-starter/commit/7bcf8348b93d1e5ba0cd4a588abf99b4b9a6352f))
- **stockcard:** add bonus/status badges, date presets, fix chart ([858c19d](https://github.com/aegisx-platform/aegisx-starter/commit/858c19d2238bdf5968a2a079da68b4de2771d8d5))
- **stockcard:** show receipt_type and is_bonus in transaction history ([c72ab9b](https://github.com/aegisx-platform/aegisx-starter/commit/c72ab9b71d7ae05ed510ba582f2ac4298295926a))

### Reverts

- **receipts:** restore date picker for receipt_date - DB column is DATE not TIMESTAMP ([34ea407](https://github.com/aegisx-platform/aegisx-starter/commit/34ea407730fde4a92b4351affa4329b3827a9357))

# [1.29.0](https://github.com/aegisx-platform/aegisx-starter/compare/v1.28.0...v1.29.0) (2026-03-19)

### Features

- **auth:** add has_pin to profile API + dynamic PIN status ([ddfb170](https://github.com/aegisx-platform/aegisx-starter/commit/ddfb17009ace84c4215665c2d6da68a4f7e90eca))
- **auth:** add PIN login UI and PIN settings in profile ([1b2e121](https://github.com/aegisx-platform/aegisx-starter/commit/1b2e12148ef046a46d2c259e269f5602cdb013bc))
- merge develop - TOR checklist 100% complete ([483a36c](https://github.com/aegisx-platform/aegisx-starter/commit/483a36cbc9bbb64f1332cdb5bde0f10b3df42c6d))

# [1.28.0](https://github.com/aegisx-platform/aegisx-starter/compare/v1.27.1...v1.28.0) (2026-03-19)

### Bug Fixes

- **inventory:** address code review issues in barcode label feature ([539a261](https://github.com/aegisx-platform/aegisx-starter/commit/539a261648235accb4124090c1b9d14c0145df6d))
- **inventory:** auto-generate count_number for ([1798965](https://github.com/aegisx-platform/aegisx-starter/commit/17989651f144310ee909863214bf91f1df903dd4))
- **inventory:** fix generator-inherited issues in ([91b2b83](https://github.com/aegisx-platform/aegisx-starter/commit/91b2b83be93ffed5aa199a5eb169a7093d1e5490)), closes [#3](https://github.com/aegisx-platform/aegisx-starter/issues/3) [#5](https://github.com/aegisx-platform/aegisx-starter/issues/5) [#9](https://github.com/aegisx-platform/aegisx-starter/issues/9) [#11](https://github.com/aegisx-platform/aegisx-starter/issues/11) [#12](https://github.com/aegisx-platform/aegisx-starter/issues/12)
- **inventory:** make status optional with DRAFT default for stock count creation ([58998b3](https://github.com/aegisx-platform/aegisx-starter/commit/58998b33a07b8023e2a4f5a2ab4af50b3feebc97))
- **inventory:** review fixes for cycle count workflow ([5cb41a0](https://github.com/aegisx-platform/aegisx-starter/commit/5cb41a073217eb5c80a6d7e13af6898276189dbe))
- **inventory:** use DB count for count_number ([0569456](https://github.com/aegisx-platform/aegisx-starter/commit/05694561fc50dfd409ed4878d2b4c0428b7a00db))
- **procurement:** add /api prefix to dropdown urls and order budget by remaining ([05fe11f](https://github.com/aegisx-platform/aegisx-starter/commit/05fe11f173cef56331da1aa089fc6f8dd19e0f7c))
- **procurement:** add check_circle icon to alternatives ([0dd8a3f](https://github.com/aegisx-platform/aegisx-starter/commit/0dd8a3fbcff211720004e27c9a6f3dcb17e8deb3))
- **procurement:** add drug_code to suggested type ([da68225](https://github.com/aegisx-platform/aegisx-starter/commit/da682251a98b176bb29765ff05eb748ab9adaf41))
- **procurement:** auto-generate PO number, make field readonly ([d3f7a38](https://github.com/aegisx-platform/aegisx-starter/commit/d3f7a38cf5db705f269faec385bac1acc7da081e))
- **procurement:** fix pack price display, ref price warning, and clickable contract rows ([82011a3](https://github.com/aegisx-platform/aegisx-starter/commit/82011a3f1047aa5887cedc056824f8ffdc53e962))
- **procurement:** fix smart-match API crash and remove old fallback UI ([59c0783](https://github.com/aegisx-platform/aegisx-starter/commit/59c0783a7aac4470d44b41cbec223934e1bd611b)), closes [#8](https://github.com/aegisx-platform/aegisx-starter/issues/8)
- **procurement:** format vendor-selections service and fix launcher routes ([37cdb5d](https://github.com/aegisx-platform/aegisx-starter/commit/37cdb5da542ee00f355b7035cd094170e8d1734a))
- **procurement:** move drug_code inline before drug name ([b28b363](https://github.com/aegisx-platform/aegisx-starter/commit/b28b363da3ff34589e8a2067bc61da4cbaa3e628))
- **procurement:** recalculate grand_total before PO save ([d7fb3e4](https://github.com/aegisx-platform/aegisx-starter/commit/d7fb3e400a71e128a522129abc41dfda9dd08dc5))

### Features

- **auth:** add PIN login support (TOR 5.2.1.9, 5.2.1.10) ([c55bf1d](https://github.com/aegisx-platform/aegisx-starter/commit/c55bf1dab5787b4ba4462ec619c1099634b50329))
- **deploy:** add automated db-backup container with daily/weekly/monthly retention ([d904358](https://github.com/aegisx-platform/aegisx-starter/commit/d9043581bc9d6d637045ccf7a2dd6d1e61585c95))
- **deploy:** add db-backup container to install.sh with env config ([903fb3a](https://github.com/aegisx-platform/aegisx-starter/commit/903fb3a7d0fc1b734b699b3d49a75c04a206b176))
- **drug-lots:** add barcode label print buttons to drug lots list ([9151c5b](https://github.com/aegisx-platform/aegisx-starter/commit/9151c5b1395555cd794f1a337400a0d8e8d8463b))
- **inventory:** add 4 missing TOR reports ([f8da216](https://github.com/aegisx-platform/aegisx-starter/commit/f8da2163c00a07f79305156e4622a2709c810086))
- **inventory:** add 4 missing TOR reports for annual-plan, advance-loan, non-po, dispensing ([20746dc](https://github.com/aegisx-platform/aegisx-starter/commit/20746dcae752095112821b633004474163bf2473))
- **inventory:** add barcode scan to counting dialog ([68808bd](https://github.com/aegisx-platform/aegisx-starter/commit/68808bdb46f9e1b9dbb01f08272939a4d724234f))
- **inventory:** add BarcodeService for Code128 barcode generation ([de2e4bc](https://github.com/aegisx-platform/aegisx-starter/commit/de2e4bc33afb592c79960e3a67f9d146dd7cc346))
- **inventory:** add cycle count workflow ([3732b17](https://github.com/aegisx-platform/aegisx-starter/commit/3732b1748d5fc70b79b64dc65017d4550d5e477a))
- **inventory:** add drug lot barcode label PDF generation ([8c0e714](https://github.com/aegisx-platform/aegisx-starter/commit/8c0e714a75ecb4c4c5c0317f49687ea3638d31f5))
- **inventory:** add label schemas to drug-lots for barcode label printing ([602c46c](https://github.com/aegisx-platform/aegisx-starter/commit/602c46c9f608431b6454f99795d67dbeac1889f0))
- **inventory:** add serial_number to drug_lots (TOR 5.2.5.9) ([81b1660](https://github.com/aegisx-platform/aegisx-starter/commit/81b1660536a6155fe4899c26fc13e713ca555a29))
- **procurement:** add base_unit_price, improve smart-match UI ([175c81b](https://github.com/aegisx-platform/aegisx-starter/commit/175c81b9c5fba3a0aa9b646ceccc3ddccdfa44c9))
- **procurement:** lock ordered items in smart-match view ([de2bacd](https://github.com/aegisx-platform/aegisx-starter/commit/de2bacd39e096e0b83dcc6a5e5e1dd4123596b70))
- **procurement:** pass contract_id through PO generation flow ([6f5dbaa](https://github.com/aegisx-platform/aegisx-starter/commit/6f5dbaadfc8734db2a8ee9ce4f02c51beaa0747d))
- **procurement:** rop to pr workflow with auto-fill department/budget/fiscal_year ([01fed87](https://github.com/aegisx-platform/aegisx-starter/commit/01fed87afa03f21ab38e4dae9d578e46e38b043f))
- **receipts:** add edit mode to receipt dialog ([99a7161](https://github.com/aegisx-platform/aegisx-starter/commit/99a71613cda700c64d79d31c0f5dcbb00df2aca9))
- **receipts:** auto-generate receipt number and add edit button ([63c09f4](https://github.com/aegisx-platform/aegisx-starter/commit/63c09f44c953611105b26625cdf8bc3231b44669))

## [1.27.1](https://github.com/aegisx-platform/aegisx-starter/compare/v1.27.0...v1.27.1) (2026-03-18)

### Bug Fixes

- **docker:** actually remove --platform=$BUILDPLATFORM from API Dockerfile ([16fff86](https://github.com/aegisx-platform/aegisx-starter/commit/16fff8624))

Previous commit daf2fa90e claimed to fix this but the flag was still present.
Builder now matches target platform so sharp downloads correct native binary (linuxmusl-x64 for amd64).
Also removes ~200MB of build tools, corepack, and silently-failing pnpm rebuild from production stage.

# [1.27.0](https://github.com/aegisx-platform/aegisx-starter/compare/v1.26.0...v1.27.0) (2026-03-18)

### Bug Fixes

- **contracts:** complete drug_generic_id→drug_id migration across all modules ([c528403](https://github.com/aegisx-platform/aegisx-starter/commit/c52840301b1a67b0a7f33aa59078ad45a04e82b0))
- **docker:** remove BUILDPLATFORM to fix sharp on amd64 ([daf2fa9](https://github.com/aegisx-platform/aegisx-starter/commit/daf2fa90edf0f7185979cebe8c6cee416eb5d6e7))
- **drug-reference-prices:** address code review issues from phase 2 ([118fcb3](https://github.com/aegisx-platform/aegisx-starter/commit/118fcb3248f0dd6b2ee63a5d15258b11463fa50b))
- **procurement:** add drug_code to suggested, fix service name and labels ([132c611](https://github.com/aegisx-platform/aegisx-starter/commit/132c611cc5d8092bac4d3101baf0eb183c38cbc0))
- **procurement:** code review fixes + contract_items migration file ([13d7d68](https://github.com/aegisx-platform/aegisx-starter/commit/13d7d6825965f9c27f3b80ef5976fe31ddbe35ae))
- **procurement:** mutually exclusive selection, drug change on contract switch ([3bd2ff4](https://github.com/aegisx-platform/aegisx-starter/commit/3bd2ff4be773458fe6fda08f07c235f5dcf5ab94))
- **procurement:** pack selector uses unit_per_pack from available_packs ([b7390df](https://github.com/aegisx-platform/aegisx-starter/commit/b7390df99bc3fb882be127587d2641822c8f1742))
- **procurement:** reduce font weight in smart-match, add drug+pack to PO dialog ([db11aee](https://github.com/aegisx-platform/aegisx-starter/commit/db11aee48962f0992193a0c71c6550b3515dc380))
- **procurement:** selectAlternative uses unit_per_pack, qty label shows pack unit ([68422e7](https://github.com/aegisx-platform/aegisx-starter/commit/68422e7002a115e4ebbd2df4954e01931a3b8b0b))

### Features

- **drug-reference-prices:** phase 2 — lookup component, import wizard, DMSIC checker ([9b93c23](https://github.com/aegisx-platform/aegisx-starter/commit/9b93c23b6a1aeec7b6c3d8ab571a43dca2359482))
- **procurement:** add bottom PO button and enlarge PO dialog ([09bc866](https://github.com/aegisx-platform/aegisx-starter/commit/09bc866f5dc29a35ddd30b5ae772d8f119b142d6))
- **procurement:** add unit_per_pack to pack selector with conversion display ([951136e](https://github.com/aegisx-platform/aegisx-starter/commit/951136ead120b7440d4e810c1ead509537dc3789))
- **procurement:** add working code, pack selector, available_packs to smart match ([07091af](https://github.com/aegisx-platform/aegisx-starter/commit/07091af8103bf5c54f7032c65016b860df59ab18))
- **procurement:** clickable contract badge and view-only dialog ([7f858d5](https://github.com/aegisx-platform/aegisx-starter/commit/7f858d5c9ca2d4cb9f83f1c50d2084a819dbd6ed))
- **procurement:** contract card UX redesign - company name first ([8d8e020](https://github.com/aegisx-platform/aegisx-starter/commit/8d8e02035d372cb4c996f00a281426e24dca7cac))
- **procurement:** improve selected details UX - text labels instead of inputs ([b11960e](https://github.com/aegisx-platform/aegisx-starter/commit/b11960e7e6b1b4dc61300ffdb7a519f2aaf42875))

# [1.26.0](https://github.com/aegisx-platform/aegisx-starter/compare/v1.25.4...v1.26.0) (2026-03-17)

### Features

- **ci:** sync install.sh to public repo aegisx-platform/aegisx-install ([e79e6c9](https://github.com/aegisx-platform/aegisx-starter/commit/e79e6c96021ad608946810be6f33a29ba0334209))
- **procurement:** integrate reference price (ราคากลาง) into smart match workflow ([98203b3](https://github.com/aegisx-platform/aegisx-starter/commit/98203b37dd71151ded276c1da77c0f1d85824793))

## [1.25.4](https://github.com/aegisx-platform/aegisx-starter/compare/v1.25.3...v1.25.4) (2026-03-17)

### Bug Fixes

- **ci:** add debug output for install.sh upload failure ([f88e6d9](https://github.com/aegisx-platform/aegisx-starter/commit/f88e6d9bd38a7f4872bab6821ad0797a1f5df40b))

## [1.25.3](https://github.com/aegisx-platform/aegisx-starter/compare/v1.25.2...v1.25.3) (2026-03-17)

### Bug Fixes

- **ci:** move install.sh upload to separate job with fresh checkout ([23f9a3b](https://github.com/aegisx-platform/aegisx-starter/commit/23f9a3bc04488109da9c5e0f5b924ac7d0e5394f))

## [1.25.2](https://github.com/aegisx-platform/aegisx-starter/compare/v1.25.1...v1.25.2) (2026-03-17)

### Bug Fixes

- **ci:** use direct upload with fallback for install.sh release asset ([8344478](https://github.com/aegisx-platform/aegisx-starter/commit/83444780e2eee761b194b574dbaa30ccb89a695e))

## [1.25.1](https://github.com/aegisx-platform/aegisx-starter/compare/v1.25.0...v1.25.1) (2026-03-17)

### Bug Fixes

- **ci:** add retry loop for install.sh release upload ([5023878](https://github.com/aegisx-platform/aegisx-starter/commit/50238780b33de84e9031f44590eb028833f52f0d))

# [1.25.0](https://github.com/aegisx-platform/aegisx-starter/compare/v1.24.0...v1.25.0) (2026-03-17)

### Bug Fixes

- **procurement:** contract matching bigint type mismatch and error response ([38550d3](https://github.com/aegisx-platform/aegisx-starter/commit/38550d347ef260fbda95e4b217c25a6670f7e457))

### Features

- **ci:** upload install.sh to GitHub Release for public download ([3f0589a](https://github.com/aegisx-platform/aegisx-starter/commit/3f0589a5de69953d62412ae4e58a681e99498ccb))
- **procurement:** smart match suggest-not-lock with multi-contract support ([87d4e78](https://github.com/aegisx-platform/aegisx-starter/commit/87d4e788779cc0cc3570cde44558a123f03ea985))

# [1.24.0](https://github.com/aegisx-platform/aegisx-starter/compare/v1.23.0...v1.24.0) (2026-03-17)

### Bug Fixes

- **deploy:** fix install.sh image vars and migration commands ([63dbca7](https://github.com/aegisx-platform/aegisx-starter/commit/63dbca76d96e99c8f7ea358c64edb93414bea42a))

### Features

- **contracts:** move contract items to tab in contracts page ([fb03a21](https://github.com/aegisx-platform/aegisx-starter/commit/fb03a216c46a3bc1fe174c41ad3ecb3bb26081f3))
- **contracts:** thai locale, auto contract number, items in create, nav cleanup ([b3796c9](https://github.com/aegisx-platform/aegisx-starter/commit/b3796c9eb731099866f177a1c14b7f9707de2ece))
- **procurement:** drug-first vendor matching UX and nav improvements ([b923a7f](https://github.com/aegisx-platform/aegisx-starter/commit/b923a7f39bb16d90d5ea24ef08bcacbb0d521e5e))

# [1.23.0](https://github.com/aegisx-platform/aegisx-starter/compare/v1.22.1...v1.23.0) (2026-03-17)

### Bug Fixes

- **procurement:** convert quantity to pack units when selecting package ([45a77d3](https://github.com/aegisx-platform/aegisx-starter/commit/45a77d34520cd5cfb98c23687c1f675f675ca462))
- **procurement:** convert quantity to packs when generating PO from vendor matching ([16fc6e0](https://github.com/aegisx-platform/aegisx-starter/commit/16fc6e0653c09febf01255a75b87e0832316e2ba))
- **procurement:** fix PO preview dialog to use pack quantity calculation ([65a9e0e](https://github.com/aegisx-platform/aegisx-starter/commit/65a9e0e3628c33132082ab71a1d8b5ec95896cb2))
- **procurement:** prevent infinite API loop on vendor matching grid reload ([4d57cfa](https://github.com/aegisx-platform/aegisx-starter/commit/4d57cfac4fab39ffd7cdd729861b0cc581f6159b))

### Features

- **ci:** add GitOps deployment to update aegisx-infra image tags ([39d3975](https://github.com/aegisx-platform/aegisx-starter/commit/39d3975c2c766e17c65fc6d0212f5fa3ca6b21bf))
- **deploy:** add --registry option to install.sh ([c78fdba](https://github.com/aegisx-platform/aegisx-starter/commit/c78fdbaa5df32896bd720c5567ea86a5ef74fe9b))
- **procurement:** redesign vendor matching grid with PR info and PO total ([964ff88](https://github.com/aegisx-platform/aegisx-starter/commit/964ff889ea6aa138189201fd86cac7ac4a215907))

## [1.22.1](https://github.com/aegisx-platform/aegisx-starter/compare/v1.22.0...v1.22.1) (2026-03-16)

### Bug Fixes

- **procurement:** load pack ratios on page reload for matched items ([2e4717b](https://github.com/aegisx-platform/aegisx-starter/commit/2e4717b6fcdaf9b44eb67972dee57a09c5da75c4))

# [1.22.0](https://github.com/aegisx-platform/aegisx-starter/compare/v1.21.0...v1.22.0) (2026-03-16)

### Bug Fixes

- **ci:** build multi-arch images (amd64 + arm64) ([4d99bf5](https://github.com/aegisx-platform/aegisx-starter/commit/4d99bf5dd1aa7eb276ea5e92e743a53106bd375f))

### Features

- **procurement:** show unit price per item on vendor matching grid ([7959919](https://github.com/aegisx-platform/aegisx-starter/commit/79599198173e605b117d0c0fc5f6337e343e118c))

# [1.21.0](https://github.com/aegisx-platform/aegisx-starter/compare/v1.20.7...v1.21.0) (2026-03-16)

### Bug Fixes

- **ci:** multi-stage API Dockerfile to reduce image size ([5823dc3](https://github.com/aegisx-platform/aegisx-starter/commit/5823dc3cae69394a2685d2327b5777398e82d721))
- **dispensing:** add CUSTOM_PG option and show DB type in HIS Type dropdown ([a8f9ef4](https://github.com/aegisx-platform/aegisx-starter/commit/a8f9ef41b2a37e58f9414103d8e7db75f4dced1e))
- **dispensing:** fix breadcrumbs, reports route, and API prefix ([71b412d](https://github.com/aegisx-platform/aegisx-starter/commit/71b412d4ea294e814493945d09b8d20b95b23a02))
- **dispensing:** remove duplicate /api prefix from Sync Dashboard URLs ([94d0160](https://github.com/aegisx-platform/aegisx-starter/commit/94d016083f2108166dfc6e8443f52b8ff5d61ca8))
- **inventory:** fix Patient Dispensing route, labels, and remove broken menu ([e33e1d3](https://github.com/aegisx-platform/aegisx-starter/commit/e33e1d30ea7926fb32d219d7a532c7c79890189c))
- **inventory:** move ROP Dashboard from legacy routes to procurement section ([78e61fe](https://github.com/aegisx-platform/aegisx-starter/commit/78e61fe32eda37e111f36dae6945788b7124ac11))

### Features

- **dispensing:** add View Mapping Profile dropdown to HIS Settings ([8250526](https://github.com/aegisx-platform/aegisx-starter/commit/82505261584b3e629e7b4a58768961115e93d5e2))
- **dispensing:** redesign HIS Settings form with proper UX ([8836c55](https://github.com/aegisx-platform/aegisx-starter/commit/8836c550a6509d63ebdf93ffc4efa2b9f9907ca8))
- **procurement:** add PO Tracking card to procurement tools launcher ([028a69b](https://github.com/aegisx-platform/aegisx-starter/commit/028a69bee8d5ea34ad49f69693153365f5c577c9))

## [1.20.7](https://github.com/aegisx-platform/aegisx-starter/compare/v1.20.6...v1.20.7) (2026-03-15)

### Bug Fixes

- **ci:** use native platform for Angular build stage ([0ab0505](https://github.com/aegisx-platform/aegisx-starter/commit/0ab0505d5850308547b2859f7839dabc8cdb58cc))

## [1.20.6](https://github.com/aegisx-platform/aegisx-starter/compare/v1.20.5...v1.20.6) (2026-03-15)

### Bug Fixes

- **ci:** remove .compiled/ from Dockerfile ([a84fab7](https://github.com/aegisx-platform/aegisx-starter/commit/a84fab757d76d2a1bb1a8f9dd5c2a201c9aee92c))

## [1.20.5](https://github.com/aegisx-platform/aegisx-starter/compare/v1.20.4...v1.20.5) (2026-03-15)

### Bug Fixes

- **ci:** build linux/amd64 for x86_64 production server ([15bf313](https://github.com/aegisx-platform/aegisx-starter/commit/15bf3134cc00f976d89befcdf705604c01550688))
- **ci:** build linux/arm64 only (server and runner are both ARM) ([51316d5](https://github.com/aegisx-platform/aegisx-starter/commit/51316d5878ad687f677df8fdc7d71550436cf0cd))
- **import:** pack_size default 1 not null ([9541a08](https://github.com/aegisx-platform/aegisx-starter/commit/9541a08e83251a1575e2823ac3080f24a782281b))
- **migration:** make view mapping migrations idempotent ([febacba](https://github.com/aegisx-platform/aegisx-starter/commit/febacbad116844d2ba9ed8d20e15102e2ed0de76))
- **migration:** use IF NOT EXISTS for view mapping enums ([934d338](https://github.com/aegisx-platform/aegisx-starter/commit/934d3380618d07e5b402083055fb7ba8ea9484d5))

## [1.20.4](https://github.com/aegisx-platform/aegisx-starter/compare/v1.20.3...v1.20.4) (2026-03-15)

### Bug Fixes

- **ci:** add linux/amd64 platform to Docker image builds ([0c6d14f](https://github.com/aegisx-platform/aegisx-starter/commit/0c6d14f2862de4a0a1ca9ca7a9edc951ec1dbbc2))
- **ci:** trigger release pipeline on main and staging only ([72aad81](https://github.com/aegisx-platform/aegisx-starter/commit/72aad815aa540faf2e66358257da44d66c46a888))
- **ci:** update staging refs from develop to staging branch ([455aedd](https://github.com/aegisx-platform/aegisx-starter/commit/455aeddbcb69dabbb218ecfd6986341be24547e0))

## [1.20.3](https://github.com/aegisx-platform/aegisx-starter/compare/v1.20.2...v1.20.3) (2026-03-15)

### Bug Fixes

- **deploy:** allow interactive prompts in curl|bash pipe mode ([8d4371d](https://github.com/aegisx-platform/aegisx-starter/commit/8d4371d34f2c1d07f4e90f689cc6936114001324))
- **deploy:** fix healthcheck path and remove web depends_on api ([98b0c4c](https://github.com/aegisx-platform/aegisx-starter/commit/98b0c4c9d749dad5bc1c55b2abb39e2ce38d4a8b))

## [1.20.2](https://github.com/aegisx-platform/aegisx-starter/compare/v1.20.1...v1.20.2) (2026-03-15)

### Bug Fixes

- **docker:** copy pre-compiled schemas into API image ([ab3fce6](https://github.com/aegisx-platform/aegisx-starter/commit/ab3fce6b43c15d5cade4b9392140a895f6e36da0))
- **drug-units:** add unit_type filter to service ([dec6b35](https://github.com/aegisx-platform/aegisx-starter/commit/dec6b35c00adcc2cd6712365940897cc4164d1a7))

## [1.20.1](https://github.com/aegisx-platform/aegisx-starter/compare/v1.20.0...v1.20.1) (2026-03-15)

### Bug Fixes

- **deploy:** change default production ports to 3000/8080 ([b910f91](https://github.com/aegisx-platform/aegisx-starter/commit/b910f91865ce6232f6bea084ffe0cb3b65e77bb3))
- **docker:** add build:schemas to API Dockerfile ([33c3a46](https://github.com/aegisx-platform/aegisx-starter/commit/33c3a46f045ed60ab726dea29cc9683731cb11ae))

# [1.20.0](https://github.com/aegisx-platform/aegisx-starter/compare/v1.19.1...v1.20.0) (2026-03-15)

### Bug Fixes

- **deploy:** rewrite install.sh with correct migration order and bug fixes ([a692f9f](https://github.com/aegisx-platform/aegisx-starter/commit/a692f9f4d33edf389c475b37d76c06caba5fd78a))

### Features

- **import:** auto-create drug_pack_ratios on drug import ([8af1aab](https://github.com/aegisx-platform/aegisx-starter/commit/8af1aab91cf58260b9b61852f418b3b56487dcd8))
- **procurement:** add PR/PO workflow + ROP dashboard migrations ([3ea2561](https://github.com/aegisx-platform/aegisx-starter/commit/3ea25619bae6270ccbd53825be0573d90f1faf6a))

## [1.19.1](https://github.com/aegisx-platform/aegisx-starter/compare/v1.19.0...v1.19.1) (2026-03-15)

### Bug Fixes

- **deploy:** fix installer stdin for curl|bash pipe ([3489fec](https://github.com/aegisx-platform/aegisx-starter/commit/3489fec6c110d8f95c6743ea290ecf16908d7c10))

# [1.19.0](https://github.com/aegisx-platform/aegisx-starter/compare/v1.18.0...v1.19.0) (2026-03-15)

### Bug Fixes

- **api:** disable Ajv strictTypes for on-the-fly schema compilation ([1d27d07](https://github.com/aegisx-platform/aegisx-starter/commit/1d27d079031745d13419a2c9d635f4055cb34462))
- **dispensing:** add click handler, remove Drug Mapping ([9971c48](https://github.com/aegisx-platform/aegisx-starter/commit/9971c4873f99d53b8cf81267422cb8f8ddfb69cc))
- **dispensing:** address code review issues in view mapping frontend ([28b92c9](https://github.com/aegisx-platform/aegisx-starter/commit/28b92c9c812aa6c1dbdacf2c1b289aba5200ed8e))
- **dispensing:** move view mapping to Admin nav, remove from dispensing launcher ([0460966](https://github.com/aegisx-platform/aegisx-starter/commit/04609661bf7b674428afdc0f8f1f109c3e6b39fb))
- **dispensing:** move view-mapping route to dispensing section ([5e99e7f](https://github.com/aegisx-platform/aegisx-starter/commit/5e99e7fd2148b08523be33d00bd56abea7666ae0))
- **dispensing:** reorganize launcher cards by workflow order ([18eecb5](https://github.com/aegisx-platform/aegisx-starter/commit/18eecb5040bf33b3ecd535dcacfd5a0142b3144d))
- **dispensing:** show all cards without tabs ([33a90f2](https://github.com/aegisx-platform/aegisx-starter/commit/33a90f24067730c9cd6506119332e83d3974a707))
- **docs:** move production-install.sh to correct sections ([4317794](https://github.com/aegisx-platform/aegisx-starter/commit/4317794dfd1b353118b04ed6f6fa73c2a0b8171f))
- **docs:** reference deploy/ folder correctly in README and CLAUDE.md ([d4b2981](https://github.com/aegisx-platform/aegisx-starter/commit/d4b29812fdf5731e2e3bfe29efce1af85b9656e7))
- **drugs:** remove drug_code length constraint ([f85feed](https://github.com/aegisx-platform/aegisx-starter/commit/f85feed045e57bbc0a5aa961c4d0142446a779c7))
- **grn:** address code review — N+1 query, Type.Any, error codes, parallel queries ([281e829](https://github.com/aegisx-platform/aegisx-starter/commit/281e8298e6ee670dff22579bf7910039068d9890))
- **grn:** address frontend review — err:unknown, confirm dialog, signals, warehouse path ([4bb4843](https://github.com/aegisx-platform/aegisx-starter/commit/4bb4843272f894bad95c4bc845314178fa0b0c4f))
- **inventory:** move HIS Sync route to dispensing section with View Mapping ([59fd2d5](https://github.com/aegisx-platform/aegisx-starter/commit/59fd2d55b6eef92c5b2cfa60158a08423ec4ba2b))
- **migrations:** rename duplicate timestamps 000001/000002 → 000003/000004 for view-mapping ([519cabc](https://github.com/aegisx-platform/aegisx-starter/commit/519cabc750d915688ac033e5e4d4ffe456c6382c))
- **procurement:** secure reject/cancel routes, fix approve schema, correct stock aggregation ([1f0d915](https://github.com/aegisx-platform/aegisx-starter/commit/1f0d915d767c28a030bf013fe08910a931a99ba6))
- **purchase-requests:** resolve WT2 code review issues (3C + 5H) ([7bea385](https://github.com/aegisx-platform/aegisx-starter/commit/7bea385bbbba68fd8138e975575261142852d493)), closes [#1](https://github.com/aegisx-platform/aegisx-starter/issues/1) [#2](https://github.com/aegisx-platform/aegisx-starter/issues/2) [#5](https://github.com/aegisx-platform/aegisx-starter/issues/5) [#6](https://github.com/aegisx-platform/aegisx-starter/issues/6) [#8](https://github.com/aegisx-platform/aegisx-starter/issues/8) [#3](https://github.com/aegisx-platform/aegisx-starter/issues/3) [#4](https://github.com/aegisx-platform/aegisx-starter/issues/4)
- resolve error:any, extract procurement threshold, add FastifyInstance type declarations ([0f4af26](https://github.com/aegisx-platform/aegisx-starter/commit/0f4af26b2ca114fdf69c8a7be178a01512262c61))
- resolve TypeScript errors after merging all 5 feature branches ([316f3fe](https://github.com/aegisx-platform/aegisx-starter/commit/316f3fe811014c13f1b20ea98f38f391de56b6c6))
- **rop-dashboard:** address code review — security, type safety, data correctness ([7aa9fad](https://github.com/aegisx-platform/aegisx-starter/commit/7aa9fad02f49cc3997cd11fa3913808ce4094e9a))
- **seeds:** remove demo contracts seed ([8f4e03b](https://github.com/aegisx-platform/aegisx-starter/commit/8f4e03bfbc5c8abccb4a250883f6d9f7f7975b60))
- **smart-match:** resolve critical issues from code review ([e83a7c7](https://github.com/aegisx-platform/aegisx-starter/commit/e83a7c71bda447079254b55333f7e3b5970693d2))
- **smart-match:** resolve WT1 code review issues (4 CRITICAL + 5 HIGH) ([975a739](https://github.com/aegisx-platform/aegisx-starter/commit/975a7398ff2342e6c25dcd3abf6cc653fb8e6dc7)), closes [#9](https://github.com/aegisx-platform/aegisx-starter/issues/9) [#2](https://github.com/aegisx-platform/aegisx-starter/issues/2) [#4](https://github.com/aegisx-platform/aegisx-starter/issues/4) [#5](https://github.com/aegisx-platform/aegisx-starter/issues/5) [#6](https://github.com/aegisx-platform/aegisx-starter/issues/6) [#7](https://github.com/aegisx-platform/aegisx-starter/issues/7) [#8](https://github.com/aegisx-platform/aegisx-starter/issues/8) [#3](https://github.com/aegisx-platform/aegisx-starter/issues/3) [#1](https://github.com/aegisx-platform/aegisx-starter/issues/1)
- **stock:** align frontend types with backend nested response structure ([8081623](https://github.com/aegisx-platform/aegisx-starter/commit/8081623a98634bfe1781b8e7bfe1cade066299ce))

### Features

- **dispensing:** add view mapping manager (backend + frontend) ([d4891f3](https://github.com/aegisx-platform/aegisx-starter/commit/d4891f36f476d5234d75b21d2be835b3f604e1ad))
- **dispensing:** add view mapping manager backend (Chunk 1+2) ([a6ddb2d](https://github.com/aegisx-platform/aegisx-starter/commit/a6ddb2d64f64588c6b86c578afdb7c28ec6b31ea))
- **grn:** add checklist endpoint + penalty calculation to receipts ([d24e477](https://github.com/aegisx-platform/aegisx-starter/commit/d24e477ea7d6571ed04df9424fc67b95fb15676a))
- **grn:** add inspection checklist + penalty columns to receipts ([61ec69d](https://github.com/aegisx-platform/aegisx-starter/commit/61ec69d182d958b1a4582c08dcd278721bb35dab))
- **grn:** add PO tracking endpoint with overdue + penalty summary ([8b42d25](https://github.com/aegisx-platform/aegisx-starter/commit/8b42d25130245af30ae6c3a4c77f9102043570b8))
- **grn:** add receipt inspect/receive pages + PO tracking dashboard ([2bf46a7](https://github.com/aegisx-platform/aegisx-starter/commit/2bf46a7b03821d99874f9235be6b460876258c01))
- **inventory:** add Dispensing as standalone section ([d021fa4](https://github.com/aegisx-platform/aegisx-starter/commit/d021fa4340678cb39b68e45632246c26d8add978))
- **inventory:** add ROP dashboard with KPI summary and reorder alerts ([e5fc3c6](https://github.com/aegisx-platform/aegisx-starter/commit/e5fc3c6ab7e0e77630dbcc01c3b8df8b28a73ea0))
- **inventory:** add volume space to locations + enforce password policy ([f732fc7](https://github.com/aegisx-platform/aegisx-starter/commit/f732fc7551a867990780e758501c0e4784e81b4a))
- **procurement:** add Smart Match service for vendor-drug auto-matching ([57c1831](https://github.com/aegisx-platform/aegisx-starter/commit/57c18317a2135cea0488082ee89cda74942c92c8))
- **purchase-orders:** add PO detail page route (dialog → full page) ([6c0c725](https://github.com/aegisx-platform/aegisx-starter/commit/6c0c725f001d7e6283b7448c7a9202b9920b9dda))
- **purchase-requests:** add approval level and PR item workflow fields ([bf67d5b](https://github.com/aegisx-platform/aegisx-starter/commit/bf67d5b5b42c214ba905b9686844e4fcd8ceabe0))
- **purchase-requests:** add PR create + approve full pages ([3ad2775](https://github.com/aegisx-platform/aegisx-starter/commit/3ad2775d4cb46ffa52ee9711c5f6217935b2bd8b))
- **purchase-requests:** add stock snapshot, approval_level, qty_approved ([4e24a6e](https://github.com/aegisx-platform/aegisx-starter/commit/4e24a6ec73b643da4cd4efc1b845764273a40828))
- **purchase-requests:** add stock-info + purchase-history endpoints ([50663b1](https://github.com/aegisx-platform/aegisx-starter/commit/50663b170071b3292ac552372ecda877407e3b3d))
- **purchase-requests:** add StockInfoService for PR workflow ([68bb705](https://github.com/aegisx-platform/aegisx-starter/commit/68bb7052a270bdbf72cc7fb0467bc53de87b63fb))
- **stock:** add drug stock detail endpoint with lots, stock card, purchase history ([9221a07](https://github.com/aegisx-platform/aegisx-starter/commit/9221a073802f312f28229f0671751353624cc238))
- **stock:** add stock detail page with tabs + PO approve page ([e91b57f](https://github.com/aegisx-platform/aegisx-starter/commit/e91b57f052aec22c50551ca594bbff3ae833c8b4))
- **vendor-matching:** add Smart Match frontend components ([0bbf3c7](https://github.com/aegisx-platform/aegisx-starter/commit/0bbf3c7559ebffbc1d416ada0ae3f7f2e5d2e5cc))
- **vendor-matching:** wire Smart Match into inline page ([13dbb48](https://github.com/aegisx-platform/aegisx-starter/commit/13dbb481de2501936bd6f9ab15f0c30912e83120))

# [1.18.0](https://github.com/aegisx-platform/aegisx-starter/compare/v1.17.3...v1.18.0) (2026-03-14)

### Bug Fixes

- **inventory:** budget request initialize should only include generics with actual drugs ([8b19307](https://github.com/aegisx-platform/aegisx-starter/commit/8b19307a871fa034871a4091025779a33b18379d))
- **inventory:** fix companies import preview, stat cards filter, and multi-module UI improvements ([8738202](https://github.com/aegisx-platform/aegisx-starter/commit/873820207f912317e0fc69cd2f7d8a281171f30d))
- **inventory:** fix dropdown display issues in drug pack ratios and drugs edit ([a08e126](https://github.com/aegisx-platform/aegisx-starter/commit/a08e12626ebddcee6ba915a081bab59c7bd298eb))
- **inventory:** fix pg_trgm schema + receipt post generic_id error ([f6c974e](https://github.com/aegisx-platform/aegisx-starter/commit/f6c974eccb0d6f60dba51682db0a02b1de41ec41))
- **inventory:** fix review issues in seed data and drug pack ratios ([2085ae9](https://github.com/aegisx-platform/aegisx-starter/commit/2085ae9cd8333de8dff8f5b49e1ab4aa9b41187d))
- **inventory:** redesign receipt-inspectors UI to match inventory-levels pattern ([ad6f361](https://github.com/aegisx-platform/aegisx-starter/commit/ad6f361f009fb92f3e5d7db402e3fe118b59926a))
- **inventory:** restore custom purchase-requests components overwritten by test regeneration ([dd28611](https://github.com/aegisx-platform/aegisx-starter/commit/dd2861161385baf547eb1e37838f07afd33dea0e))
- **inventory:** show data list before PDF for all reports ([e273bf2](https://github.com/aegisx-platform/aegisx-starter/commit/e273bf295d012e17be5246e6a6b3cbd7e83dd449))
- **rbac:** fix inventory RBAC bypass - roles now properly isolated ([d0e9702](https://github.com/aegisx-platform/aegisx-starter/commit/d0e9702f7c51fb86b40edef003ea584f0f3c8d8c))

### Features

- **crud-generator:** add smart stats cards, quick filters, and number range filters ([6c470bb](https://github.com/aegisx-platform/aegisx-starter/commit/6c470bb9f551854cfbed9cdbdad26deaa3d9ae2a))
- **inventory:** add 3-tier location hierarchy seed data ([0cc6b4a](https://github.com/aegisx-platform/aegisx-starter/commit/0cc6b4a36bd157ef3e039354f3c12bc7214876b2))
- **inventory:** add auto-generate drug pack ratios from drugs data ([2ec50d0](https://github.com/aegisx-platform/aegisx-starter/commit/2ec50d0d09b9354b3cefe3db4f93a5dc3be944d5))
- **inventory:** add bank logo and Thai name to company form dropdown ([0d81d7c](https://github.com/aegisx-platform/aegisx-starter/commit/0d81d7cd116e8f69319cb280679512be7bec8dbd))
- **inventory:** add reports launcher page with categorized cards ([f854f99](https://github.com/aegisx-platform/aegisx-starter/commit/f854f9977aa8454ae41ee9849f35664bc6a22782))
- **inventory:** add stock alerts page to main warehouse navigation ([0251964](https://github.com/aegisx-platform/aegisx-starter/commit/0251964dd46074733f120de9e7e45990c51bb786))
- **inventory:** add Thai bank logos to bank list ([b6eb6db](https://github.com/aegisx-platform/aegisx-starter/commit/b6eb6db6bbf5386137b858f4110d128c29790fe3))
- **inventory:** add tmt_tpu_code column + fix import hierarchy resolution ([e0ae899](https://github.com/aegisx-platform/aegisx-starter/commit/e0ae8990c6b04588efb93cc77bc72b018e6c6627))
- **inventory:** redesign drug distribution create dialog with stock-aware drug search ([98b0d9e](https://github.com/aegisx-platform/aegisx-starter/commit/98b0d9e1d536a7f539c6605d236685eb7e53c829))
- **inventory:** show bank logo in companies list + remove dev seed data ([a27d961](https://github.com/aegisx-platform/aegisx-starter/commit/a27d96183573a919dc4beed609f04fa0899710b7))

## [1.17.3](https://github.com/aegisx-platform/aegisx-starter/compare/v1.17.2...v1.17.3) (2026-03-10)

### Bug Fixes

- **docker:** add fontconfig/freetype deps and fix web Dockerfile for canvas ([398abae](https://github.com/aegisx-platform/aegisx-starter/commit/398abae3b2689723a8b455abbd0db9d025e9181a))

## [1.17.2](https://github.com/aegisx-platform/aegisx-starter/compare/v1.17.1...v1.17.2) (2026-03-10)

### Bug Fixes

- **docker:** add canvas native dependencies to API Dockerfile ([62751fb](https://github.com/aegisx-platform/aegisx-starter/commit/62751fbb86f7a542e31156acefba2f0d9f3ccc06))

## [1.17.1](https://github.com/aegisx-platform/aegisx-starter/compare/v1.17.0...v1.17.1) (2026-03-10)

### Bug Fixes

- **deploy:** add inventory schema creation before migrations ([b49f14c](https://github.com/aegisx-platform/aegisx-starter/commit/b49f14c968efc28b7a9b8d6b2df4bb3ef27942b1))
- **deploy:** add knexfile to Dockerfile for container migrations ([c0964f3](https://github.com/aegisx-platform/aegisx-starter/commit/c0964f34a2376695bc3ba6f8d30ec904d462b929))
- **deploy:** add missing SESSION_SECRET to install-inventory.sh ([a1baed1](https://github.com/aegisx-platform/aegisx-starter/commit/a1baed1ffa98a1da7d57b4d3a26cac6f426ed709))
- **scripts:** fix production install timing and error handling ([69f8bf2](https://github.com/aegisx-platform/aegisx-starter/commit/69f8bf25d1442715d7f542afd2eb3370f1ef7a52))

# [1.16.0](https://github.com/aegisx-platform/aegisx-starter/compare/v1.15.1...v1.16.0) (2026-03-02)

### Bug Fixes

- **api-keys,ui:** fix 13 warning issues from code review ([2678a84](https://github.com/aegisx-platform/aegisx-starter/commit/2678a840e4d89a0d9de7afddac4628a80ebdb3dc))
- **api-keys,ui:** fix 7 critical issues from code review ([93eed3b](https://github.com/aegisx-platform/aegisx-starter/commit/93eed3bdc6c2cb2999fdbaffb6581e02b84d565e))
- **api-keys:** align frontend-backend types, search/sort, and response schema ([9494ddd](https://github.com/aegisx-platform/aegisx-starter/commit/9494dddf2c7fbb0f5f20834d8b1f354459ab1581))
- **api-keys:** return all keys including revoked in list endpoint ([006552b](https://github.com/aegisx-platform/aegisx-starter/commit/006552b417dfe27916d339f8b0af80c78b46abde))
- **drug-pack-ratios:** use dropdown selects for Drug and Pack Unit fields ([1864c70](https://github.com/aegisx-platform/aegisx-starter/commit/1864c70b404e7e9459a439e467e1a3c63063e5b2))
- **drugs:** fix drug creation 500 errors from empty FK and enum fields ([315fde8](https://github.com/aegisx-platform/aegisx-starter/commit/315fde810c9c9e9e062a655f731e1a1146dd8571))
- **drugs:** rename placeholder enums to meaningful values and fix field name mismatch ([2f3a8d0](https://github.com/aegisx-platform/aegisx-starter/commit/2f3a8d0a896e075d1f41eab5f70e533fbaefacaa))
- **hooks:** auto-cleanup index.lock in pre-push hook ([478106a](https://github.com/aegisx-platform/aegisx-starter/commit/478106a08b2aa025a2a5f9eb570108c097feb753))
- **users:** validate roleId before update to prevent FK violation (23503) ([58e7924](https://github.com/aegisx-platform/aegisx-starter/commit/58e79242229835d0ed587a1b874c0e9331fd784e))

### Features

- **activity-logs:** add user-specific activity logs API endpoints ([d19bcce](https://github.com/aegisx-platform/aegisx-starter/commit/d19bcce6d1756242721dc4eb4181931f5eb1b958))
- **api-keys:** add API Keys to Security navigation menu ([d3367ab](https://github.com/aegisx-platform/aegisx-starter/commit/d3367abdbbba972f23e3eaa15ebd98cc3acfb287))
- **api-keys:** complete redesign following departments pattern ([6e9dac9](https://github.com/aegisx-platform/aegisx-starter/commit/6e9dac982ecc2dc044d2d56171f836c489e899d0))
- **api-keys:** redesign frontend and fix backend alignment ([05899c8](https://github.com/aegisx-platform/aegisx-starter/commit/05899c8b9c151864ae98885e38fe34c3e8eaa362))
- **bank:** upgrade UI to match locations standard with clickable stat cards and Thai labels ([6389549](https://github.com/aegisx-platform/aegisx-starter/commit/6389549ca429a595a540a6ecff2621c4724f15f1))
- **budgets:** show FK names in list and redesign table UI ([fba0641](https://github.com/aegisx-platform/aegisx-starter/commit/fba064128767c340de847877cc8dfd360f1dc137))
- **budgets:** upgrade list page to match locations standard ([b8bb2a1](https://github.com/aegisx-platform/aegisx-starter/commit/b8bb2a169b89f9a1df132c600beca2490706d4fe))
- **dosage-forms:** upgrade UI to match locations standard with clickable stat cards and Thai labels ([1cbbb6a](https://github.com/aegisx-platform/aegisx-starter/commit/1cbbb6a84d1f69237c5cea39430ab4e39345cc0c))
- **drug-components:** upgrade UI with clickable stat cards and Thai labels ([6a9744e](https://github.com/aegisx-platform/aegisx-starter/commit/6a9744efc7762d27baff88c47bfdc81eac8acb16))
- **drug-focus-lists:** upgrade UI with clickable stat cards and Thai labels ([681436e](https://github.com/aegisx-platform/aegisx-starter/commit/681436e9f011674dfa5e70aacfb357ef08c73414))
- **drug-pack-ratios:** upgrade UI with clickable stat cards and Thai labels ([e2a7c9d](https://github.com/aegisx-platform/aegisx-starter/commit/e2a7c9d0fb3391cc6454749af2770c259e5fdb23))
- **drug-units:** upgrade UI to match locations standard with clickable stat cards and Thai labels ([12e7071](https://github.com/aegisx-platform/aegisx-starter/commit/12e70714a93580f944b245d67ee04bead464543e))
- **ed-groups:** upgrade UI to match locations standard with clickable stat cards and Thai labels ([d431e31](https://github.com/aegisx-platform/aegisx-starter/commit/d431e317edb7dfadc257551a924265c2ce091f8b))
- **inventory-ui:** upgrade UI with clickable stat cards and Thai labels ([ad7449a](https://github.com/aegisx-platform/aegisx-starter/commit/ad7449aea3fdce89592bb3a8786bd01100101e82))
- **inventory:** add budget section as separate navigation module ([450d0fd](https://github.com/aegisx-platform/aegisx-starter/commit/450d0fde2e7921ceecae92da04b4811e298dc866))
- **launcher:** add category tabs, hide pin/fav icons, and icon-only nav support ([5d80ff5](https://github.com/aegisx-platform/aegisx-starter/commit/5d80ff51e37f6f95c0077917aa298955696a5d14))
- **launcher:** add flat display mode and enableFeatured config ([6c239e9](https://github.com/aegisx-platform/aegisx-starter/commit/6c239e973a8153593d1393a7d3fcc3f2980eb6fe))
- **launcher:** add flat display mode to show all apps without category grouping ([31ce817](https://github.com/aegisx-platform/aegisx-starter/commit/31ce8172d2b912a9cf9b67354319252410d359ce))
- **nav:** add API Keys to Platform navigation menu ([6bfbeb4](https://github.com/aegisx-platform/aegisx-starter/commit/6bfbeb457d0fe37e4078382e219f02d02e803f36))
- **purchase-reasons-ui:** upgrade UI with clickable stat cards and Thai labels ([a44554d](https://github.com/aegisx-platform/aegisx-starter/commit/a44554dc0310230252ddc38aa5f5d1253d8de6b1))
- **purchase-types-ui:** upgrade UI with clickable stat cards and Thai labels ([8271cf5](https://github.com/aegisx-platform/aegisx-starter/commit/8271cf5bbcf4069770b2311726125335c6679cf5))

## [1.15.1](https://github.com/aegisx-platform/aegisx-starter/compare/v1.15.0...v1.15.1) (2026-02-28)

### Bug Fixes

- **hooks:** auto-cleanup index.lock in pre-push hook ([a182cd4](https://github.com/aegisx-platform/aegisx-starter/commit/a182cd407b4cff5625c753165cbf7cd89259500f))

# [1.15.0](https://github.com/aegisx-platform/aegisx-starter/compare/v1.14.0...v1.15.0) (2026-02-28)

### Bug Fixes

- **inventory:** add permission-based navigation filtering for inventory roles ([50bc968](https://github.com/aegisx-platform/aegisx-starter/commit/50bc968f8420cb316135bd4d109aba32fc1e5119))
- **inventory:** add roles-based navigation filtering for inventory tabs ([8aaaee2](https://github.com/aegisx-platform/aegisx-starter/commit/8aaaee282a22270c144cf1e39dc6c64ec8342035))
- **inventory:** convert DECIMAL strings to numbers in manualMatch response ([3062d6e](https://github.com/aegisx-platform/aegisx-starter/commit/3062d6e283f72fc21100356d6d4288a11360d6d2))
- **inventory:** correct backorders nav permission to use dedicated permission ([ccd712f](https://github.com/aegisx-platform/aegisx-starter/commit/ccd712f8c5b65e0e1718259b02a61525ae2cf1c1))
- **inventory:** move drug price modules from contracts to master-data section ([8d48d60](https://github.com/aegisx-platform/aegisx-starter/commit/8d48d6000f647e10700815373a3d42cf57f9ed2e))
- **inventory:** use roles-based subApp filtering instead of permissions ([eaa62e2](https://github.com/aegisx-platform/aegisx-starter/commit/eaa62e22a1fbe33396989d63395bff6e64fe6c98))
- **monitoring:** refactor activity logs UI to match PR/PO pattern and fix API pagination ([fa72d4a](https://github.com/aegisx-platform/aegisx-starter/commit/fa72d4ac5c661b2ad94f3ecf446b5e6254ba7675))
- **profile:** remove redundant breadcrumb from profile page ([efbadee](https://github.com/aegisx-platform/aegisx-starter/commit/efbadeeeb2c102f6c60b60bd354ae7725c152fc5))
- **rbac:** increase badge color intensity for better visibility ([1816a1b](https://github.com/aegisx-platform/aegisx-starter/commit/1816a1b6e025fcbb2bd26f61e29f65612dc78d39))
- **rbac:** modernize role and permission badges to Tailwind style ([3e5980f](https://github.com/aegisx-platform/aegisx-starter/commit/3e5980fe12ba79a1edaa4cb57582c1859352d9e8))
- **settings:** match stat cards to Activity Logs design ([817e6a7](https://github.com/aegisx-platform/aegisx-starter/commit/817e6a7acc1b292820d3d81abe56ae8ea8f06024))
- **system/users:** standardize content width to max-w-7xl across all pages ([9af1c7c](https://github.com/aegisx-platform/aegisx-starter/commit/9af1c7c22b08b8495ba408465e68348a839f88dc))
- **ui:** improve a11y and cleanup stat card styles ([cf55117](https://github.com/aegisx-platform/aegisx-starter/commit/cf55117d41fed481dd49dd51343ade1d4c0424ff))
- **ui:** move file-upload stat cards to full-width layout ([b34ced6](https://github.com/aegisx-platform/aegisx-starter/commit/b34ced6f798bc341b02656212277b62560dfabdd))
- **ui:** redesign API Keys widget on System Dashboard ([755f0bd](https://github.com/aegisx-platform/aegisx-starter/commit/755f0bd528499f35f479e09a05f2324b075dee43))
- **ui:** remove breadcrumb icons from departments and users pages ([0aee0c0](https://github.com/aegisx-platform/aegisx-starter/commit/0aee0c0598b19955d831942bfedc148c0fe193b7))
- **ui:** remove breadcrumb icons from monitoring pages ([0d2f053](https://github.com/aegisx-platform/aegisx-starter/commit/0d2f053937cc0cf20ceacf7180b2fbd155af05f2))
- **ui:** replace plain HTML buttons with Material buttons on monitoring dashboard ([39f47f9](https://github.com/aegisx-platform/aegisx-starter/commit/39f47f9199ac5eaa24fd110c66dab8e2824c4c01))
- **ui:** rewrite file-upload page to match departments theme ([14f26db](https://github.com/aegisx-platform/aegisx-starter/commit/14f26db1b409e11d51a65fd031f625ff470563dc))
- **ui:** standardize stat cards design across System pages ([3cbdc37](https://github.com/aegisx-platform/aegisx-starter/commit/3cbdc3765ae162459b20caf4beff25bdc826d48c))
- **ui:** standardize widget header icons and footer buttons on monitoring dashboard ([591b573](https://github.com/aegisx-platform/aegisx-starter/commit/591b5733d3a75198c08b51b4403f6715ad37cc17)), closes [#e3f2](https://github.com/aegisx-platform/aegisx-starter/issues/e3f2) [fd/#1565c0](https://github.com/aegisx-platform/aegisx-starter/issues/1565c0) [#e8f5e9](https://github.com/aegisx-platform/aegisx-starter/issues/e8f5e9) [#2e7d32](https://github.com/aegisx-platform/aegisx-starter/issues/2e7d32)
- **ui:** update file-upload stat cards to match departments design ([c0c1aa8](https://github.com/aegisx-platform/aegisx-starter/commit/c0c1aa8c543d34e0608af60aff6918c8bf18b45c))
- **users:** modernize role badges to match activity-logs severity style ([616c7be](https://github.com/aegisx-platform/aegisx-starter/commit/616c7be92f3dc2beb98e91b4edffb065b069e42c))

### Features

- **departments:** add stat filter cards and standardize UI ([43ea463](https://github.com/aegisx-platform/aegisx-starter/commit/43ea463386716707560ab7429a531144a386c375))
- **inventory:** add 6 default roles with granular permissions ([dbddc1b](https://github.com/aegisx-platform/aegisx-starter/commit/dbddc1bc2b692270ce1ad8c74a379f1adfe65ddd))
- **inventory:** add matching method info panel to review matches page ([b0e1746](https://github.com/aegisx-platform/aegisx-starter/commit/b0e17469fb29e5e29c3cea6273e70a9218ef183e))
- **inventory:** add review matches UI for pharmacist verification ([562a0e7](https://github.com/aegisx-platform/aegisx-starter/commit/562a0e74aea5b0918a358a883072168c38245f4c))
- **inventory:** add seed users and login buttons for all 6 inventory roles ([523b67a](https://github.com/aegisx-platform/aegisx-starter/commit/523b67af651ea762e87999bc93fe23c861580097))
- **inventory:** smart drug search with inline reference price + auto-match ([09585c6](https://github.com/aegisx-platform/aegisx-starter/commit/09585c6b76b4034931b2a83029c74f30fe13fd97))
- **navigation:** redesign module-based navigation with 4 main groups ([4a21e57](https://github.com/aegisx-platform/aegisx-starter/commit/4a21e57aa6570fbd932b6be89846e78716f50a2c))
- **navigation:** refine module nav - trim sub-warehouse, add dashboard, move HIS Sync to admin ([d9bd6fc](https://github.com/aegisx-platform/aegisx-starter/commit/d9bd6fcee746534d5aead81f4ef9c27e4d77899e))
- **profile:** standardize profile page UI with colored stat icons and breadcrumb icons ([1276b1c](https://github.com/aegisx-platform/aegisx-starter/commit/1276b1cbb04a45b5a6eb93de8ddbb1d7b72c89c1))
- **rbac:** add stat filter cards to permission management page ([c1daab3](https://github.com/aegisx-platform/aegisx-starter/commit/c1daab37c60ceda85808cfb7b9550cfe75d93ad0))
- **rbac:** add stat filter cards to role management page ([72341bf](https://github.com/aegisx-platform/aegisx-starter/commit/72341bf1f843ab084274af7f1f6240946011cec6))
- **users:** add stat filter cards to users management page ([d4da8a2](https://github.com/aegisx-platform/aegisx-starter/commit/d4da8a21da8deb0f892a3c8a2d5d7ccc88aa07ff))

# [1.14.0](https://github.com/aegisx-platform/aegisx-starter/compare/v1.13.0...v1.14.0) (2026-02-27)

### Bug Fixes

- **dashboard:** include APPROVED/BUDGET_RESERVED PRs in pending count ([911face](https://github.com/aegisx-platform/aegisx-starter/commit/911facefdfc6fd82c81d358f07a6adbb6d309d6e))
- **dashboard:** show all 5 KPI stat cards in single row ([cff3b8b](https://github.com/aegisx-platform/aegisx-starter/commit/cff3b8b07162b6adc486f37f75e4529a84d54dd5))
- **drug-generics:** unify search by code and name ([d18cac3](https://github.com/aegisx-platform/aegisx-starter/commit/d18cac383d720f01aa0af29616bdb073e1ec4a1f))
- **drugs:** add extended fields to controller transforms and fix Optional schemas ([2532d28](https://github.com/aegisx-platform/aegisx-starter/commit/2532d28101b38fe83e0f790e4b0e4f26dd2029eb))
- **drugs:** enable unified search by code and name ([08947b9](https://github.com/aegisx-platform/aegisx-starter/commit/08947b9ac8b9b498991fcf1f8f066e3e1c1a2fc3))
- **inventory-reports:** register-first flow with searchable user filter ([850240b](https://github.com/aegisx-platform/aegisx-starter/commit/850240bba53f3570e53c9607a046adc48ca5f889))
- **inventory:** add FIFO inventory deduction in dispenseDistribution and fix items returning with IDs ([5bc4b14](https://github.com/aegisx-platform/aegisx-starter/commit/5bc4b1421e0465031fb124cf1bb5ad91e74f4301))
- **inventory:** add getKnex method to drug-distributions repository ([9007cdd](https://github.com/aegisx-platform/aegisx-starter/commit/9007cdd54b6f215a8d2bfb989a293ee6e2fe14b8))
- **inventory:** fix backorders query column references ([a109504](https://github.com/aegisx-platform/aegisx-starter/commit/a109504200d947a14bb7d09a1be126a6a008adce))
- **inventory:** fix commit_budget function and auto-commit on receipt posting ([75e39c4](https://github.com/aegisx-platform/aegisx-starter/commit/75e39c468187e56277e268d921c5d2812c7859e8))
- **inventory:** fix POST distribution to save items correctly ([817b28f](https://github.com/aegisx-platform/aegisx-starter/commit/817b28fcd2e07ce5446e61a80233a8b854446e4e))
- **inventory:** fix PR status, distribution total_amount and receipt posting bugs ([ade5c37](https://github.com/aegisx-platform/aegisx-starter/commit/ade5c37ab3610bfc5a878a9e44fd789e455e9701))
- **procurement:** correct dashboard API endpoint URLs to match backend routes ([a785b4f](https://github.com/aegisx-platform/aegisx-starter/commit/a785b4fd7b5484c04a72aaf94c2151af725c33d8))
- **profile:** redesign profile page to match app theme ([3fd5c1f](https://github.com/aegisx-platform/aegisx-starter/commit/3fd5c1fdfa81fba214ac793dba7ccd8db5342afd))
- **seed:** fix FK constraint errors when re-seeding with existing inventory data ([7b6e9a9](https://github.com/aegisx-platform/aegisx-starter/commit/7b6e9a96f07cd22dd9ad64ac1765cf5b93efa0b0))

### Features

- **drug-distributions:** auto-generate distribution_number, Thai labels, dept selector ([b713c3e](https://github.com/aegisx-platform/aegisx-starter/commit/b713c3e4e016e0b6dc05017f0d6a77dcf825a11e))
- **drug-generics:** add detail route and drug management entry ([9e750a4](https://github.com/aegisx-platform/aegisx-starter/commit/9e750a4f06bd8c3ae23910cfbed8e9af33cd369d))
- **drug-generics:** enhance detail view and update MCP component data ([58ca70c](https://github.com/aegisx-platform/aegisx-starter/commit/58ca70ce28d901e8bef9ba906c6f922387605798))
- **drug-returns:** complete workflow dialogs and fix API URL patterns ([ad2cf1c](https://github.com/aegisx-platform/aegisx-starter/commit/ad2cf1c9d2071eca1e1b67b1718901df1f3fe15f))
- **inventory:** add breadcrumb navigation to reports and analytics pages ([9c9949e](https://github.com/aegisx-platform/aegisx-starter/commit/9c9949e705f961ba3ad3f7d479e2244113024e0a))
- **inventory:** add clickable status KPI cards to drug-distributions list ([dcde742](https://github.com/aegisx-platform/aegisx-starter/commit/dcde74208f2ac88e12db79b31d66f67d83ac5bc3))
- **inventory:** add main-warehouse dashboard and drug-returns submit workflow ([db5d8d1](https://github.com/aegisx-platform/aegisx-starter/commit/db5d8d11cc3411813937cc2d5863701ce1dc8076))
- **inventory:** add sub-warehouse dashboard with KPI cards and alerts ([9da5c07](https://github.com/aegisx-platform/aegisx-starter/commit/9da5c0705f64d13db15da83ad04b9a4984b8ca21))
- **inventory:** add workflow tracker component with ng-diagram ([522bbdc](https://github.com/aegisx-platform/aegisx-starter/commit/522bbdc8a55e49492439c59e1d5e887ea11fcb8d))
- **inventory:** enhance analytics pages with breadcrumb and remove TOR references ([e47e2f6](https://github.com/aegisx-platform/aegisx-starter/commit/e47e2f625457dbdea3fed97bf0d3abb9f94ab290))
- **inventory:** extend drug dialog with classification, pricing tabs and new fields ([9dc826d](https://github.com/aegisx-platform/aegisx-starter/commit/9dc826d36a9cf1a62e34d43defad4563b0cbd24c))
- **inventory:** implement drug distribution items workflow ([ead008f](https://github.com/aegisx-platform/aegisx-starter/commit/ead008f6e5a34703dc264fde3cfaa8585ab7770d))
- **inventory:** implement item-level approve/dispense with backorder tracking ([c15e36e](https://github.com/aegisx-platform/aegisx-starter/commit/c15e36e7a88b34c3e9b16c95e5ad4ee136ff9d05))
- **inventory:** integrate workflow tracker into PO view dialog ([28e57f2](https://github.com/aegisx-platform/aegisx-starter/commit/28e57f21d80664918c8edb225f1b9c5e7a48db99))
- **inventory:** integrate workflow tracker into PR view dialog ([ddc5c30](https://github.com/aegisx-platform/aegisx-starter/commit/ddc5c3028d0df1baab10b87041848306902cf27d))
- **inventory:** localize drug dialogs to Thai and enhance generic management flows ([79c6296](https://github.com/aegisx-platform/aegisx-starter/commit/79c62960086068b9fc226ee9975a3f314613174e))
- **inventory:** merge drug-distribution-items feature ([b927bba](https://github.com/aegisx-platform/aegisx-starter/commit/b927bbaede8db053eab0b03e74b25067ba2a982d))
- **inventory:** resolve FK names in drug-distributions list and view dialog ([f6ff753](https://github.com/aegisx-platform/aegisx-starter/commit/f6ff753ee8d9d87271c17126001cb9c4f6674760))
- **procurement:** add analytics repository with dashboard queries ([cddb944](https://github.com/aegisx-platform/aegisx-starter/commit/cddb944846f26bc7d3f1b0fb506b105344507954))
- **procurement:** add analytics routes for ops/mgmt/stock-vs-po dashboards ([875532e](https://github.com/aegisx-platform/aegisx-starter/commit/875532ee5e1846a077752ccf885cc9b804e83479))
- **procurement:** add Angular dashboard service and types ([f66613b](https://github.com/aegisx-platform/aegisx-starter/commit/f66613be6d6b7fe16a862f3d1260c7ecfb1c808a))
- **procurement:** add approved_at to purchase_requests and set on approve ([4e1c5a2](https://github.com/aegisx-platform/aegisx-starter/commit/4e1c5a20280898be24492922a24c80cf1b4a7a57))
- **procurement:** add expected_delivery_date to purchase_orders ([3f8ed87](https://github.com/aegisx-platform/aegisx-starter/commit/3f8ed87aa0e3ba78f865dfa184237023d544f1cc))
- **procurement:** add management dashboard page ([1b76c6b](https://github.com/aegisx-platform/aegisx-starter/commit/1b76c6b46dc1074cc67da84d70da45bc39783890))
- **procurement:** add operational dashboard page ([d30cd03](https://github.com/aegisx-platform/aegisx-starter/commit/d30cd03042de82e4fa933b926ddae711ba7afe1d))
- **procurement:** add TypeBox schemas for dashboard analytics ([6872bc7](https://github.com/aegisx-platform/aegisx-starter/commit/6872bc795172188b8c4651c4825ec589f69332a2))
- **procurement:** auto-fill unit price from budget plan when selecting drug ([045d087](https://github.com/aegisx-platform/aegisx-starter/commit/045d0878a46d208b70a2e1dce83366d7a2509abf))
- **procurement:** register dashboard routes and launcher entry ([fc8a6a1](https://github.com/aegisx-platform/aegisx-starter/commit/fc8a6a1e614e79bce6569d457e36d11a34843254))

# [1.11.0](https://github.com/aegisx-platform/aegisx-starter/compare/v1.10.0...v1.11.0) (2026-02-23)

### Features

- **inventory:** improve budget-allocations and budget-requests list UI ([0c4eef0](https://github.com/aegisx-platform/aegisx-starter/commit/0c4eef076d68e824083917e211fa1d1aecf266cf))

# [1.9.0](https://github.com/aegisx-platform/aegisx-starter/compare/v1.8.1...v1.9.0) (2026-02-21)

### Bug Fixes

- **inventory:** convert date fields to ISO strings in hospital-settings repository ([cfe3152](https://github.com/aegisx-platform/aegisx-starter/commit/cfe3152e8f8231240d9ad9cbdd9599785aa5e542))

### Features

- **deploy:** add Nginx Proxy Manager and self-contained installer v1.7.0 ([a05189b](https://github.com/aegisx-platform/aegisx-starter/commit/a05189b10c9d3d63b70b9d008b67e5f42fbdb31e))
- **inventory:** add data preview counts and preview dialog to DMSIC dashboard ([d2a07a6](https://github.com/aegisx-platform/aegisx-starter/commit/d2a07a6c3c095024248ac014a7c0571018635a82))
- **inventory:** add settings link and history toggle to DMSIC dashboard ([1d7359b](https://github.com/aegisx-platform/aegisx-starter/commit/1d7359b969735b1a744d39c098620ca2637a413c))
- **inventory:** migrate DMSIC export to v2 API format ([b3e3791](https://github.com/aegisx-platform/aegisx-starter/commit/b3e3791664701b5c8bef847c9b22d5efc18b7d4f))

## [1.8.1](https://github.com/aegisx-platform/aegisx-starter/compare/v1.8.0...v1.8.1) (2026-02-20)

### Bug Fixes

- **ci:** increase build_images timeout to 45min for web push ([ffcfc17](https://github.com/aegisx-platform/aegisx-starter/commit/ffcfc17956a83ab00377dedaa283ad74b48c5486))

# [1.8.0](https://github.com/aegisx-platform/aegisx-starter/compare/v1.7.8...v1.8.0) (2026-02-20)

### Bug Fixes

- **ci:** add Docker Hub login to avoid rate limiting ([421f21c](https://github.com/aegisx-platform/aegisx-starter/commit/421f21cff31e2bb8040172cfbdafb012e76ccef8))

### Features

- **inventory:** integrate vendor-specific drug pack ratios across modules ([e2e3003](https://github.com/aegisx-platform/aegisx-starter/commit/e2e3003a515531de890c48905aa77269cb0d6af2))

## [1.7.8](https://github.com/aegisx-platform/aegisx-starter/compare/v1.7.7...v1.7.8) (2026-02-20)

### Bug Fixes

- **api:** remove duplicate department field in UserWithRoleSchema ([d238f10](https://github.com/aegisx-platform/aegisx-starter/commit/d238f1014434a9bc2e34cf288141662576ae3e84))
- **deploy:** add SESSION_SECRET and individual database env vars ([a099648](https://github.com/aegisx-platform/aegisx-starter/commit/a0996485d07a119e45ec0c01d632cd4f282a9f6e))
- **docker:** make canvas optional to fix ARM64/musl build failure ([073808e](https://github.com/aegisx-platform/aegisx-starter/commit/073808e530aed78679360684b4121eab5dc8368a))

## [1.7.7](https://github.com/aegisx-platform/aegisx-starter/compare/v1.7.6...v1.7.7) (2026-02-20)

### Bug Fixes

- **docker:** make canvas optional to fix ARM64/musl build failure ([58a5c8b](https://github.com/aegisx-platform/aegisx-starter/commit/58a5c8b2876959cc1f8e1001802c504be1b16053))

## [1.7.6](https://github.com/aegisx-platform/aegisx-starter/compare/v1.7.5...v1.7.6) (2026-02-20)

### Bug Fixes

- **docker:** add canvas native dependencies for chart/PDF generation ([0a1ab6a](https://github.com/aegisx-platform/aegisx-starter/commit/0a1ab6a8c82ab95e825b900d7908630ada854ae0))

## [1.7.5](https://github.com/aegisx-platform/aegisx-starter/compare/v1.7.4...v1.7.5) (2026-02-20)

### Bug Fixes

- **docker:** fix API entrypoint path to dist/apps/api/src/main.js ([8956351](https://github.com/aegisx-platform/aegisx-starter/commit/895635159f751c1a47f106bbea2528e145aefd78))

## [1.7.4](https://github.com/aegisx-platform/aegisx-starter/compare/v1.7.3...v1.7.4) (2026-02-20)

### Bug Fixes

- **docker:** increase web Docker build memory to 4096MB ([99d97b3](https://github.com/aegisx-platform/aegisx-starter/commit/99d97b324fea0058d807d1ecaf5dc36b855e2572))

## [1.7.3](https://github.com/aegisx-platform/aegisx-starter/compare/v1.7.2...v1.7.3) (2026-02-20)

### Bug Fixes

- **docker:** fix native module build in Alpine Docker images ([100511a](https://github.com/aegisx-platform/aegisx-starter/commit/100511a48b0220f6c7b9c141b1fab118e6ea5225))

## [1.7.2](https://github.com/aegisx-platform/aegisx-starter/compare/v1.7.1...v1.7.2) (2026-02-20)

### Bug Fixes

- **deploy:** remove aegisx-auth and landing from install.sh ([06fbecb](https://github.com/aegisx-platform/aegisx-starter/commit/06fbecbc2280efbb0495e6ae83308e7c749f7032))
- **docker:** fix Docker image build failures ([b3be8b4](https://github.com/aegisx-platform/aegisx-starter/commit/b3be8b4ec89f9df292661a96f8369158264e909f))

## [1.7.1](https://github.com/aegisx-platform/aegisx-starter/compare/v1.7.0...v1.7.1) (2026-02-20)

### Bug Fixes

- **deploy:** remove aegisx-auth and landing from install.sh ([ee76944](https://github.com/aegisx-platform/aegisx-starter/commit/ee769441be23f39049983cd86011a426970ad61d))

# [1.7.0](https://github.com/aegisx-platform/aegisx-starter/compare/v1.6.0...v1.7.0) (2026-02-20)

### Bug Fixes

- **auth-login:** support sign in with email or username ([a840729](https://github.com/aegisx-platform/aegisx-starter/commit/a84072980b61f5034221fc74a784c153f8f78eaf))
- **file-upload:** make file preview dialog responsive across screen sizes ([d9f9314](https://github.com/aegisx-platform/aegisx-starter/commit/d9f9314264fa6feab94fc24072a62ea6d639f677))
- **file-upload:** stabilize upload flow and attachment usage stats ([920cb15](https://github.com/aegisx-platform/aegisx-starter/commit/920cb151bd68e91a4f836814fb56647c41b1658d))
- **permissions:** align inventory module visibility with wildcard access ([b44b65c](https://github.com/aegisx-platform/aegisx-starter/commit/b44b65cd1a900153316a6d306ed4a9d5bd012d81))
- **permissions:** complete module visibility alignment ([a8f80ae](https://github.com/aegisx-platform/aegisx-starter/commit/a8f80ae7198ee8700494e220384770fc8703fe2f))
- **rbac,users:** improve pagination, search, and UI consistency ([1edfae0](https://github.com/aegisx-platform/aegisx-starter/commit/1edfae064d198f798bb0088f58a2355204491941))
- **rbac:** align AuditEvent interface with camelCase API response format ([eaf2aca](https://github.com/aegisx-platform/aegisx-starter/commit/eaf2aca0fde137a943fb0c199cfbec05d5cce438))
- **rbac:** align monitoring permissions to canonical names ([e85608f](https://github.com/aegisx-platform/aegisx-starter/commit/e85608f8675414bf94be87cd8c030bd130a9ac9b))
- **rbac:** align user-role assignment actions with user-roles permissions ([25f2935](https://github.com/aegisx-platform/aegisx-starter/commit/25f2935495c10bc112166264dcedce04b51f0ec0))
- **rbac:** align user-role assignment permissions and actions ([052fcbd](https://github.com/aegisx-platform/aegisx-starter/commit/052fcbdcf523d71b7c8612d1d2f988604c11d1d6))
- **rbac:** convert timestamp fields to ISO strings in getUserRoles ([85de947](https://github.com/aegisx-platform/aegisx-starter/commit/85de947ef559defc31b6a47b6c5460c1ed99745f))
- **rbac:** fix audit event detail dialog formatting and field name alignment ([1255239](https://github.com/aegisx-platform/aegisx-starter/commit/12552392410884067fd73e7ea1054d7a7afbbc51))
- **rbac:** refine user-role assignment search and expiry workflows ([8929ac2](https://github.com/aegisx-platform/aegisx-starter/commit/8929ac29b0354952de0375899dc72bd61de02daf))
- **rbac:** resolve ngModel formGroup conflict in dialogs ([0caf1bb](https://github.com/aegisx-platform/aegisx-starter/commit/0caf1bb58797a1ee430e411d9ff7aa22f3a032e9))
- **rbac:** resolve ngModel formGroup conflict in user role assignment filters ([537c03f](https://github.com/aegisx-platform/aegisx-starter/commit/537c03f9b9b250d1e8473481bd943eb4e3761b37))
- **rbac:** resolve pagination, filter/sort, and UI issues ([ce9ea28](https://github.com/aegisx-platform/aegisx-starter/commit/ce9ea28d8510da363603845b9e6863ddc5ff7919))

### Features

- **activity-logs:** show username in audit activity logs ([7ced7eb](https://github.com/aegisx-platform/aegisx-starter/commit/7ced7ebf10ab51906779f3f141c568f8350986b4))
- align RBAC permissions and fix monitoring dashboard APIs/UI ([b068efe](https://github.com/aegisx-platform/aegisx-starter/commit/b068efe6aeb6e65c9657556813abe407df6617f6))
- **analytics:** enhance ABC/VEN dashboard with VEN assignment and priority KPI cards ([0759f5a](https://github.com/aegisx-platform/aegisx-starter/commit/0759f5a092c6ad789d602c8116ec9792918cc9f9))
- **audit:** implement activity logs docs, routing, and session/device tracking ([a3147aa](https://github.com/aegisx-platform/aegisx-starter/commit/a3147aa4f77f54e6e0753c13f047d0548140cbb4))
- **deploy:** add install.sh with full and external-db modes ([18edcf8](https://github.com/aegisx-platform/aegisx-starter/commit/18edcf8aae0579825f969044131c3f0fbe7e82b3))
- **inventory:** add TMT integration workflows and procurement enhancements ([74ffd84](https://github.com/aegisx-platform/aegisx-starter/commit/74ffd84134a50524777c2547c62c57bc357ba3d3))
- **procurement:** add configurable data color to PO PDF templates ([8f146e4](https://github.com/aegisx-platform/aegisx-starter/commit/8f146e4ec8991c86ec41c78044f19038a1c240ac))
- **profile:** separate session visibility from activity logs ([1aba747](https://github.com/aegisx-platform/aegisx-starter/commit/1aba747b2352d119fb5e7e90c91d31bf1ed7087c))
- **rbac:** add comprehensive audit log system with detail view ([1ef04fd](https://github.com/aegisx-platform/aegisx-starter/commit/1ef04fd7b0297fce6a73909fbdf2595175516065))
- **rbac:** add comprehensive RBAC audit logging system ([4e0d5fb](https://github.com/aegisx-platform/aegisx-starter/commit/4e0d5fb33d113141b48ea57d4bca748eece0dfba))
- **rbac:** add CSV export for RBAC audit logs list page ([0f6869c](https://github.com/aegisx-platform/aegisx-starter/commit/0f6869cb6255539000739966d30dd540a976d9d8))
- **rbac:** add RecentActivityComponent for audit logs widget ([4bd8a06](https://github.com/aegisx-platform/aegisx-starter/commit/4bd8a0699c5670e1d5c2549807e10bee93c5a26c))
- **rbac:** complete audit event recording system for all RBAC operations ([5317d5c](https://github.com/aegisx-platform/aegisx-starter/commit/5317d5cc4e1de9b7d729acc2ba53f40c03b7e927))
- **rbac:** enforce active-role permission matching across api and web ([3540ea7](https://github.com/aegisx-platform/aegisx-starter/commit/3540ea78bceadf0a4fea4c15d8e5e99708b9d4e3))
- **rbac:** harden role assignment flows and add RBAC CI gate ([acfe846](https://github.com/aegisx-platform/aegisx-starter/commit/acfe8461f389838dd4aaa979d3f42e7ca77fff5d))
- **rbac:** implement complete RBAC system with routing and audit integration ([0fea0f3](https://github.com/aegisx-platform/aegisx-starter/commit/0fea0f35cb53076fca37adac50bc4e694868e101))
- **rbac:** implement WebSocket real-time notifications for RBAC changes ([a753d2e](https://github.com/aegisx-platform/aegisx-starter/commit/a753d2e98caac9886feda855fb7106a31e64d84a))
- **system:** finalize profile and RBAC hardening updates ([7a8061e](https://github.com/aegisx-platform/aegisx-starter/commit/7a8061edc1c9586702b5b1e4b3613b2b58d13643))
- **ui:** add profileClicked event to EnterpriseLayout ([f9eed34](https://github.com/aegisx-platform/aegisx-starter/commit/f9eed34f2904abdf56a37352ee97816b0b001956))
- **user-profile:** refresh profile UI and align management routing ([f72519f](https://github.com/aegisx-platform/aegisx-starter/commit/f72519fecebd63e91931df6f759fda62adadebe1))
- **web:** refresh RBAC dialogs and module visibility checks ([96295bd](https://github.com/aegisx-platform/aegisx-starter/commit/96295bd380ce49860f058c1d8a9e4cf14a64ab18))

## [Unreleased]

### Documentation

- **rbac**: sync RBAC documentation with actual implementation ([#RBAC-DOCS-SYNC](docs/DOCUMENTATION_CHANGELOG.md))
  - Update `rbac-audit.md` to reflect public schema usage (v1.1 → v1.2)
  - Add WebSocket real-time events section to `api-contracts.md`
  - Add actual implementation section to `rbac-auth.md`
  - Fix field naming inconsistencies and permission format documentation
  - See [DOCUMENTATION_CHANGELOG.md](docs/DOCUMENTATION_CHANGELOG.md) for complete details

---

## [1.1.1](https://github.com/aegisx-platform/aegisx-starter/compare/v1.1.0...v1.1.1) (2025-09-17)

### Bug Fixes

- **release:** improve semantic-release configuration for reliable versioning ([d18b1d0](https://github.com/aegisx-platform/aegisx-starter/commit/d18b1d0d4cbcb7e5634bb4b57d29589ca1568594))

# [1.1.0](https://github.com/aegisx-platform/aegisx-starter/compare/v1.0.12...v1.1.0) (2025-09-15)

### Bug Fixes

- add /api prefix to user management routes ([cf8c253](https://github.com/aegisx-platform/aegisx-starter/commit/cf8c25332117bd6bfdd0066b2ff180ab30e679a4))
- add body schema for avatar upload endpoint ([5e50fae](https://github.com/aegisx-platform/aegisx-starter/commit/5e50fae3600946187cc4f7a392245a56e6132f58))
- add comprehensive debugging for self-hosted runner build issues ([2356c28](https://github.com/aegisx-platform/aegisx-starter/commit/2356c28921686b483967193afeacd67c11f5ec16))
- add comprehensive Docker build optimizations for all apps ([3b92924](https://github.com/aegisx-platform/aegisx-starter/commit/3b929248f1c4fe41923d6a8a9da5863d6328f078))
- add missing JWT authentication middleware to auth routes ([e2b8009](https://github.com/aegisx-platform/aegisx-starter/commit/e2b8009e583109098eb8a1fd7dded43920ebbdfa))
- add no-cache flag to all Docker builds to force fresh nginx configs ([72ed074](https://github.com/aegisx-platform/aegisx-starter/commit/72ed0741c3fb094431d19851cf82931d7eac95cc))
- add Node.js memory optimization to all Dockerfiles ([a1d79e9](https://github.com/aegisx-platform/aegisx-starter/commit/a1d79e98f59baaf626b973a45b49964aacfe14f4))
- add reflect-metadata import for tsyringe dependency injection ([3353ef8](https://github.com/aegisx-platform/aegisx-starter/commit/3353ef8a5bc253f59ae104efb6ec4c2f087d787b))
- add schemas-plugin dependency to all module plugins to prevent startup crash ([8d5ee4d](https://github.com/aegisx-platform/aegisx-starter/commit/8d5ee4dda208de4bb8da9d1fc1c4cd1128a375f7))
- add staging tag for easier deployment ([bdf3c64](https://github.com/aegisx-platform/aegisx-starter/commit/bdf3c64a97e71d9fbba489b56d36f92acdb4e6b6))
- add Swagger grouping tags to auth routes ([0968996](https://github.com/aegisx-platform/aegisx-starter/commit/09689966f69e52a969b117d7d84f42acf8693b75))
- add wheelPropagation property to AxScrollbarOptions interface ([8b784d6](https://github.com/aegisx-platform/aegisx-starter/commit/8b784d6c8da0c1903f9b68da16700822acb1d3cf))
- auth integration tests and login functionality ([3711f5b](https://github.com/aegisx-platform/aegisx-starter/commit/3711f5bfaedd527a07e8c64d3ca9b057ebed985e))
- change Docker build platform from amd64 to arm64 for self-hosted runner ([56fd2eb](https://github.com/aegisx-platform/aegisx-starter/commit/56fd2eba573ff69f618fa9626ea10c98e414bf3f))
- clean up Settings API linting issues ([5f22cf1](https://github.com/aegisx-platform/aegisx-starter/commit/5f22cf1507026222d910a331409dfd4e8d0bc732))
- clean up v2.x.x releases and restore clean v1.0.11 state ([b6f0eef](https://github.com/aegisx-platform/aegisx-starter/commit/b6f0eefaabaccddcd3adf638cdced711468ea771))
- **compose:** chang redis port in docker compose to 5432 ([1cea86b](https://github.com/aegisx-platform/aegisx-starter/commit/1cea86b78261f5b450737fa2cc46882dd5a25076))
- **compose:** chang redis port in docker compose to 5432 ([fca2755](https://github.com/aegisx-platform/aegisx-starter/commit/fca2755f1324ff2ee824cd7a3ce5994c1ea815b9))
- connect frontend to real API endpoints ([b05acc5](https://github.com/aegisx-platform/aegisx-starter/commit/b05acc5933c599751bc8da8abea6ee42e03a49d5))
- correct auth controller to access authService from fastify instance ([1edf134](https://github.com/aegisx-platform/aegisx-starter/commit/1edf1349de60a0d23370fd67dd9618e3088177da))
- correct E2E test database configuration in GitHub Actions ([92ddba7](https://github.com/aegisx-platform/aegisx-starter/commit/92ddba723b0fa746287b2f202c6a0fea9cba24f9))
- correct ESLint flat config for libs directory ([7ddaeaf](https://github.com/aegisx-platform/aegisx-starter/commit/7ddaeafe6fc7a6f0309479629dc8b0fa50440d06))
- correct floating label positioning in form utility classes ([d58f60b](https://github.com/aegisx-platform/aegisx-starter/commit/d58f60b700c465073ba212b508aa71eee85e43b3))
- correct icon positioning conflicts in form utility classes ([11f23d4](https://github.com/aegisx-platform/aegisx-starter/commit/11f23d4e70a46fb49a804d1f2aa5e36f82db4e42))
- **dockerfile:** add space ([e07157f](https://github.com/aegisx-platform/aegisx-starter/commit/e07157fea9b103b453a86fa5ed9b2ec5fb5201fc))
- **e2e:** resolve Clone 2 E2E test execution issues ([f93e2f6](https://github.com/aegisx-platform/aegisx-starter/commit/f93e2f6bd51eba52609cf2e3925d316db273ca81))
- ensure proper directory permissions for non-root user in Docker builds ([cdb2632](https://github.com/aegisx-platform/aegisx-starter/commit/cdb2632bd33e58fc162871444ac8dc460d67d5c7))
- **env:** add ignore .env in .gitignore ([ce0bb24](https://github.com/aegisx-platform/aegisx-starter/commit/ce0bb2464b57675333af8a96d6ae89ecdf340f8f))
- finalize Docker build fixes - remove fail2ban version constraint and optimize cache handling ([b0eef79](https://github.com/aegisx-platform/aegisx-starter/commit/b0eef79adc72f995ccfcb01801e61eb5c2fbf601))
- force complete Docker cache clear to resolve nginx validation issues ([9bd3df0](https://github.com/aegisx-platform/aegisx-starter/commit/9bd3df03fa1e73bfe2be2abd89dd3a2fd07742a8))
- force Docker image pulls and ensure clean nginx configs ([5ea34ef](https://github.com/aegisx-platform/aegisx-starter/commit/5ea34efa7466660368524fb94477d6a964bd7081))
- force nginx config refresh for Docker builds ([cfdf913](https://github.com/aegisx-platform/aegisx-starter/commit/cfdf9138923eecb035f1d28f8d254ad17428c2c1))
- force nginx config refresh with content changes ([20fe663](https://github.com/aegisx-platform/aegisx-starter/commit/20fe663a153dcf180801c523c59d5c27dbf49bd6))
- handle GitHub Advanced Security requirement gracefully ([62d400f](https://github.com/aegisx-platform/aegisx-starter/commit/62d400fd5901196538052ff500df05c7b4697b52))
- implement avatar display and authentication improvements ([aea0ceb](https://github.com/aegisx-platform/aegisx-starter/commit/aea0ceb07bda062f359ac0a99d6fde32430ec69b))
- improve API Dockerfile for better GitHub Actions compatibility ([e7b14a7](https://github.com/aegisx-platform/aegisx-starter/commit/e7b14a7f8cf8d8ba139851ac0cb71fd9d1e630d7))
- include refreshToken in login response for API testing ([e46c907](https://github.com/aegisx-platform/aegisx-starter/commit/e46c907e47f4194a10e62ed9793294515de34512))
- increase yarn network timeout to resolve ESOCKETTIMEDOUT errors ([f0bf6cb](https://github.com/aegisx-platform/aegisx-starter/commit/f0bf6cbd6e9e7a106cfd4c033302d4f25b97659a))
- make Redis optional for test environment ([9eb6d98](https://github.com/aegisx-platform/aegisx-starter/commit/9eb6d98fddb666af65de21bb30e60846c7a4847d))
- optimize Docker builds to prevent timeouts and improve performance ([df3fff4](https://github.com/aegisx-platform/aegisx-starter/commit/df3fff444e0914b58f6129745bf86010445f323a))
- optimize navigation service loading to prevent API calls on login page ([6561ae7](https://github.com/aegisx-platform/aegisx-starter/commit/6561ae7bb0a7b158e6e7400ba67de78130f3baef))
- prevent duplicate API calls for navigation and activity stats ([1cbbcb2](https://github.com/aegisx-platform/aegisx-starter/commit/1cbbcb2f00cfa7e3f613d42a912b31c159289a06))
- reduce Node.js memory allocation to 2048MB for all builds ([820a77c](https://github.com/aegisx-platform/aegisx-starter/commit/820a77cc424425f30eadbeff10fa155bb46885d4))
- registration tests and error handling ([9e23fda](https://github.com/aegisx-platform/aegisx-starter/commit/9e23fda04fdf4f451a8bf173d84a5b573dc30e24))
- remove .env.local from git tracking ([96343c7](https://github.com/aegisx-platform/aegisx-starter/commit/96343c70084d9640dc932c30452820e03bb264b8))
- remove border-bottom from navigation header ([f21cec4](https://github.com/aegisx-platform/aegisx-starter/commit/f21cec4fcb70fe176070cdfa739aefd1f1e62b3b))
- remove conflicting commitlint JSON config and use JS config only ([9bf9441](https://github.com/aegisx-platform/aegisx-starter/commit/9bf944135efbeacfcec920a4f9f094233f17933b))
- remove github workflow ([e24dcd9](https://github.com/aegisx-platform/aegisx-starter/commit/e24dcd927a62e0b26c2c0563ba6a4f4a7973c8a1))
- remove invalid matrix expression in CI/CD workflow ([f36cee1](https://github.com/aegisx-platform/aegisx-starter/commit/f36cee1b1eb608f143b1151f8ef6f0c3af5dcd06))
- remove invalid must-revalidate from nginx gzip_proxied directive ([bb97d81](https://github.com/aegisx-platform/aegisx-starter/commit/bb97d814204a7c2015837cd92052dec9d30420ad))
- remove missing file references in Dockerfiles ([881e448](https://github.com/aegisx-platform/aegisx-starter/commit/881e448b71d3b91c7543eeb5331c40aa4fe6377c))
- remove must-revalidate from Cache-Control headers in nginx configs ([b256bdb](https://github.com/aegisx-platform/aegisx-starter/commit/b256bdb14459b93aa00f4f947e1988b75c39b433))
- remove must-revalidate from ssl setup script nginx config template ([d12448f](https://github.com/aegisx-platform/aegisx-starter/commit/d12448ff5c01dd623d1a0b8b6ffda8d6acbfb5a6))
- remove NODE_OPTIONS from all Dockerfiles for GitHub Actions compatibility ([2ef2432](https://github.com/aegisx-platform/aegisx-starter/commit/2ef2432057345131565e0b0222cbaefad19a5087))
- remove subtitle property from navigation group to fix type error ([673fab0](https://github.com/aegisx-platform/aegisx-starter/commit/673fab0add902025ae001e47713ab56561d31b12))
- remove tsyringe dependency injection from users module ([dcc4cb6](https://github.com/aegisx-platform/aegisx-starter/commit/dcc4cb6e7de0c2c131c9acdeabc7413f159f1a27))
- resolve all unit test failures across monorepo ([87d16d8](https://github.com/aegisx-platform/aegisx-starter/commit/87d16d80a621f229e6634922ab33bde80d24afc1))
- resolve Angular build errors in all Dockerfiles ([5005b23](https://github.com/aegisx-platform/aegisx-starter/commit/5005b2344729c27e79ae82981a9cce54068a4763))
- resolve Angular Material floating label overlap with prefix icons ([e8e53b3](https://github.com/aegisx-platform/aegisx-starter/commit/e8e53b352cf356d43a00d300bad65779669bec85))
- resolve API status endpoint schema mismatch ([6d4f04c](https://github.com/aegisx-platform/aegisx-starter/commit/6d4f04ca83bcbe412e40fbb162a809e6b3c78465))
- resolve avatar upload multipart/form-data validation ([bea2174](https://github.com/aegisx-platform/aegisx-starter/commit/bea2174f71e3a9b959e847be87dd8795ea734b52))
- resolve build errors and add missing button type attribute in navigation ([2a2d562](https://github.com/aegisx-platform/aegisx-starter/commit/2a2d56242f62e2365afbd332b07f995fec3a47aa))
- resolve CI/CD issues with package manager conflicts ([3e98880](https://github.com/aegisx-platform/aegisx-starter/commit/3e988803b91888e8ef2a1462e44230ad4385e517))
- resolve compilation errors and update Clone 2 progress ([7a7071b](https://github.com/aegisx-platform/aegisx-starter/commit/7a7071b7b17dd9e7a085e85257313d6d70e501ac))
- resolve component showcase compilation errors and restore SCSS files ([dfb25ae](https://github.com/aegisx-platform/aegisx-starter/commit/dfb25ae40fca23af4c9c6a3155583d4e6fe5717e))
- resolve CORS, monitoring endpoints, and user creation issues ([0a0189c](https://github.com/aegisx-platform/aegisx-starter/commit/0a0189cbe5836759264af3d437b8efd684cc692d))
- resolve database column errors in user profile API ([0f3d717](https://github.com/aegisx-platform/aegisx-starter/commit/0f3d7176d1423426e18a2ce8ca4fad145c94790f))
- resolve Docker build cache corruption in GitHub Actions ([adbccbf](https://github.com/aegisx-platform/aegisx-starter/commit/adbccbf802070e715dfc97535d27b5172c1bec4b))
- resolve GitHub Actions env context errors in service definitions ([517e732](https://github.com/aegisx-platform/aegisx-starter/commit/517e732566c1331c95ac2f2f16d91d3ac207ac58))
- resolve linting errors in e2e and aegisx-ui projects ([188fa0b](https://github.com/aegisx-platform/aegisx-starter/commit/188fa0bae529b1f325e7db091037f5123979b792))
- resolve linting errors in E2E test for empty arrow functions ([8f54b8a](https://github.com/aegisx-platform/aegisx-starter/commit/8f54b8a2bdbf5e30779b26c8de4375edf1b239cc))
- resolve Material Design form field icon positioning conflicts ([760d619](https://github.com/aegisx-platform/aegisx-starter/commit/760d6190e4abf8f97c663534fff8e24bc4dd4b46))
- resolve Material Design input border conflict with Tailwind CSS ([1a73ca2](https://github.com/aegisx-platform/aegisx-starter/commit/1a73ca29f5feb2633efc16e582b2138144e3b9bb))
- resolve merge conflicts from main branch integration ([b61ed16](https://github.com/aegisx-platform/aegisx-starter/commit/b61ed16003d92b4fd59d23658277729db92321e9))
- resolve navigation layout issues and content overflow ([415437f](https://github.com/aegisx-platform/aegisx-starter/commit/415437f4d93126d6d3cc27d41ebea2c4032b1d4a))
- resolve navigation overflow and mobile display issues ([189a600](https://github.com/aegisx-platform/aegisx-starter/commit/189a600004352f8c46b8fd4490e768ee2de726c9))
- resolve nginx configuration errors and update to pnpm ([7717b13](https://github.com/aegisx-platform/aegisx-starter/commit/7717b139c7770bc91101914c5542a5ea50b1a50f))
- resolve remaining CI/CD issues and update test scripts ([6f05ac1](https://github.com/aegisx-platform/aegisx-starter/commit/6f05ac1f609c3c5c0bacc91e29d22b31d984d03c))
- resolve remaining critical linting errors ([184540a](https://github.com/aegisx-platform/aegisx-starter/commit/184540ac781b681b7d267ca97a49d61b74f42114))
- resolve semantic-release commitlint validation errors ([68dc9f1](https://github.com/aegisx-platform/aegisx-starter/commit/68dc9f108c19e104e2f6b000bbf8ac924a0d9dbb))
- resolve user preferences API schema validation error ([c34796b](https://github.com/aegisx-platform/aegisx-starter/commit/c34796bbf6e97377e7db749a7002611684fc9c2b))
- restructure aegisx-ui library with clean ax folder structure ([427504e](https://github.com/aegisx-platform/aegisx-starter/commit/427504ef04794357ea8920940a4b509d58975705))
- simplify Angular build commands to resolve Docker build errors ([00e5b29](https://github.com/aegisx-platform/aegisx-starter/commit/00e5b291019721db7650ba7d283cad19e76a0ae5))
- skip husky prepare script in GitHub Actions workflows ([a9fc702](https://github.com/aegisx-platform/aegisx-starter/commit/a9fc702e4e55dca23d23abcdd1e311f8119277d6))
- skip unimplemented auth routes in test script ([9adc34a](https://github.com/aegisx-platform/aegisx-starter/commit/9adc34a2db5fca6f288718824aad438e55405153))
- standardize Fastify plugin naming conventions ([f219451](https://github.com/aegisx-platform/aegisx-starter/commit/f2194516e7334d228a11cb709ff5e71986567940))
- Swagger UI execute functionality by updating CSP and server configuration ([579cb0a](https://github.com/aegisx-platform/aegisx-starter/commit/579cb0a1bd5702b928e5f76a08f0ae14552aed3b))
- sync pnpm version between workflow and package.json ([8c9e329](https://github.com/aegisx-platform/aegisx-starter/commit/8c9e329b516c8688241bda7c48b882d6ee6dd91c))
- temporarily disable ARM64 builds to resolve lfstack.push error ([e6a5a6f](https://github.com/aegisx-platform/aegisx-starter/commit/e6a5a6ffc59e366bf1c2d0b2cd97c0a7a8e7dfc2))
- **tests:** resolve integration test failures and database issues ([861d624](https://github.com/aegisx-platform/aegisx-starter/commit/861d624f374f8e34b0f7b5b49bae255e9e9d15d2))
- update auth-strategies plugin dependency to use knex-plugin ([85a9924](https://github.com/aegisx-platform/aegisx-starter/commit/85a99247f677bcc19ffde44049085f4aa1768762))
- update Jest configurations to handle lodash-es ES modules ([e1d7794](https://github.com/aegisx-platform/aegisx-starter/commit/e1d77942535b2a3ce809e2e363e51c8cd0bee36f))
- update test script to use correct user profile endpoints ([67c172b](https://github.com/aegisx-platform/aegisx-starter/commit/67c172b71836093774f43c8ae9fc5df5800b1129))
- update web app.spec.ts to match actual app component implementation ([b610416](https://github.com/aegisx-platform/aegisx-starter/commit/b61041618a3a83b1af8449531fc2017aa711097c))
- upgrade Node.js to 20.19.0 to meet Angular 20.2.3 requirements ([b2bdb58](https://github.com/aegisx-platform/aegisx-starter/commit/b2bdb58a8a8ded8f3b609536e6e881dfdacbe8be))
- use pnpm for all build commands instead of npx ([0d1b83b](https://github.com/aegisx-platform/aegisx-starter/commit/0d1b83b870209abab946732747bad15358d8d4bb))
- use relative URLs for avatar images to work with Angular proxy ([5c9590f](https://github.com/aegisx-platform/aegisx-starter/commit/5c9590f7226f400bd15b64e09ff528c0067c4cc8))
- use unique email for registration tests to avoid conflicts ([da13d1f](https://github.com/aegisx-platform/aegisx-starter/commit/da13d1f8157b7c3500de7893708cfd84be3a178c))

### Code Refactoring

- optimize GitHub workflows for 64% performance improvement ([de8b867](https://github.com/aegisx-platform/aegisx-starter/commit/de8b867e633645febe0cda2909c102e8ff75cf9d))
- remove pgAdmin from Docker Compose files and documentation ([6991eb8](https://github.com/aegisx-platform/aegisx-starter/commit/6991eb86fa920a32c81a0f57380ae1b3eb642e04))

### Features

- add admin app - third Angular application for administration panel ([68fe0d9](https://github.com/aegisx-platform/aegisx-starter/commit/68fe0d948f4da83ede821202d8ed535756ab5d1d))
- add alignment-checker agent for frontend-backend synchronization ([384286f](https://github.com/aegisx-platform/aegisx-starter/commit/384286fa4b5a2f5101d33ad4d5cd4191fe00a38a))
- add Angular and UI/UX expert agents ([2062c90](https://github.com/aegisx-platform/aegisx-starter/commit/2062c905e36037404caa265153bc76738628afb4))
- add authentication infrastructure to web app ([3a08b33](https://github.com/aegisx-platform/aegisx-starter/commit/3a08b3397f712d6b92149b6c763eb9e1bdefa91a))
- add avatar display system with comprehensive testing ([a5dc839](https://github.com/aegisx-platform/aegisx-starter/commit/a5dc839b3ec88a2d3e23ac5b696604c7136c4345))
- add comprehensive 16-point checklist to prevent all integration issues ([f34cbc4](https://github.com/aegisx-platform/aegisx-starter/commit/f34cbc43d64dbb955b49619ae208221488627d33))
- add docker:ps script for instance-specific container status ([b6177ed](https://github.com/aegisx-platform/aegisx-starter/commit/b6177eda2c34b0dfb73db03a3c04a67ded8cdad1))
- add Feature Development Command Toolkit ([6ab6766](https://github.com/aegisx-platform/aegisx-starter/commit/6ab67666b6abf44b92fd03cee34a74908c336b56))
- add missing RBAC user_roles migration 014 ([6a58246](https://github.com/aegisx-platform/aegisx-starter/commit/6a582460f2bb6d717d767d1115086c03d80c9948))
- add multi-clone development standards and automation scripts ([5fbdaec](https://github.com/aegisx-platform/aegisx-starter/commit/5fbdaece80c3e638848137f30b3881da50d1e0fc))
- add multi-clone development standards and merge Clone 1 work ([e9fdde2](https://github.com/aegisx-platform/aegisx-starter/commit/e9fdde27854c875af470b66cba0d85dd4ffdf6d5))
- add specialized agent configurations and project status ([a977f66](https://github.com/aegisx-platform/aegisx-starter/commit/a977f66596c9f0a7ee9b7c1790a24a5616ea9479))
- **api:** implement backend performance optimizations and security enhancements ([e0acfc2](https://github.com/aegisx-platform/aegisx-starter/commit/e0acfc2163cf7df83becd9eb6d84dfc2b8cb788a))
- **api:** implement Settings API with controller and repository pattern ([2ed15d9](https://github.com/aegisx-platform/aegisx-starter/commit/2ed15d9e21fb0ef1df6adfbddfbb1bdf5f422d8b))
- **ci/cd:** add complete CI/CD pipeline with automated versioning ([5e9c325](https://github.com/aegisx-platform/aegisx-starter/commit/5e9c32539c8892c5d383f3d7ecb63516495100db))
- complete AegisX UI library quality improvements ([69f6ce4](https://github.com/aegisx-platform/aegisx-starter/commit/69f6ce4539817e8f51c72dd0d2d3ea614e3dfe8d))
- complete Angular dynamic ports integration with multi-instance system ([b5b66a6](https://github.com/aegisx-platform/aegisx-starter/commit/b5b66a6e013200c045e53457bad7e24b6b640541))
- complete multi-instance development system with Docker Compose instance files ([9319dec](https://github.com/aegisx-platform/aegisx-starter/commit/9319dec1b4c0d3082b0202ed9ea4ee9862b98cca))
- complete Phase 3.1 Backend Performance & Security audit ([ebb54c8](https://github.com/aegisx-platform/aegisx-starter/commit/ebb54c821c948744fc0061bc3ecfc4e36798723d))
- complete Settings API integration tests and fix response handler ([cceeb35](https://github.com/aegisx-platform/aegisx-starter/commit/cceeb35122dcc89e8ecb236b022480c65218014e))
- complete user profile management system ([dc5146a](https://github.com/aegisx-platform/aegisx-starter/commit/dc5146ad86fb9b9d43eb936f0e1bda8319da32c7))
- complete workflow overhaul with enterprise-grade improvements ([3671a97](https://github.com/aegisx-platform/aegisx-starter/commit/3671a973860810cca9b260b81a53100d8e50a866))
- comprehensive AegisX UI library linting fixes and development standards ([4e6df4d](https://github.com/aegisx-platform/aegisx-starter/commit/4e6df4d3b844b5b7d26d3b0fc1698774fb739766))
- enhance Angular app with UI improvements and authentication docs ([5e0ac2d](https://github.com/aegisx-platform/aegisx-starter/commit/5e0ac2d18ac1d6de8f1f2ff57e0fa71c6b95d7e1))
- enhance GitHub Actions Docker build with staging/production tag strategy ([b86b9aa](https://github.com/aegisx-platform/aegisx-starter/commit/b86b9aa23c172ea41d22527055c4861b7cb7368d))
- enhance UI components and E2E testing infrastructure ([c0531b1](https://github.com/aegisx-platform/aegisx-starter/commit/c0531b173a3403c1237414e059ec26af31a061bf))
- enhance universal standard with database-first approach and prevention checklist ([d0bc87f](https://github.com/aegisx-platform/aegisx-starter/commit/d0bc87f09fd2a83aa251ccc93f1e300958cfe556))
- enhance user profile management with comprehensive features ([8f454c4](https://github.com/aegisx-platform/aegisx-starter/commit/8f454c4306740f841e8e908180d007223e8ac932))
- implement @aegisx/ui library with correct structure ([21f6172](https://github.com/aegisx-platform/aegisx-starter/commit/21f61728b8d0f46d32049eec71a849f3bcc9573c))
- implement auto-release flow with immediate Docker builds ([0ffb858](https://github.com/aegisx-platform/aegisx-starter/commit/0ffb858ec4a8996df6728330a117939fc2eb03eb))
- implement avatar upload component with drag & drop functionality ([5fc6ba1](https://github.com/aegisx-platform/aegisx-starter/commit/5fc6ba1ed5f51a0d44275bdb4287c8147b6bbfc7))
- implement complete authentication system with QA standards ([4b3b7f3](https://github.com/aegisx-platform/aegisx-starter/commit/4b3b7f3d0ed31df3d1ac857eee2c97367ba47fe8))
- implement complete RBAC WebSocket real-time integration system ([4dd189d](https://github.com/aegisx-platform/aegisx-starter/commit/4dd189d17a5287cb2d1a8f3aabd29463da1c0408))
- implement complete Settings feature with frontend-backend integration ([d90b51c](https://github.com/aegisx-platform/aegisx-starter/commit/d90b51cb37694326d646b29c2e028fb54e615ebf))
- implement comprehensive component showcase with Material Design and AegisX UI components ([f0166eb](https://github.com/aegisx-platform/aegisx-starter/commit/f0166ebb2faa6f68bb630a7c8527ba4b11478d56))
- implement comprehensive Feature Development & Multi-Feature Management Standards ([5909c1f](https://github.com/aegisx-platform/aegisx-starter/commit/5909c1f36fee0e83924268288b27d5b210ef8365))
- implement comprehensive monitoring and logging system ([43bae61](https://github.com/aegisx-platform/aegisx-starter/commit/43bae61eb406c7f2038594870cf76761ad7461c3))
- implement comprehensive multi-instance development setup ([8237508](https://github.com/aegisx-platform/aegisx-starter/commit/82375081ebe57af69e7f677c8f3d8e8275e728d7))
- implement comprehensive user activity tracking system ([b443c70](https://github.com/aegisx-platform/aegisx-starter/commit/b443c700c6bb2321aa8851ce6d9fe110d72a8a1f))
- implement Features 1 & 2 with auth refactoring ([c9f716f](https://github.com/aegisx-platform/aegisx-starter/commit/c9f716f1b21c675303d8a65f834309730b7fa2a3))
- implement Features 1 & 2 with complete documentation ([09703dd](https://github.com/aegisx-platform/aegisx-starter/commit/09703dd3cf828a6c634097a5d43d016be219d550))
- implement NavigationService with API integration and fallback support ([ef126b9](https://github.com/aegisx-platform/aegisx-starter/commit/ef126b9b5f52d330c87bb057d1febfa8ab7cf57f))
- implement secure account deletion system ([dc76d99](https://github.com/aegisx-platform/aegisx-starter/commit/dc76d99b533ada3ffee36bec4427bd465cbab440))
- implement Settings API module with comprehensive testing workflow ([aa34692](https://github.com/aegisx-platform/aegisx-starter/commit/aa3469230933880b786b5329399ce72d93c057d4))
- implement user management API module with CRUD endpoints ([7667d3d](https://github.com/aegisx-platform/aegisx-starter/commit/7667d3db1ee2d4fc7960439ff54b89088e50a4c0))
- implement user profile management with direct save functionality ([aa31cf8](https://github.com/aegisx-platform/aegisx-starter/commit/aa31cf8772b0d1ba53174ad5c0c8bbad7341177b))
- improve authentication and user management systems ([bdef5eb](https://github.com/aegisx-platform/aegisx-starter/commit/bdef5eb957cb261028054792a278d98502875dc3))
- initialize component-showcase feature planning ([f13e0fb](https://github.com/aegisx-platform/aegisx-starter/commit/f13e0fb4d9a88a879e54c6f907d645d2fcc892f0))
- initialize user-profile feature planning ([eae5d48](https://github.com/aegisx-platform/aegisx-starter/commit/eae5d483287d851f9457508387220940634d4049))
- integrate component-showcase and protection system into main ([d14461b](https://github.com/aegisx-platform/aegisx-starter/commit/d14461ba44ba1bc738e3d31ed85545b9afa704b9))
- merge component-showcase feature ([35ce651](https://github.com/aegisx-platform/aegisx-starter/commit/35ce6511cbbb39bb02bbe6dfb8c17cd2c587f3ea))
- merge Settings API completion with infrastructure improvements ([842159c](https://github.com/aegisx-platform/aegisx-starter/commit/842159c8a1b05984a616376391dd121eed17492f))
- migrate all modules to TypeBox schemas with complete type safety ([1bfbfcf](https://github.com/aegisx-platform/aegisx-starter/commit/1bfbfcf9313c2053285e078ae487c461f0d06102))
- **navigation:** enhance navigation UI with improved styling and responsiveness ([f932821](https://github.com/aegisx-platform/aegisx-starter/commit/f9328214d02d2b6936fa93ea7fa0c8166967a0d7))
- optimize CI/CD workflow with parallel builds and enhanced monitoring ([07c0865](https://github.com/aegisx-platform/aegisx-starter/commit/07c086510a3071b07a543c493593e8bc427c835c))
- optimize Git hooks for better developer experience ([420855e](https://github.com/aegisx-platform/aegisx-starter/commit/420855e324a691026eb60bf2893e69255e27ede5))
- **protection:** add comprehensive semantic-release protection system ([6093313](https://github.com/aegisx-platform/aegisx-starter/commit/6093313accc3e9e540b3cb06b1033a8e1ea7fd8c))
- replace complex workflows with simple semantic-release approach ([99aece6](https://github.com/aegisx-platform/aegisx-starter/commit/99aece6aa19ff7ac881406b16df056687bbcc958))
- restore component-showcase and semantic-release protection system ([0a86157](https://github.com/aegisx-platform/aegisx-starter/commit/0a861579e6db192340ae81a5f5d9a8037bbaf9ef))
- **settings:** implement complete Settings feature with backend-frontend alignment ([4aa6cfc](https://github.com/aegisx-platform/aegisx-starter/commit/4aa6cfcb43ba330e62b01fb4c8dec67e2cf91db3))
- standardize API response schemas and fix user management ([b43bedb](https://github.com/aegisx-platform/aegisx-starter/commit/b43bedb79caddab092e391a0ba1aebab1cd81078))
- **users:** implement comprehensive bulk operations system ([8caa1a6](https://github.com/aegisx-platform/aegisx-starter/commit/8caa1a6a5fbf3eb149ad1447cdfa551e26cde66a))
- **web:** complete UI integration with @aegisx/ui library ([b0ee842](https://github.com/aegisx-platform/aegisx-starter/commit/b0ee842fc3bef9f070368d7617ee28785358ee76))
- **web:** implement comprehensive frontend features for Clone 2 ([68998d7](https://github.com/aegisx-platform/aegisx-starter/commit/68998d7008c8a0da67014426d0df0c070cc328ff))

### Performance Improvements

- enhance GitHub Actions workflow and Dockerfile integration ([c5045dd](https://github.com/aegisx-platform/aegisx-starter/commit/c5045dd9edb8f6ebb121e7b6651f4e24fe716610))
- major Docker build performance improvements ([3c5c3de](https://github.com/aegisx-platform/aegisx-starter/commit/3c5c3dee75d77485bcdd843257f7d4a29c9e662f))
- optimize CI/CD workflow for faster builds ([fc6efda](https://github.com/aegisx-platform/aegisx-starter/commit/fc6efda30648e93d56d400d56be50779fd9184a2))
- optimize git hooks for faster development workflow ([69ce54e](https://github.com/aegisx-platform/aegisx-starter/commit/69ce54e54b64ee687e16c663c8975fa1a014e490))
- reduce build timeouts for faster feedback ([fd99fec](https://github.com/aegisx-platform/aegisx-starter/commit/fd99fecbc5462bbb08d3e1739a6257b60a0e1aae))
- suppress yarn warnings to speed up Docker builds ([5cb5fa5](https://github.com/aegisx-platform/aegisx-starter/commit/5cb5fa5898880aad30100f9007abae91198bb6dd))

### BREAKING CHANGES

- pgAdmin no longer included in Docker setup, use external client if needed
- Complete CI/CD workflow transformation

🚀 Major Improvements:

- Add semantic-release configuration (.releaserc.json)
- Implement comprehensive security scanning with Trivy
- Add multi-level caching (yarn, node_modules, Docker layers)
- Separate build and deploy jobs for better efficiency
- Add artifact management with proper retention policies
- Implement concurrency control to prevent conflicts

🔧 DevOps Enhancements:

- Visual progress indicators with emojis
- Comprehensive error handling and retries
- Environment-based deployments (staging/production)
- Multi-platform Docker builds (amd64/arm64)
- Build artifact reuse between jobs
- Skip duplicate actions optimization

🛡️ Security & Reliability:

- Vulnerability scanning integration
- Proper permission management (least privilege)
- Health checks for Docker images
- Timeout protection for all jobs
- Graceful failure handling

📊 Monitoring & Observability:

- Detailed workflow summaries
- GitHub Step Summary integration
- Automatic artifact cleanup
- Comprehensive logging

This creates a production-ready CI/CD pipeline with 50%+
performance improvement and enterprise security standards.

- Complete workflow overhaul

* Remove complex ci-cd.yml (600+ lines) with change detection, matrix testing
* Replace with simple release.yml (162 lines) using semantic-release
* Support both main (release) and develop (staging) branches
* Build matrix for api, web, admin apps
* Multi-platform builds (linux/amd64, linux/arm64)
* Clear tagging strategy: latest + version for main, staging-\* for develop

Benefits:

- 75% reduction in workflow complexity
- Standard semantic-release versioning
- Faster builds without unnecessary tests
- Clear separation of staging vs production
- Maintainable and debuggable

* Workflows now use postgres/postgres for all database
  connections instead of mixed credentials

# [1.1.0](https://github.com/aegisx-platform/aegisx-starter/compare/v1.0.12...v1.1.0) (2025-09-15)

### Features

- integrate component-showcase and protection system into main ([7bac204](https://github.com/aegisx-platform/aegisx-starter/commit/7bac20414de1df0d58c77ae1889d3c7afd821d24))
- restore component-showcase and semantic-release protection system ([c2687d7](https://github.com/aegisx-platform/aegisx-starter/commit/c2687d7ae82f82a5e9e76576c32c2d3e6ca72614))

# [1.1.0](https://github.com/aegisx-platform/aegisx-starter/compare/v1.0.12...v1.1.0) (2025-09-15)

### Features

- integrate component-showcase and protection system into main ([7bac204](https://github.com/aegisx-platform/aegisx-starter/commit/7bac20414de1df0d58c77ae1889d3c7afd821d24))
- restore component-showcase and semantic-release protection system ([c2687d7](https://github.com/aegisx-platform/aegisx-starter/commit/c2687d7ae82f82a5e9e76576c32c2d3e6ca72614))

## [1.0.12](https://github.com/aegisx-platform/aegisx-starter/compare/v1.0.11...v1.0.12) (2025-09-15)

### Bug Fixes

- clean up v2.x.x releases and restore clean v1.0.11 state ([c852c58](https://github.com/aegisx-platform/aegisx-starter/commit/c852c5814b639549468ae432c6d9332767129d33))

# Changelog

## [1.0.11](https://github.com/aegisx-platform/aegisx-starter/compare/v1.0.10...v1.0.11) (2025-09-15)

### Features

- Complete user activity tracking and profile management system
- Multi-instance development environment with automatic port assignment
- Enhanced authentication with systematic token management
- Avatar upload and display functionality
- Settings management with backend-frontend integration

### Bug Fixes

- Resolve authentication and navigation optimization issues
- Fix multipart form data validation for avatar uploads
- Improve API endpoint integration and error handling

## [Unreleased]

### Features

- **auth**: Enhanced authentication system with systematic token management
  - Systematic token refresh with proactive refresh strategy
  - Enhanced auth interceptor with proper 401 handling and retry logic
  - Improved route guards with proper async state waiting
  - Added loading states using Angular Signals for better UX

- **multi-instance**: Add comprehensive multi-instance development setup
  - Folder-based automatic port assignment and container naming
  - Auto-generated .env.local and docker-compose.override.yml files
  - Port registry system with conflict detection
  - Instance management commands (list, stop, cleanup)
  - Complete isolation between development instances
  - Hash-based consistent port calculation
  - One-command setup workflow with `pnpm setup`

### Developer Experience

- **setup**: Add setup-env.sh script for automatic environment configuration
- **management**: Add port-manager.sh for instance lifecycle management
- **documentation**: Add comprehensive multi-instance development guide
- **git**: Auto-exclude generated files (.env.local, docker-compose.override.yml)
- **workflow**: Update package.json scripts for streamlined setup process

### Documentation

- **guides**: Add multi-instance setup guide with troubleshooting
- **reference**: Add quick command reference for multi-instance workflow
- **examples**: Add port assignment examples and usage patterns

## [1.0.10](https://github.com/aegisx-platform/aegisx-starter/compare/v1.0.9...v1.0.10) (2025-09-12)

### Bug Fixes

- force complete Docker cache clear to resolve nginx validation issues ([34cf95e](https://github.com/aegisx-platform/aegisx-starter/commit/34cf95e9d000d51b33a4af0723f986326c673a00))

## [1.0.9](https://github.com/aegisx-platform/aegisx-starter/compare/v1.0.8...v1.0.9) (2025-09-12)

### Bug Fixes

- remove github workflow ([5bc00a4](https://github.com/aegisx-platform/aegisx-starter/commit/5bc00a47ab3d6ecc43598c7570f78f621d310df7))

## [1.0.8](https://github.com/aegisx-platform/aegisx-starter/compare/v1.0.7...v1.0.8) (2025-09-12)

### Bug Fixes

- remove must-revalidate from ssl setup script nginx config template ([d39f422](https://github.com/aegisx-platform/aegisx-starter/commit/d39f4220cbc3bfa1b702334ecb86e98f9aef9fca))

## [1.0.7](https://github.com/aegisx-platform/aegisx-starter/compare/v1.0.6...v1.0.7) (2025-09-12)

### Bug Fixes

- force nginx config refresh with content changes ([c20891c](https://github.com/aegisx-platform/aegisx-starter/commit/c20891c45f0083b7f40b96b94ffbdd3e99f480d0))

## [1.0.6](https://github.com/aegisx-platform/aegisx-starter/compare/v1.0.5...v1.0.6) (2025-09-12)

### Bug Fixes

- remove must-revalidate from Cache-Control headers in nginx configs ([54d94f4](https://github.com/aegisx-platform/aegisx-starter/commit/54d94f4ff081bfc64e03fbd0b113edfad9fbd6a2))

## [1.0.5](https://github.com/aegisx-platform/aegisx-starter/compare/v1.0.4...v1.0.5) (2025-09-12)

### Bug Fixes

- **dockerfile:** add space ([1067e61](https://github.com/aegisx-platform/aegisx-starter/commit/1067e611f5d713245e11125566227821c4a2d419))

## [1.0.4](https://github.com/aegisx-platform/aegisx-starter/compare/v1.0.3...v1.0.4) (2025-09-12)

### Bug Fixes

- force nginx config refresh for Docker builds ([041d383](https://github.com/aegisx-platform/aegisx-starter/commit/041d3838184c9d40998f737b0fce7250b1430073))

## [1.0.3](https://github.com/aegisx-platform/aegisx-starter/compare/v1.0.2...v1.0.3) (2025-09-12)

### Bug Fixes

- force Docker image pulls and ensure clean nginx configs ([7056b6d](https://github.com/aegisx-platform/aegisx-starter/commit/7056b6d553598209d9344f18c1aea7ad33607bad))

## [1.0.2](https://github.com/aegisx-platform/aegisx-starter/compare/v1.0.1...v1.0.2) (2025-09-12)

### Bug Fixes

- add no-cache flag to all Docker builds to force fresh nginx configs ([ab6bf56](https://github.com/aegisx-platform/aegisx-starter/commit/ab6bf56246cd32d757f481045cf9a22a928a1200))
- resolve nginx configuration errors and update to pnpm ([7717b13](https://github.com/aegisx-platform/aegisx-starter/commit/7717b139c7770bc91101914c5542a5ea50b1a50f))

## [1.0.1](https://github.com/aegisx-platform/aegisx-starter/compare/v1.0.0...v1.0.1) (2025-09-12)

### Bug Fixes

- remove invalid must-revalidate from nginx gzip_proxied directive ([afc433b](https://github.com/aegisx-platform/aegisx-starter/commit/afc433b796e450d02a3498a495d220851615f4fd))

# 1.0.0 (2025-09-12)

### Bug Fixes

- add /api prefix to user management routes ([d2bca32](https://github.com/aegisx-platform/aegisx-starter/commit/d2bca32d4051945c468dfb923624330382c0e09d))
- add reflect-metadata import for tsyringe dependency injection ([9e4a899](https://github.com/aegisx-platform/aegisx-starter/commit/9e4a8996a6f411682c4b3b2fe8da60fa265dbdba))
- remove tsyringe dependency injection from users module ([d975e6d](https://github.com/aegisx-platform/aegisx-starter/commit/d975e6d0639af0fdf93d3cf8c3c78d7cd619888f))
- resolve CORS, monitoring endpoints, and user creation issues ([6b82c68](https://github.com/aegisx-platform/aegisx-starter/commit/6b82c6873468254f838affb4bfcdee2ae7752249))
- standardize API response schemas and fix user management ([1126a8c](https://github.com/aegisx-platform/aegisx-starter/commit/1126a8c3a2ecfa6b8192fd9adb06d5b0336b8a4f))
