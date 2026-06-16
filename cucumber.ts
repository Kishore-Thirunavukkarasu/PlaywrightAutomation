export default {
    default: {
        requireModule: ['ts-node/register'],
        require: [
            'src/support/**/*.ts',
            'src/steps/**/*.ts'
        ],
        paths: ['src/features/**/*.feature'],
        format: [
            'progress',
            'summary',
            'json:reports/cucumber.json',
            'allure-cucumberjs/reporter'
        ]
    }
};
