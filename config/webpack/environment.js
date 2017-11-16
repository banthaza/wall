const { environment } = require('@rails/webpacker')
const webpack = require('webpack')
const path = require('path');

// Loader so that html can go in it's own templates
environment.loaders.set('html', {
    test: /\.html$/,
    use: [{
        loader: 'html-loader',
        options: {
            minimize: true,
            removeAttributeQuotes: false,
            caseSensitive: true,
            customAttrSurround: [ [/#/, /(?:)/], [/\*/, /(?:)/], [/\[?\(?/, /(?:)/] ],
            customAttrAssign: [ /\)?\]?=/ ]
        }
    }]
})

// Added webpack plugin to resolve angular warning:
// https://github.com/angular/angular/issues/11580#issuecomment-246880731
environment.plugins.set(
    'ContextReplaceMent',
    new webpack.ContextReplacementPlugin(
        /angular(\\|\/)core/,
        path.resolve(__dirname, '../src')
    )
)

module.exports = environment
