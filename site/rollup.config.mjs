import {nodeResolve} from "@rollup/plugin-node-resolve";
import terser from "@rollup/plugin-terser";
import json from "@rollup/plugin-json";
import commonjs from "@rollup/plugin-commonjs";

const banner =
    "/*!\n" +
    " * Fruitcake Website Scripts\n" +
    " *\n" +
    " * Copyright 2025 Fruitcake W+P AG, Münsingen\n" +
    " * https://fruitcake.ch\n" +
    " *\n" +
    " * Uses tiny slider 2\n" +
    " * https://github.com/ganlanyuan/tiny-slider\n" +
    " */\n";

const production = process.env.MINIFY === 'on';

const plugins = [
    commonjs(),
    nodeResolve(),
    json(),
];

if (production) {
    plugins.push(...[
        terser(),
    ]);
}

const config = [
    {
        input: './templates/scripts/main.mjs',
        output: {
            file: './templates/scripts/main.js',
            format: 'es',
            sourcemap: !production,
            banner,
        },
        plugins
    },
];

// noinspection JSUnusedGlobalSymbols
export default config;
