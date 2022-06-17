"@generated by @aspect_rules_js//npm/private:npm_translate_lock.bzl from pnpm lock file @aspect_rules_swc@aspect_rules_swc//swc:pnpm-lock.yaml"

load("@aspect_rules_js//npm:npm_import.bzl", "npm_import")

def npm_repositories():
    "Generated npm_import repository rules corresponding to npm packages in @aspect_rules_swc@aspect_rules_swc//swc:pnpm-lock.yaml"
    npm_import(
        name = "swc_cli__at_nodelib_fs.scandir__2.1.5",
        root_package = "swc",
        link_workspace = "aspect_rules_swc",
        link_packages = {},
        package = "@nodelib/fs.scandir",
        version = "2.1.5",
        integrity = "sha512-vq24Bq3ym5HEQm2NKCr3yXDwjc7vTsEThRDnkp2DK9p1uqLR+DHurm/NOTo0KG7HYHU7eppKZj3MyqYuMBf62g==",
        deps = {
            "@nodelib/fs.stat": "2.0.5",
            "run-parallel": "1.2.0",
        },
        transitive_closure = {
            "@nodelib/fs.scandir": ["2.1.5"],
            "@nodelib/fs.stat": ["2.0.5"],
            "run-parallel": ["1.2.0"],
            "queue-microtask": ["1.2.3"],
        },
    )

    npm_import(
        name = "swc_cli__at_nodelib_fs.stat__2.0.5",
        root_package = "swc",
        link_workspace = "aspect_rules_swc",
        link_packages = {},
        package = "@nodelib/fs.stat",
        version = "2.0.5",
        integrity = "sha512-RkhPPp2zrqDAQA/2jNhnztcPAlv64XdhIp7a7454A5ovI7Bukxgt7MX7udwAu3zg1DcpPU0rz3VV1SeaqvY4+A==",
        transitive_closure = {
            "@nodelib/fs.stat": ["2.0.5"],
        },
    )

    npm_import(
        name = "swc_cli__at_nodelib_fs.walk__1.2.8",
        root_package = "swc",
        link_workspace = "aspect_rules_swc",
        link_packages = {},
        package = "@nodelib/fs.walk",
        version = "1.2.8",
        integrity = "sha512-oGB+UxlgWcgQkgwo8GcEGwemoTFt3FIO9ababBmaGwXIoBKZ+GTy0pP185beGg7Llih/NSHSV2XAs1lnznocSg==",
        deps = {
            "@nodelib/fs.scandir": "2.1.5",
            "fastq": "1.13.0",
        },
        transitive_closure = {
            "@nodelib/fs.walk": ["1.2.8"],
            "@nodelib/fs.scandir": ["2.1.5"],
            "fastq": ["1.13.0"],
            "reusify": ["1.0.4"],
            "@nodelib/fs.stat": ["2.0.5"],
            "run-parallel": ["1.2.0"],
            "queue-microtask": ["1.2.3"],
        },
    )

    npm_import(
        name = "swc_cli__at_swc_cli__0.1.57",
        root_package = "swc",
        link_workspace = "aspect_rules_swc",
        link_packages = {
            "swc": ["@swc/cli"],
        },
        package = "@swc/cli",
        version = "0.1.57",
        integrity = "sha512-HxM8TqYHhAg+zp7+RdTU69bnkl4MWdt1ygyp6BDIPjTiaJVH6Dizn2ezbgDS8mnFZI1FyhKvxU/bbaUs8XhzQg==",
        deps = {
            "commander": "7.2.0",
            "fast-glob": "3.2.11",
            "slash": "3.0.0",
            "source-map": "0.7.3",
        },
        transitive_closure = {
            "@swc/cli": ["0.1.57"],
            "commander": ["7.2.0"],
            "fast-glob": ["3.2.11"],
            "slash": ["3.0.0"],
            "source-map": ["0.7.3"],
            "@nodelib/fs.stat": ["2.0.5"],
            "@nodelib/fs.walk": ["1.2.8"],
            "glob-parent": ["5.1.2"],
            "merge2": ["1.4.1"],
            "micromatch": ["4.0.5"],
            "braces": ["3.0.2"],
            "picomatch": ["2.3.1"],
            "fill-range": ["7.0.1"],
            "to-regex-range": ["5.0.1"],
            "is-number": ["7.0.0"],
            "is-glob": ["4.0.3"],
            "is-extglob": ["2.1.1"],
            "@nodelib/fs.scandir": ["2.1.5"],
            "fastq": ["1.13.0"],
            "reusify": ["1.0.4"],
            "run-parallel": ["1.2.0"],
            "queue-microtask": ["1.2.3"],
        },
    )

    npm_import(
        name = "swc_cli__braces__3.0.2",
        root_package = "swc",
        link_workspace = "aspect_rules_swc",
        link_packages = {},
        package = "braces",
        version = "3.0.2",
        integrity = "sha512-b8um+L1RzM3WDSzvhm6gIz1yfTbBt6YTlcEKAvsmqCZZFw46z626lVj9j1yEPW33H5H+lBQpZMP1k8l+78Ha0A==",
        deps = {
            "fill-range": "7.0.1",
        },
        transitive_closure = {
            "braces": ["3.0.2"],
            "fill-range": ["7.0.1"],
            "to-regex-range": ["5.0.1"],
            "is-number": ["7.0.0"],
        },
    )

    npm_import(
        name = "swc_cli__commander__7.2.0",
        root_package = "swc",
        link_workspace = "aspect_rules_swc",
        link_packages = {},
        package = "commander",
        version = "7.2.0",
        integrity = "sha512-QrWXB+ZQSVPmIWIhtEO9H+gwHaMGYiF5ChvoJ+K9ZGHG/sVsa6yiesAD1GC/x46sET00Xlwo1u49RVVVzvcSkw==",
        transitive_closure = {
            "commander": ["7.2.0"],
        },
    )

    npm_import(
        name = "swc_cli__fast-glob__3.2.11",
        root_package = "swc",
        link_workspace = "aspect_rules_swc",
        link_packages = {},
        package = "fast-glob",
        version = "3.2.11",
        integrity = "sha512-xrO3+1bxSo3ZVHAnqzyuewYT6aMFHRAd4Kcs92MAonjwQZLsK9d0SF1IyQ3k5PoirxTW0Oe/RqFgMQ6TcNE5Ew==",
        deps = {
            "@nodelib/fs.stat": "2.0.5",
            "@nodelib/fs.walk": "1.2.8",
            "glob-parent": "5.1.2",
            "merge2": "1.4.1",
            "micromatch": "4.0.5",
        },
        transitive_closure = {
            "fast-glob": ["3.2.11"],
            "@nodelib/fs.stat": ["2.0.5"],
            "@nodelib/fs.walk": ["1.2.8"],
            "glob-parent": ["5.1.2"],
            "merge2": ["1.4.1"],
            "micromatch": ["4.0.5"],
            "braces": ["3.0.2"],
            "picomatch": ["2.3.1"],
            "fill-range": ["7.0.1"],
            "to-regex-range": ["5.0.1"],
            "is-number": ["7.0.0"],
            "is-glob": ["4.0.3"],
            "is-extglob": ["2.1.1"],
            "@nodelib/fs.scandir": ["2.1.5"],
            "fastq": ["1.13.0"],
            "reusify": ["1.0.4"],
            "run-parallel": ["1.2.0"],
            "queue-microtask": ["1.2.3"],
        },
    )

    npm_import(
        name = "swc_cli__fastq__1.13.0",
        root_package = "swc",
        link_workspace = "aspect_rules_swc",
        link_packages = {},
        package = "fastq",
        version = "1.13.0",
        integrity = "sha512-YpkpUnK8od0o1hmeSc7UUs/eB/vIPWJYjKck2QKIzAf71Vm1AAQ3EbuZB3g2JIy+pg+ERD0vqI79KyZiB2e2Nw==",
        deps = {
            "reusify": "1.0.4",
        },
        transitive_closure = {
            "fastq": ["1.13.0"],
            "reusify": ["1.0.4"],
        },
    )

    npm_import(
        name = "swc_cli__fill-range__7.0.1",
        root_package = "swc",
        link_workspace = "aspect_rules_swc",
        link_packages = {},
        package = "fill-range",
        version = "7.0.1",
        integrity = "sha512-qOo9F+dMUmC2Lcb4BbVvnKJxTPjCm+RRpe4gDuGrzkL7mEVl/djYSu2OdQ2Pa302N4oqkSg9ir6jaLWJ2USVpQ==",
        deps = {
            "to-regex-range": "5.0.1",
        },
        transitive_closure = {
            "fill-range": ["7.0.1"],
            "to-regex-range": ["5.0.1"],
            "is-number": ["7.0.0"],
        },
    )

    npm_import(
        name = "swc_cli__glob-parent__5.1.2",
        root_package = "swc",
        link_workspace = "aspect_rules_swc",
        link_packages = {},
        package = "glob-parent",
        version = "5.1.2",
        integrity = "sha512-AOIgSQCepiJYwP3ARnGx+5VnTu2HBYdzbGP45eLw1vr3zB3vZLeyed1sC9hnbcOc9/SrMyM5RPQrkGz4aS9Zow==",
        deps = {
            "is-glob": "4.0.3",
        },
        transitive_closure = {
            "glob-parent": ["5.1.2"],
            "is-glob": ["4.0.3"],
            "is-extglob": ["2.1.1"],
        },
    )

    npm_import(
        name = "swc_cli__is-extglob__2.1.1",
        root_package = "swc",
        link_workspace = "aspect_rules_swc",
        link_packages = {},
        package = "is-extglob",
        version = "2.1.1",
        integrity = "sha1-qIwCU1eR8C7TfHahueqXc8gz+MI=",
        transitive_closure = {
            "is-extglob": ["2.1.1"],
        },
    )

    npm_import(
        name = "swc_cli__is-glob__4.0.3",
        root_package = "swc",
        link_workspace = "aspect_rules_swc",
        link_packages = {},
        package = "is-glob",
        version = "4.0.3",
        integrity = "sha512-xelSayHH36ZgE7ZWhli7pW34hNbNl8Ojv5KVmkJD4hBdD3th8Tfk9vYasLM+mXWOZhFkgZfxhLSnrwRr4elSSg==",
        deps = {
            "is-extglob": "2.1.1",
        },
        transitive_closure = {
            "is-glob": ["4.0.3"],
            "is-extglob": ["2.1.1"],
        },
    )

    npm_import(
        name = "swc_cli__is-number__7.0.0",
        root_package = "swc",
        link_workspace = "aspect_rules_swc",
        link_packages = {},
        package = "is-number",
        version = "7.0.0",
        integrity = "sha512-41Cifkg6e8TylSpdtTpeLVMqvSBEVzTttHvERD741+pnZ8ANv0004MRL43QKPDlK9cGvNp6NZWZUBlbGXYxxng==",
        transitive_closure = {
            "is-number": ["7.0.0"],
        },
    )

    npm_import(
        name = "swc_cli__merge2__1.4.1",
        root_package = "swc",
        link_workspace = "aspect_rules_swc",
        link_packages = {},
        package = "merge2",
        version = "1.4.1",
        integrity = "sha512-8q7VEgMJW4J8tcfVPy8g09NcQwZdbwFEqhe/WZkoIzjn/3TGDwtOCYtXGxA3O8tPzpczCCDgv+P2P5y00ZJOOg==",
        transitive_closure = {
            "merge2": ["1.4.1"],
        },
    )

    npm_import(
        name = "swc_cli__micromatch__4.0.5",
        root_package = "swc",
        link_workspace = "aspect_rules_swc",
        link_packages = {},
        package = "micromatch",
        version = "4.0.5",
        integrity = "sha512-DMy+ERcEW2q8Z2Po+WNXuw3c5YaUSFjAO5GsJqfEl7UjvtIuFKO6ZrKvcItdy98dwFI2N1tg3zNIdKaQT+aNdA==",
        deps = {
            "braces": "3.0.2",
            "picomatch": "2.3.1",
        },
        transitive_closure = {
            "micromatch": ["4.0.5"],
            "braces": ["3.0.2"],
            "picomatch": ["2.3.1"],
            "fill-range": ["7.0.1"],
            "to-regex-range": ["5.0.1"],
            "is-number": ["7.0.0"],
        },
    )

    npm_import(
        name = "swc_cli__picomatch__2.3.1",
        root_package = "swc",
        link_workspace = "aspect_rules_swc",
        link_packages = {},
        package = "picomatch",
        version = "2.3.1",
        integrity = "sha512-JU3teHTNjmE2VCGFzuY8EXzCDVwEqB2a8fsIvwaStHhAWJEeVd1o1QD80CU6+ZdEXXSLbSsuLwJjkCBWqRQUVA==",
        transitive_closure = {
            "picomatch": ["2.3.1"],
        },
    )

    npm_import(
        name = "swc_cli__queue-microtask__1.2.3",
        root_package = "swc",
        link_workspace = "aspect_rules_swc",
        link_packages = {},
        package = "queue-microtask",
        version = "1.2.3",
        integrity = "sha512-NuaNSa6flKT5JaSYQzJok04JzTL1CA6aGhv5rfLW3PgqA+M2ChpZQnAC8h8i4ZFkBS8X5RqkDBHA7r4hej3K9A==",
        transitive_closure = {
            "queue-microtask": ["1.2.3"],
        },
    )

    npm_import(
        name = "swc_cli__reusify__1.0.4",
        root_package = "swc",
        link_workspace = "aspect_rules_swc",
        link_packages = {},
        package = "reusify",
        version = "1.0.4",
        integrity = "sha512-U9nH88a3fc/ekCF1l0/UP1IosiuIjyTh7hBvXVMHYgVcfGvt897Xguj2UOLDeI5BG2m7/uwyaLVT6fbtCwTyzw==",
        transitive_closure = {
            "reusify": ["1.0.4"],
        },
    )

    npm_import(
        name = "swc_cli__run-parallel__1.2.0",
        root_package = "swc",
        link_workspace = "aspect_rules_swc",
        link_packages = {},
        package = "run-parallel",
        version = "1.2.0",
        integrity = "sha512-5l4VyZR86LZ/lDxZTR6jqL8AFE2S0IFLMP26AbjsLVADxHdhB/c0GUsH+y39UfCi3dzz8OlQuPmnaJOMoDHQBA==",
        deps = {
            "queue-microtask": "1.2.3",
        },
        transitive_closure = {
            "run-parallel": ["1.2.0"],
            "queue-microtask": ["1.2.3"],
        },
    )

    npm_import(
        name = "swc_cli__slash__3.0.0",
        root_package = "swc",
        link_workspace = "aspect_rules_swc",
        link_packages = {},
        package = "slash",
        version = "3.0.0",
        integrity = "sha512-g9Q1haeby36OSStwb4ntCGGGaKsaVSjQ68fBxoQcutl5fS1vuY18H3wSt3jFyFtrkx+Kz0V1G85A4MyAdDMi2Q==",
        transitive_closure = {
            "slash": ["3.0.0"],
        },
    )

    npm_import(
        name = "swc_cli__source-map__0.7.3",
        root_package = "swc",
        link_workspace = "aspect_rules_swc",
        link_packages = {},
        package = "source-map",
        version = "0.7.3",
        integrity = "sha512-CkCj6giN3S+n9qrYiBTX5gystlENnRW5jZeNLHpe6aue+SrHcG5VYwujhW9s4dY31mEGsxBDrHR6oI69fTXsaQ==",
        transitive_closure = {
            "source-map": ["0.7.3"],
        },
    )

    npm_import(
        name = "swc_cli__to-regex-range__5.0.1",
        root_package = "swc",
        link_workspace = "aspect_rules_swc",
        link_packages = {},
        package = "to-regex-range",
        version = "5.0.1",
        integrity = "sha512-65P7iz6X5yEr1cwcgvQxbbIw7Uk3gOy5dIdtZ4rDveLqhrdJP+Li/Hx6tyK0NEb+2GCyneCMJiGqrADCSNk8sQ==",
        deps = {
            "is-number": "7.0.0",
        },
        transitive_closure = {
            "to-regex-range": ["5.0.1"],
            "is-number": ["7.0.0"],
        },
    )