"use strict";

const fs = require('fs');
const path = require('path');
const { exec } = require('child_process');

const directory = 'test';
const cmd = 'robot ' + path.join(directory, 'testCase01.robot');

fs.readdir(directory, (err, files) => {
    if (err) throw err;

    for (const file of files) {
        const spl = file.split('.');
        if (spl[1] === 'log') {
            fs.unlink(path.join(directory, file), err => {
                if (err) throw err;
            });
        }
    }
});

fs.readdir('./', (err, files) => {
    if (err) throw err;

    for (const file of files) {
        const spl = file.split('.');
        if (spl[1] === 'log') {
            fs.unlink(path.join('./', file), err => {
                if (err) throw err;
            });
        }
    }
});

exec(cmd, (error, stdout, stderr) => {
    if (error) {
        console.log(`error: ${error.message}`);
        return;
    }
    if (stderr) {
        console.log(`stderr: ${stderr}`);
        return;
    }
    console.log(`stdout: ${stdout}`);
});