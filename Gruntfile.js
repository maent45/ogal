module.exports = function(grunt) {
    require('jit-grunt')(grunt);

    grunt.initConfig({
        less: {
            development: {
                options: {
                    compress: true,
                    yuicompress: true,
                    optimization: 2
                },
                files: {
                    "themes/lago/css/main.css": "themes/lago/less/main.less",
                    // page_types
                    "themes/lago/css/homepage.css": "themes/lago/less/page_types/home_page/homepage.less",
                    "themes/lago/css/track_chooser_base.css": "themes/lago/less/page_types/track_chooser/track_chooser_base.less",
                    // components
                    "themes/lago/css/nav.css": "themes/lago/less/components/nav.less",
                    // mixins
                    "themes/lago/css/colors.css": "themes/lago/less/colors.less" // destination file and source file
                }
            }
        },
        watch: {
            styles: {
                files: ['themes/lago/less/**/*.less'], // which files to watch
                tasks: ['less'],
                options: {
                    nospawn: true
                }
            }
        }
    });

    grunt.registerTask('default', ['less', 'watch']);
};