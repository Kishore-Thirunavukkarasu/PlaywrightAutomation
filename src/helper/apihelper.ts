import request from "supertest";
import jsonwtoken from "jsonwebtoken";
import apidata from "../../data/testData.json";
const CryptoJS = require('crypto-js');
import { AES } from 'crypto-js';



async function getsimple(site: string, path: string) {
    let res = await request(site)
        .get(path)
    // console.log(`>>>>>>>> Res: ${JSON.stringify(res)}`);
    return res;
}

async function getquery(site: string, path: string, queryparam: string, queryvalue: string) {
    let res = await request(site)
        .get(path)
        .set('Content-Type', 'application/json')
        .query({ queryparam: queryvalue })
    // console.log(`>>>>>>>> getqueryRes: ${JSON.stringify(res)}`);
    return res;
}

// create a function to get data with authorization token and return the response
async function getwithauthtoken(site: string, path: string, authtoken: string) {
    let res = await request(site).get(path).set('Authorization', authtoken)
    return res;

}

//create a function to get data with authorization token and query and return the response
async function getwithauthtokenwithquery(site: string, path: string, queryparam: string, queryvalue: string, authtoken: string) {
    // let res = await request(site).get(path).set('Content-Type', 'application/json').query({ queryparam: queryvalue }).auth(authtoken, { type: 'bearer' })
    //let res = await request(site).get(path).set('Authorization', authtoken).query({ [queryparam]: queryvalue })
    let res = await request(site).get(path + "?q={" + `"${queryparam}"` + ":" + `"${queryvalue}"` + "}").set('Authorization', authtoken)
    // console.log(`>>>>>>>> getwithbearertoken Res: ${JSON.stringify(res)}`);
    return res;
}

// create a function to post data with bearer token and json body and return the response
async function postwithbearertoken(site: string, path: string, body: string, authtoken: string) {
    let res = await request(site).post(path).set('Content-Type', 'application/json').send(body).auth(authtoken, { type: 'bearer' })
    // console.log(`>>>>>>>> postwithtoken Res: ${JSON.stringify(res)}`);
    return res;
}

async function postsimple(site: string, path: string, body: string) {
    let res = await request(site).post(path).set('Content-Type', 'application/json').set('User-Agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.3').send(body)
    return res;
}

async function postwithtenantid(site: string, path: string, tenantid: string, body: string) {
    let res = await request(site).post(path).set('Content-Type', 'application/json').set('User-Agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.3').set("tenantId", tenantid).send(body)
    return res;
}

// create a function to post data with authorization token and json body and return the response
async function postwithauthtoken(site: string, path: string, body: string, authtoken: string) {
    let res;
    if (body == "") {
        res = await request(site).post(path).set('Content-Type', 'application/json').set('Authorization', authtoken)
    } else {
        res = await request(site).post(path).set('Content-Type', 'application/json').send(body).set('Authorization', authtoken)
    }
    //console.log(`>>>>>>>> postwithauthtoken Res: ${JSON.stringify(res)}`);
    return res;
}

async function postwithauthtokenwithheader(site: string, path: string, body: string, authtoken: string, header: string, headervalue: string) {
    let res;
    if (body == "") {
        res = await request(site).post(path).set(header, headervalue).set('Authorization', authtoken);
    } else {
        res = await request(site).post(path).set('Content-Type', 'application/json').set(header, headervalue).send(body).set('Authorization', authtoken);
    }
    // console.log(`>>>>>>>> postwithauthtoken Res: ${JSON.stringify(res)}`);
    return res;
}

// create a function to put data with authorization token and json body and return the response
async function putwithauthtoken(site: string, path: string, body: string, authtoken: string) {
    let res = await request(site).put(path).set('Content-Type', 'application/json').send(body).set('Authorization', authtoken)
    // console.log(`>>>>>>>> putwithauthtoken Res: ${JSON.stringify(res)}`);
    return res;
}

// create a function to delete data with authorization token and path param and return the response
async function deletewithauthtoken(site: string, path: string, authtoken: string) {
    let res = await request(site).delete(path).set('Authorization', authtoken)
    //console.log(`>>>>>>>> deletewithauthtoken Res: ${JSON.stringify(res)}`);
    return res;
}

async function createjwttoken(body: string, privatetoken: string) {
    var token = jsonwtoken.sign(body, privatetoken, { algorithm: "HS256" });
    return token;
}

async function AESEncryptor(password: string) {
    // const iv = crypto.randomBytes(16);
    // const cipher = crypto.createCipheriv('aes-128-ecb', Buffer.from(await apidata.admin.encryptionKey), iv);
    // let encrypted = cipher.update(password, 'utf8', 'hex');
    // encrypted += cipher.final('hex');
    // return iv.toString('hex') + encrypted;
    let key = CryptoJS.enc.Utf8.parse(apidata.admin.encryptionKey);
    let encrypted = AES.encrypt(password, key, { mode: CryptoJS.mode.ECB, padding: CryptoJS.pad.Pkcs7, }).toString();
    console.log(`>>>>>>>> Encrypted: ${encrypted}`);


    // const decipher = crypto.createDecipheriv(
    //     'aes-128-ecb',
    //     process.env.LOGIN_ENCRYPTION,
    //     Buffer.alloc(0)
    // );
    // let decrypted = decipher.update(encrypted, 'base64', 'utf8');
    // decrypted += decipher.final('utf8');
    // req.body.password = decrypted;
    // const options = { payload: req.body };


    return encrypted;
}

// const decipher = crypto.createDecipheriv(
//     'aes-128-ecb',
//     process.env.LOGIN_ENCRYPTION,
//     Buffer.alloc(0)
// );
// let decrypted = decipher.update(req.body.password, 'base64', 'utf8');
// decrypted += decipher.final('utf8');
// req.body.password = decrypted;
// const options = { payload: req.body };

// const CryptoJS = require('crypto-js');
// const key = CryptoJS.enc.Utf8.parse(environment.loginSecret);
// const encrypted = AES.encrypt(data.password, key, { mode: CryptoJS.mode.ECB, padding: CryptoJS.pad.Pkcs7, }).toString();
// data.email = data.email.trim(); //Remove the whitespace.    data.password = encrypted;

export default { postwithtenantid, postsimple, AESEncryptor, getsimple, getquery, getwithauthtoken, getwithauthtokenwithquery, postwithauthtoken, postwithbearertoken, putwithauthtoken, deletewithauthtoken, createjwttoken, postwithauthtokenwithheader }
