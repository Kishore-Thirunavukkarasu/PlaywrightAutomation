import * as fs from 'fs';

//Update data specific to the field value in the row
async function updateRowByValue(filePath: string, jsonStringToReplace: string, matchColumnName: string): Promise<void> {
    try {
        const rows: string[][] = [];

        // Read existing CSV data
        if (fs.existsSync(filePath)) {
            const csvContent: string = fs.readFileSync(filePath, 'utf-8');
            // Parse existing CSV data
            rows.push(...csvContent.split('\n').map(row => row.split(',')));
        }

        // Find the column index of the specified match column
        const matchColumnIndex: number = rows[0].indexOf(matchColumnName);

        // Check if match column exists
        if (matchColumnIndex === -1) {
            throw new Error(`Error: "${matchColumnName}" column not found in the CSV file.`);
        }

        // Parse the stringified JSON object
        const jsonToReplace: Record<string, string> = JSON.parse(jsonStringToReplace);

        // Find the row index to replace
        let rowIndexToReplace: number = -1;
        for (let i = 1; i < rows.length; i++) {
            if (rows[i][matchColumnIndex] === jsonToReplace[matchColumnName]) {
                rowIndexToReplace = i;
                break;
            }
        }

        // Check if the row to replace was found
        if (rowIndexToReplace === -1) {
            throw new Error(`Error: Row with specified "${matchColumnName}" value not found.`);
        }

        // Update the row with the new values
        rows[rowIndexToReplace] = Object.values(jsonToReplace);

        // Write the updated CSV content
        const csvContent: string = rows.map(row => row.join(',')).join('\n');
        fs.writeFileSync(filePath, csvContent);

        console.log(`Row updated successfully for ${matchColumnName}: ${jsonToReplace[matchColumnName]}`);
    } catch (err) {
        console.error('Error:', err.message);
    }
}

//insert a new data in last row of file
async function appendJSONToCSV(filePath: string, jsonToAppend: string): Promise<void> {
    try {
        const rows: string[][] = [];

        // Read existing CSV data
        if (fs.existsSync(filePath)) {
            const csvContent: string = fs.readFileSync(filePath, 'utf-8');
            // Parse existing CSV data
            rows.push(...csvContent.split('\n').map(row => row.split(',')));
        }

        // Parse the JSON string into an array of strings
        const jsonParsed: any = JSON.parse(jsonToAppend);
        const newRow: string[] = Object.values(jsonParsed).map(value => String(value));

        // Check if the last row is empty (or just contains a newline), remove it
        if (rows.length > 0 && (rows[rows.length - 1].length === 1 && rows[rows.length - 1][0] === '')) {
            rows.pop();
        }

        // Add the new row
        rows.push(newRow);

        // Write the updated CSV content
        const csvContent: string = rows.map(row => row.join(',')).join('\n');
        fs.writeFileSync(filePath, csvContent);

        console.log(`JSON value appended successfully to CSV file at: ${filePath}`);
    } catch (err) {
        console.error('Error:', err.message);
    }
}

//insert a multiple json array of object at last row
async function appendJSONArrayToCSV(filePath: string, jsonArrayString: string): Promise<void> {
    try {
        const rows: string[][] = [];

        // Read existing CSV data
        if (fs.existsSync(filePath)) {
            const csvContent: string = fs.readFileSync(filePath, 'utf-8');
            // Parse existing CSV data
            rows.push(...csvContent.split('\n').map(row => row.split(',')));
        }

        // Parse the stringified JSON array
        const jsonArray: Record<string, string>[] = JSON.parse(jsonArrayString);

        // Append each JSON object as a new row
        jsonArray.forEach(jsonObj => {
            const newRow: string[] = Object.values(jsonObj);

            // Check if the last row is empty, remove it
            if (rows.length > 0 && rows[rows.length - 1].length === 1 && rows[rows.length - 1][0] === '') {
                rows.pop();
            }

            // Add the new row
            rows.push(newRow);
        });

        // Write the updated CSV content
        const csvContent: string = rows.map(row => row.join(',')).join('\n');
        fs.writeFileSync(filePath, csvContent);

        console.log(`JSON values appended successfully to CSV file at: ${filePath}`);
    } catch (err) {
        console.error('Error:', err.message);
    }
}

/******                        Another method

async function appendJSONArrayToCSV(filePath: string, jsonStringifiedArray: string): Promise<void> {
    try {
        const jsonArrayToAppend: Record<string, string>[] = JSON.parse(jsonStringifiedArray);

        const rows: string[][] = [];

        // Read existing CSV data
        if (fs.existsSync(filePath)) {
            const csvContent: string = fs.readFileSync(filePath, 'utf-8');
            // Parse existing CSV data
            rows.push(...csvContent.split('\n').map(row => row.split(',')));
        }

        // Append each JSON object as a new row
        jsonArrayToAppend.forEach(jsonObj => {
            const newRow: string[] = Object.values(jsonObj);

            // Check if the last row is empty, remove it
            if (rows.length > 0 && rows[rows.length - 1].length === 1 && rows[rows.length - 1][0] === '') {
                rows.pop();
            }

            // Add the new row
            rows.push(newRow);
        });

        // Write the updated CSV content
        const csvContent: string = rows.map(row => row.join(',')).join('\n');
        fs.writeFileSync(filePath, csvContent);

        console.log(`JSON values appended successfully to CSV file at: ${filePath}`);
    } catch (err) {
        console.error('Error:', err.message);
    }
}
******************/

export default{
    updateRowByValue,
    appendJSONArrayToCSV,
    appendJSONToCSV
}

