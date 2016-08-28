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
                    // page_types -> 'track_chooser'
                    "themes/lago/css/track_chooser_base.css": "themes/lago/less/page_types/track_chooser/track_chooser_base.less",
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