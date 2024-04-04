const { promises: fs } = require('fs');
const path = require('path');

const LINE_BREAK = '\n';
const COMMENT_MARKER = '!';

/**
 * Path to the filter file
 * @type {string}
 */
const filterPath = path.resolve(process.argv[2]);

/**
 * Returns a file content.
 * @param {string} path Path to the file.
 * @returns {Promise<string>} - Promise resolving to the file content.
 */
const getFileContent = async (path) => {
    try {
        const content = await fs.readFile(path, 'utf-8');
        return content;
    } catch (error) {
        throw new Error(`Error during reading the file '${path}' due to: ${error.message}`);
    }
};

/**
 * Function to convert the filter list by modifying each rule
 * @param {string} path - Path to the filter file
 * @returns {Promise<void>} - Promise resolved when the file is successfully converted
 */
const convertFilterList = async (path) => {
    try {
        const fileContent = await getFileContent(path);
        const modifiedContent = fileContent
            .split(LINE_BREAK)
            .map((line) => {
                if (line.startsWith(COMMENT_MARKER)) {
                    return line;
                }
                return `${line}$dnsrewrite=ad-block.dns.adguard.com`;
            })
            .join(LINE_BREAK);
        await fs.writeFile(path, modifiedContent);
    } catch (error) {
        throw new Error(`Error during rules conversion due to: ${error.message}`);
    }
};

// Call the function to convert the filter list
convertFilterList(filterPath);
