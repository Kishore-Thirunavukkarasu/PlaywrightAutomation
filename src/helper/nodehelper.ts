// import { CopyDataTask } from "@phoenix/work-flow-engine";
// import { CopyFromS3Task } from "@phoenix/work-flow-engine";

// async function getContextforcopydata(remoteconnection: string, localconnection: string, anotherparam: string, anotherparamvalue: string) {
//   const value = {
//     REMOTE_CONNECTION_STRING: remoteconnection,
//     LOCAL_CONNECTION_STRING: localconnection
//   };
//   return value;
// }

// async function addnewparamtojson(json: any, anotherparam: string, anotherparamvalue: string) {
//   json[anotherparam] = anotherparamvalue;
//   return json;
// }

// async function getcopydatanode(testcaseid, testcasename, type, modelname, filterkey, filtervalue) {
//   await stall();
//   const node = {
//     id: testcaseid,
//     name: testcasename,
//     type: type,
//     props: {
//       rules: [
//         {
//           source: {
//             modelName: modelname,
//             fields: [],
//             filters: [
//               {
//                 key: filterkey,
//                 value: filtervalue,
//                 symbol: "=",
//                 operator: null,
//               },
//             ],
//           },
//         },
//       ],
//     },
//   };

//   return node;
// }

// async function getvalidremoteconnectionstring() {
//   await stall();
//   return "postgres://"+process.env.node_db_user+":"+process.env.node_db_password+"@"+process.env.node_db_host+":"+process.env.node_db_port+"/"+process.env.node_db_name;
//   // let testconnection = "postgres://phoenixdbuser:83Nks5EmGDzD6ZXJAqKxbw7@phoenixdbuser.ct7vhhkh7kx4.eu-west-2.rds.amazonaws.com:5432/1705594868381_TestingCars"
// }

// async function runcopydatanode(remoteconnectionstring: string, key, value: string, nodefromcall) {
//   const connection = {
//     REMOTE_CONNECTION_STRING: remoteconnectionstring,
//     LOCAL_CONNECTION_STRING: "",
//   };
//   connection[key] = value;
//   const task = new CopyDataTask();
//   const result = await task.run({ node: nodefromcall, context: connection, message: {} });
//   return result;
// }

// async function stall(stallTime = 1000) {
//   await new Promise(resolve => setTimeout(resolve, stallTime));
// }

// async function getcopyfilefroms3node(testcaseid, testcasename, type, externalValue, sourceBucketName, sourceAccessKey, sourceSecretKey, sourceRegion, deleteSource, destinationBucketName, destinationPath, destinationAccessKey, destinationSecretKey, destinationRegion, sourceFile, sourceFileType, sourcePath, sourceFile1, sourceFileType1, sourcePath1, attachContext, contextKey) {
//   await stall();
//   const node = {
//     id: testcaseid,
//     name: testcasename,
//     type: type,
//     props: {
//       isExternal: externalValue,
//       source: {
//         bucketName: sourceBucketName,
//         credentials: {
//           accessKey: sourceAccessKey,
//           secretKey: sourceSecretKey,
//           region: sourceRegion,
//         }
//       },
//       deleteFromSource: deleteSource,
//       destination: {
//         bucketName: destinationBucketName,
//         path: destinationPath,
//         credentials: {
//           accessKey: destinationAccessKey,
//           secretKey: destinationSecretKey,
//           region: destinationRegion,
//         },
//       },
//       rules: [
//         {
//           sourceFile: sourceFile,
//           sourceFileType: sourceFileType,
//           path: sourcePath,
//         },
//         {
//           sourceFile: sourceFile1,
//           sourceFileType: sourceFileType1,
//           path: sourcePath1,
//         },
//       ],
//       attachToContext: attachContext,
//       contextKey: null,
//     },
//   };
//   return node;
// }

// async function runcopyfilefroms3node(nodefromcall, connection) {
//   const task = new CopyFromS3Task();
//   const result = await task.run({ node: nodefromcall, context: connection, message: {} });
//   return result;
// }


// export default { getContextforcopydata, addnewparamtojson, getcopydatanode, getvalidremoteconnectionstring, runcopydatanode, getcopyfilefroms3node, runcopyfilefroms3node };
