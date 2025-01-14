<!-- Generated with Stardoc: http://skydoc.bazel.build -->

API for running the SWC cli under Bazel

The simplest usage relies on the `swcrc` attribute automatically discovering `.swcrc`:

```starlark
load("@aspect_rules_swc//swc:defs.bzl", "swc")

swc(
    name = "compile",
    srcs = ["file.ts"],
)
```


<a id="swc_compile"></a>

## swc_compile

<pre>
swc_compile(<a href="#swc_compile-name">name</a>, <a href="#swc_compile-args">args</a>, <a href="#swc_compile-data">data</a>, <a href="#swc_compile-js_outs">js_outs</a>, <a href="#swc_compile-map_outs">map_outs</a>, <a href="#swc_compile-out_dir">out_dir</a>, <a href="#swc_compile-output_dir">output_dir</a>, <a href="#swc_compile-plugins">plugins</a>, <a href="#swc_compile-root_dir">root_dir</a>,
            <a href="#swc_compile-source_maps">source_maps</a>, <a href="#swc_compile-source_root">source_root</a>, <a href="#swc_compile-srcs">srcs</a>, <a href="#swc_compile-swcrc">swcrc</a>)
</pre>

Underlying rule for the `swc` macro.

Most users should use [swc](#swc) instead, as it predicts the output files
and has convenient default values.

Use this if you need more control over how the rule is called,
for example to set your own output labels for `js_outs`.


**ATTRIBUTES**


| Name  | Description | Type | Mandatory | Default |
| :------------- | :------------- | :------------- | :------------- | :------------- |
| <a id="swc_compile-name"></a>name |  A unique name for this target.   | <a href="https://bazel.build/concepts/labels#target-names">Name</a> | required |  |
| <a id="swc_compile-args"></a>args |  Additional arguments to pass to swcx cli (NOT swc!).<br><br>        NB: this is not the same as the CLI arguments for @swc/cli npm package.         For performance, rules_swc does not call a Node.js program wrapping the swc rust binding.         Instead, we directly spawn the (somewhat experimental) native Rust binary shipped inside the         @swc/core npm package, which the swc project calls "swcx"         Tracking issue for feature parity: https://github.com/swc-project/swc/issues/4017   | List of strings | optional | <code>[]</code> |
| <a id="swc_compile-data"></a>data |  Runtime dependencies to include in binaries/tests that depend on this target.<br><br>    The transitive npm dependencies, transitive sources, default outputs and runfiles of targets in the <code>data</code> attribute     are added to the runfiles of this target. They should appear in the '*.runfiles' area of any executable which has     a runtime dependency on this target.<br><br>    If this list contains linked npm packages, npm package store targets or other targets that provide <code>JsInfo</code>, <code>NpmPackageStoreInfo</code> providers are gathered from <code>JsInfo</code>. This is done directly from the <code>npm_package_store_deps</code> field of these. For linked npm package targets, the underlying <code>npm_package_store</code> target(s) that back the links is used. Gathered <code>NpmPackageStoreInfo</code> providers are propagated to the direct dependencies of downstream linked <code>npm_package</code> targets.<br><br>NB: Linked npm package targets that are "dev" dependencies do not forward their underlying <code>npm_package_store</code> target(s) through <code>npm_package_store_deps</code> and will therefore not be propagated to the direct dependencies of downstream linked <code>npm_package</code> targets. npm packages that come in from <code>npm_translate_lock</code> are considered "dev" dependencies if they are have <code>dev: true</code> set in the pnpm lock file. This should be all packages that are only listed as "devDependencies" in all <code>package.json</code> files within the pnpm workspace. This behavior is intentional to mimic how <code>devDependencies</code> work in published npm packages.   | <a href="https://bazel.build/concepts/labels">List of labels</a> | optional | <code>[]</code> |
| <a id="swc_compile-js_outs"></a>js_outs |  list of expected JavaScript output files.<br><br>There should be one for each entry in srcs.   | List of labels | optional |  |
| <a id="swc_compile-map_outs"></a>map_outs |  list of expected source map output files.<br><br>Can be empty, meaning no source maps should be produced. If non-empty, there should be one for each entry in srcs.   | List of labels | optional |  |
| <a id="swc_compile-out_dir"></a>out_dir |  With output_dir=False, output files will have this directory prefix.<br><br>        With output_dir=True, this is the name of the output directory.   | String | optional | <code>""</code> |
| <a id="swc_compile-output_dir"></a>output_dir |  Whether to produce a directory output rather than individual files.<br><br>        If out_dir is also specified, it is used as the name of the output directory.         Otherwise, the directory is named the same as the target.   | Boolean | optional | <code>False</code> |
| <a id="swc_compile-plugins"></a>plugins |  swc compilation plugins, created with swc_plugin rule   | <a href="https://bazel.build/concepts/labels">List of labels</a> | optional | <code>[]</code> |
| <a id="swc_compile-root_dir"></a>root_dir |  a subdirectory under the input package which should be consider the root directory of all the input files   | String | optional | <code>""</code> |
| <a id="swc_compile-source_maps"></a>source_maps |  Create source map files for emitted JavaScript files.<br><br>        see https://swc.rs/docs/usage/cli#--source-maps--s   | String | optional | <code>"false"</code> |
| <a id="swc_compile-source_root"></a>source_root |  Specify the root path for debuggers to find the reference source code.<br><br>        see https://swc.rs/docs/usage/cli#--source-root<br><br>        If not set, then the directory containing the source file is used.   | String | optional | <code>""</code> |
| <a id="swc_compile-srcs"></a>srcs |  source files, typically .ts files in the source tree   | <a href="https://bazel.build/concepts/labels">List of labels</a> | required |  |
| <a id="swc_compile-swcrc"></a>swcrc |  label of a configuration file for swc, see https://swc.rs/docs/configuration/swcrc   | <a href="https://bazel.build/concepts/labels">Label</a> | optional | <code>None</code> |


<a id="swc"></a>

## swc

<pre>
swc(<a href="#swc-name">name</a>, <a href="#swc-srcs">srcs</a>, <a href="#swc-args">args</a>, <a href="#swc-data">data</a>, <a href="#swc-plugins">plugins</a>, <a href="#swc-output_dir">output_dir</a>, <a href="#swc-swcrc">swcrc</a>, <a href="#swc-source_maps">source_maps</a>, <a href="#swc-out_dir">out_dir</a>, <a href="#swc-root_dir">root_dir</a>, <a href="#swc-kwargs">kwargs</a>)
</pre>

Execute the SWC compiler

**PARAMETERS**


| Name  | Description | Default Value |
| :------------- | :------------- | :------------- |
| <a id="swc-name"></a>name |  A name for this target   |  none |
| <a id="swc-srcs"></a>srcs |  List of labels of TypeScript source files.   |  none |
| <a id="swc-args"></a>args |  Additional options to pass to <code>swcx</code> cli, see https://github.com/swc-project/swc/discussions/3859 Note: we do **not** run the [NodeJS wrapper <code>@swc/cli</code>](https://swc.rs/docs/usage/cli)   |  <code>[]</code> |
| <a id="swc-data"></a>data |  Files needed at runtime by binaries or tests that transitively depend on this target. See https://bazel.build/reference/be/common-definitions#typical-attributes   |  <code>[]</code> |
| <a id="swc-plugins"></a>plugins |  List of plugin labels created with <code>swc_plugin</code>.   |  <code>[]</code> |
| <a id="swc-output_dir"></a>output_dir |  Whether to produce a directory output rather than individual files.<br><br>If <code>out_dir</code> is set, then that is used as the name of the output directory. Otherwise, the output directory is named the same as the target.   |  <code>False</code> |
| <a id="swc-swcrc"></a>swcrc |  Label of a .swcrc configuration file for the SWC cli, see https://swc.rs/docs/configuration/swcrc Instead of a label, you can pass a dictionary matching the JSON schema. If this attribute isn't specified, and a file <code>.swcrc</code> exists in the same folder as this rule, it is used.<br><br>Note that some settings in <code>.swcrc</code> also appear in <code>tsconfig.json</code>. See the notes in [/docs/tsconfig.md].   |  <code>None</code> |
| <a id="swc-source_maps"></a>source_maps |  If set, the --source-maps argument is passed to the SWC cli with the value. See https://swc.rs/docs/usage/cli#--source-maps--s. True/False are automaticaly converted to "true"/"false" string values the cli expects.   |  <code>False</code> |
| <a id="swc-out_dir"></a>out_dir |  The base directory for output files relative to the output directory for this package.<br><br>If output_dir is True, then this is used as the name of the output directory.   |  <code>None</code> |
| <a id="swc-root_dir"></a>root_dir |  A subdirectory under the input package which should be considered the root directory of all the input files   |  <code>None</code> |
| <a id="swc-kwargs"></a>kwargs |  additional keyword arguments passed through to underlying [<code>swc_compile</code>](#swc_compile), eg. <code>visibility</code>, <code>tags</code>   |  none |


<a id="swc_plugin"></a>

## swc_plugin

<pre>
swc_plugin(<a href="#swc_plugin-name">name</a>, <a href="#swc_plugin-src">src</a>, <a href="#swc_plugin-config">config</a>, <a href="#swc_plugin-kwargs">kwargs</a>)
</pre>

Configure an SWC plugin

**PARAMETERS**


| Name  | Description | Default Value |
| :------------- | :------------- | :------------- |
| <a id="swc_plugin-name"></a>name |  A name for this target   |  none |
| <a id="swc_plugin-src"></a>src |  Label for the plugin, either a directory containing a package.json pointing at a wasm file as the main entrypoint, or a wasm file. Usually a linked npm package target via rules_js.   |  <code>None</code> |
| <a id="swc_plugin-config"></a>config |  Optional configuration dict for the plugin. This is passed as a JSON object into the <code>jsc.experimental.plugins</code> entry for the plugin.   |  <code>{}</code> |
| <a id="swc_plugin-kwargs"></a>kwargs |  additional keyword arguments passed through to underlying rule, eg. <code>visibility</code>, <code>tags</code>   |  none |


