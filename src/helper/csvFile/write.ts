import * as fs from 'fs';

//write single value to the csv
async function writeCSVCell(filePath: string, rowIndex: number, columnIndex: number, value: string): Promise<void> {
    try {
        // Read existing CSV data
        let csvContent: string = '';
        if (fs.existsSync(filePath)) {
            csvContent = fs.readFileSync(filePath, 'utf-8');
        }
        // Parse existing CSV data
        const rows: string[][] = csvContent.split('\n').map(row => row.split(','));
        // Ensure the specified row index exists
        while (rows.length <= rowIndex) {
            rows.push([]);
        }
        // Ensure the specified column index exists for the specified row
        while (rows[rowIndex].length <= columnIndex) {
            rows[rowIndex].push('');
        }
        // Update the value at the specified cell
        rows[rowIndex][columnIndex] = value;
        // Convert updated data to CSV format
        csvContent = rows.map(row => row.join(',')).join('\n');
        // Write CSV data to the file
        fs.writeFileSync(filePath, csvContent);
    } catch (err) {
        console.error('Error:', err);
    }
}

async function writeJSONArrayToCSV(filePath: string, jsonArrayString: string, startRowIndex: number, startColumnIndex: number): Promise<void> {
    try {
        const jsonArray: Record<string, string>[] = JSON.parse(jsonArrayString);

        const rows: string[][] = [];

        // Check if the file exists, and if it does, delete it
        if (fs.existsSync(filePath)) {
            await fs.promises.unlink(filePath); // Delete the file
        }

        // Write headers in the first row
        const headerRowIndex: number = startRowIndex;
        while (rows.length <= headerRowIndex) {
            rows.push([]);
        }

        const firstJson: Record<string, string> = jsonArray[0];
        Object.keys(firstJson).forEach((key: string, columnIndex: number) => {
            while (rows[headerRowIndex].length <= columnIndex + startColumnIndex) {
                rows[headerRowIndex].push('');
            }
            rows[headerRowIndex][columnIndex + startColumnIndex] = key;
        });

        // Write values for all JSON objects
        jsonArray.forEach((jsonData: Record<string, string>, index: number) => {
            // Calculate the row index for each object
            const rowIndex: number = startRowIndex + index + 1; // Offset by 1 for header row

            // Ensure the row index for the current object exists
            while (rows.length <= rowIndex) {
                rows.push([]);
            }

            // Write values to the specified row and column
            Object.values(jsonData).forEach((value: string, columnIndex: number) => {
                while (rows[rowIndex].length <= columnIndex + startColumnIndex) {
                    rows[rowIndex].push('');
                }
                rows[rowIndex][columnIndex + startColumnIndex] = String(value);
            });
        });

        const csvContent: string = rows.map(row => row.join(',')).join('\n');
        await fs.promises.writeFile(filePath, csvContent);

        console.log(`CSV file created and updated successfully at: ${filePath}`);
    } catch (err) {
        console.error('Error:', err);
    }
}



//write a json object into a csv file
async function writeJSONToCSV(filePath: string, jsonString: string, startRowIndex: number, startColumnIndex: number): Promise<void> {
    try {
        // Read existing CSV data
        const rows: string[][] = fs.existsSync(filePath) ? fs.readFileSync(filePath, 'utf-8').split('\n').map(row => row.split(',')) : [];

        // Ensure the specified start row index exists
        while (rows.length <= startRowIndex) {
            rows.push([]);
        }
        // Parse the stringified JSON
        const jsonData: Record<string, string> = JSON.parse(jsonString);

        // Write keys to the specified row and column
        Object.keys(jsonData).forEach((key, columnIndex) => {
            while (rows[startRowIndex].length <= columnIndex + startColumnIndex) {
                rows[startRowIndex].push('');
            }
            rows[startRowIndex][columnIndex + startColumnIndex] = key;
        });
        // Ensure the specified start row index for values exists
        const valuesRowIndex: number = startRowIndex + 1;
        while (rows.length <= valuesRowIndex) {
            rows.push([]);
        }
        // Write values to the specified row and column
        Object.values(jsonData).forEach((value, columnIndex) => {
            while (rows[valuesRowIndex].length <= columnIndex + startColumnIndex) {
                rows[valuesRowIndex].push('');
            }

            rows[valuesRowIndex][columnIndex + startColumnIndex] = String(value);
        });
        // Write updated CSV data to the file
        fs.writeFileSync(filePath, rows.map(row => row.join(',')).join('\n'));

    } catch (err) {
        console.error('Error:', err);
    }
}

export default{
    writeCSVCell,
    writeJSONToCSV,
    writeJSONArrayToCSV
}



