{{flutter_js}}
{{flutter_build_config}}

/**
 * @param bytes {Uint8Array}
 */
function saveImage(bytes) {
    const blob = new Blob([bytes], {type: 'image/png'});
    const url = URL.createObjectURL(blob);

    // open in new tab
    window.open(url, '_blank')

    // or download directly
    // const a = document.createElement('a');
    // a.href = url;
    // a.download = 'image.png';
    // a.click();
}

_flutter.loader.load()
// _flutter.loader.load({
//     onEntrypointLoaded: async function onEntrypointLoaded(engineInitializer) {
//         const engine = await engineInitializer.initializeEngine({
//             // multiViewEnabled: true, // Enables embedded mode.
//         });
//         const app = await engine.runApp();
//         window.app = app
//         // const viewId = app.addView({hostElement: document.getElementById('app')})
//         // console.log('addView', viewId)
//         // Make this `app` object available to your JS app.
//     }
// });

// https://docs.flutter.dev/platform-integration/web/initialization
// https://docs.flutter.dev/platform-integration/web/embedding-flutter-web#embedded-mode
// https://docs.flutter.cn/platform-integration/web/initialization
// https://docs.flutter.cn/platform-integration/web/embedding-flutter-web/
