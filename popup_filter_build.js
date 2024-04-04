const { promises: fs } = require('fs');

/**
 * Path to the filter file
 * @type {string}
 */
const filterPath = process.argv[2];

/**
 * Function to convert modifiers in a rule
 * @param {string} rule - The rule to modify
 * @param {string} modifier - The new modifier
 * @param {string} [modifierValue] - The value for the modifier
 * @returns {string} - Modified rule
 */
const convertModifier = (rule, modifier, modifierValue) => {
    // Avoiding comments
    if (rule.startsWith('!')) {
        return rule;
    }
    // Add the modifier to the rule
    return `${rule}$${modifier}${modifierValue ? `=${modifierValue}` : ''}`;
};

/**
 * Function to get file content as an array of lines
 * @param {string} path - Path to the file
 * @returns {Promise<string[]>} - Promise resolving to an array of lines from the file
 */
const getFileContent = async (path) => {
    try {
        const content = await fs.readFile(path, 'utf-8');
        return content.split('\n');
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
        const modifiedContent = fileContent.map((rule) => convertModifier(rule, 'dnsrewrite', 'ad-block.dns.adguard.com'));
        await fs.writeFile(path, modifiedContent.join('\n'));
    } catch (error) {
        throw new Error(`Error converting rules in ${path}`)
    }
};

// Call the function to convert the filter list
convertFilterList(filterPath);
