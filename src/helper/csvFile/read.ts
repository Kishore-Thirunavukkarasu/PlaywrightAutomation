import * as fs from 'fs';

//get a single value in a csv file
async function getSingleValue(filePath: string, rowIndex: number, columnIndex: number) {
    try {
        // Read existing CSV data
        const csvContent: string = fs.readFileSync(filePath, 'utf-8');
        // Parse CSV data
        const rows: string[][] = csvContent.split('\n').map(row => row.split(','));
        // Check if the specified row index is within bounds
        if (rowIndex < 0 || rowIndex >= rows.length) {
            console.error('Invalid row index.');
            return null;
        }
        // Check if the specified column index is within bounds for the selected row
        if (columnIndex < 0 || columnIndex >= rows[rowIndex].length) {
            console.error('Invalid column index.');
            return null;
        }
        // Get the value at the specified cell
        const cellValue: string = rows[rowIndex][columnIndex];
        //console.log(`Value at row ${rowIndex + 1}, column ${columnIndex + 1}: ${cellValue}`);

        return cellValue;
    } catch (err) {
        console.error('Error:', err);
        return null;
    }
}

//get a single row in a csv file and print as json
async function getRowAsJSON(filePath: string, rowIndex: number): Promise<void> {
    try {
        // Read existing CSV data
        const csvContent: string = fs.readFileSync(filePath, 'utf-8');

        // Parse CSV data
        const rows: string[] = csvContent.split('\n');
        const headers: string[] = rows[0].split(',');

        // Check if the specified row index is within bounds
        if (rowIndex >= 0 && rowIndex < rows.length) {
            const values: string[] = rows[rowIndex].split(',');

            // Create a JSON object using headers and values
            const rowData: { [key: string]: string } = headers.reduce((obj, header, index) => {
                obj[header] = values[index];
                return obj;
            }, {});

            console.log(rowData);
        } else {
            console.error(`Invalid row index: ${rowIndex}`);
        }
    } catch (err) {
        console.error('Error:', err);
    }
}

//get all the rows in a csv file and print as json
async function getAllRowsAsJSON(filePath: string): Promise<{ [key: string]: string; }[]> {
    try {
        // Read existing CSV data
        const csvContent: string = fs.readFileSync(filePath, 'utf-8');

        // Parse CSV data
        const rows: string[][] = csvContent.split('\n').map(row => row.split(','));

        // Extract header row
        const headers: string[] | undefined = rows.shift();

        if (!headers) {
            console.error('No headers found in the CSV.');
            return [];
        }

        // Convert each row to a JSON object
        const jsonDataArray: { [key: string]: string }[] = rows.map(row => {
            const jsonObject: { [key: string]: string } = {};
            row.forEach((value, index) => {
                jsonObject[headers[index]] = value;
            });
            return jsonObject;
        });

        console.log(jsonDataArray);
        return jsonDataArray;
    } catch (err) {
        console.error('Error:', err);
        return [];
    }
}

export default {
    getSingleValue,
    getRowAsJSON,
    getAllRowsAsJSON
};


