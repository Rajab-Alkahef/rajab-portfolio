'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".vscode/settings.json": "42100db22d4c0489d04ea1244e9931c3",
"assets/AssetManifest.bin": "27e00c2c9cb69b2cddfbe66a115d480b",
"assets/AssetManifest.bin.json": "8b79fa070062848f365eb2006d537e4a",
"assets/AssetManifest.json": "f74ba827edf93fab762ff2b6da2bcb5e",
"assets/assets/hi.gif": "cad5918d86b6a7e83f1fb4acead70e4c",
"assets/assets/Logo.png": "35750cad3158447ec5c3b7dcffbd7070",
"assets/assets/logo_black.png": "a6bc55711d515979f9cee61504bc9db1",
"assets/assets/photos/black-white-photo.png": "099d5b33ef667c701533cfe9b6666555",
"assets/assets/photos/black-white-photo1.png": "79b21455ed3fe06686217800c0fb1875",
"assets/assets/photos/black-white-photo2.png": "34d9986d06ec9efa5aefe15fb5dac3a5",
"assets/assets/photos/black-white-photo3.png": "1f2a448364d6d7d85bf6cf4a705607c5",
"assets/assets/photos/black-white.png": "78d49bb1d6ba051d64f67c019f97786a",
"assets/assets/photos/colored.png": "968671063715cb94339f2bd9bbefbaac",
"assets/assets/photos/mobile.png": "b73399d02fceb26b510b6abe92894d80",
"assets/assets/photos/mobile1.png": "29913ed7d031943acfe3d6dcbd7ab72d",
"assets/assets/photos/mobile2.png": "77b4743e2a55bf0d5a177114927b398f",
"assets/assets/photos/my_photo2.png": "c77fab52bf77cfad0b0b8ddc045b0c61",
"assets/assets/photos/my_photo4.png": "8f86e1c03b7db2a89f13c268074af173",
"assets/assets/projects/android.png": "765adf924dae4d5e67bfb640bcd05c48",
"assets/assets/projects/Chatify.jpg": "630f405d9238a252433b362687093baf",
"assets/assets/projects/chatify.png": "561b5efac7b706b29fd3ff090dd0d20d",
"assets/assets/projects/covid.png": "27c600501d335324e8fce4c5d6c22b76",
"assets/assets/projects/covidB.png": "1884ac58a9de5d81e995f1e46e4b7398",
"assets/assets/projects/dentasty.png": "9c1259ddc656b159e5f5468409a6d1d5",
"assets/assets/projects/dentasty_mockup_2.jpg": "ccad16d16cb7e147bb22169de0ac1ca4",
"assets/assets/projects/earbender.png": "64099d76f6c7df0fac39c222293fd473",
"assets/assets/projects/Facial.jpg": "239a3decf6f9848a7dbd25d29691c89b",
"assets/assets/projects/flutter.png": "0b5a2f8d3f4d173805affaf9f84f6c87",
"assets/assets/projects/hereiam.png": "cbb5a77a5e19e1224080dcaf0e3b5407",
"assets/assets/projects/hereiamB.png": "16ee68a57fbf0eae5c50e1b8376064df",
"assets/assets/projects/java.png": "62be9fb6e1d7166e9cbeeed913096752",
"assets/assets/projects/medkit.png": "915431d4f438d5bc7c642fed8dbfb419",
"assets/assets/projects/medkitB.png": "058d00d54c3ee8a953442d0cf3bfb866",
"assets/assets/projects/messenger.png": "f28ead750653b586737ed63db6f2d53a",
"assets/assets/projects/news.png": "03d9fce11b9af441bee3d24e6d6e8c65",
"assets/assets/projects/news_app.jpg": "e768728aa78bfdf5d869ef5f2b8a626e",
"assets/assets/projects/notes.png": "d7374de047a72725ae3c116d80f03164",
"assets/assets/projects/Notes_app.jpg": "3306d73e99fe50760bb7af6b60fa8469",
"assets/assets/projects/open_cv.png": "bed952c43054a6a03f4eed2e749c6b5b",
"assets/assets/projects/quran.png": "55e8a0c928bc192f682ca0e61cb61ce3",
"assets/assets/projects/quranB.png": "3cf070457b64cf93d11ad2073bff88e2",
"assets/assets/projects/responsive_dashboard.png": "24a9fc5704890fad53be835c20b030fb",
"assets/assets/projects/snackbar.png": "426d7d3320b4207468e1dec6322b3b08",
"assets/assets/projects/wanees.png": "e9408ac75f15bab453faf9197231d452",
"assets/assets/projects/wanees_app.png": "225a0990ece37a692445c12c8e251073",
"assets/assets/projects/weather-01.png": "3fde622d69a5cbaf4c957385da86a86c",
"assets/assets/projects/weather.jpg": "3f62fac069a8ac4a9a31214827babe19",
"assets/assets/services/app-development.png": "d856f8f1fd5c03fb5dc1c293c9595b44",
"assets/assets/services/app.png": "9d2da88edb7f550ef24874b306b4ae12",
"assets/assets/services/blog.png": "5e1cbb2c67e2b8ea9ae4bcce0705d2a4",
"assets/assets/services/fiverr.png": "9d4018924e1f0e983a86e7eaf8a0958b",
"assets/assets/services/machine-learning.png": "473bb2a7089a33b3b4ea7bf015bf6a56",
"assets/assets/services/mobile-development.png": "0764a6445b112ed0d6291ace9d082344",
"assets/assets/services/open.png": "4a5996597d32b06d91183f0860c29aab",
"assets/assets/services/open_b.png": "b65517dd1a07922b014409bb8dcb1e81",
"assets/assets/services/rapid.png": "8d3ff9fbdddae77403af46662f011ee8",
"assets/assets/services/ui.png": "3cf727247752b730a05f51fe0177036f",
"assets/assets/work/cui.png": "b5608c4d79345ca955f990a24a454554",
"assets/assets/work/dsc.png": "bd954ceeeb42b91899ebe1c3b0d79850",
"assets/assets/work/flutterIsl.png": "aaaeddae163a2e71636d9d494e16f2db",
"assets/assets/work/khamsat.png": "e08d2fbd8c58a4a4faa67b741d9ab17a",
"assets/assets/work/khamsat.svg": "e40a135d93ffc2761e2d7fae46ae351f",
"assets/assets/work/st.png": "0957bd1682c5a518247a1844656c0f7e",
"assets/data.json": "3ce71459789fca057dbc79a66bf62f0e",
"assets/FontManifest.json": "ff3638e4681eef8411628e5aa1eff03a",
"assets/fonts/agustina/agustina.otf": "7b9833076716a8d14eec0cf885a3153c",
"assets/fonts/gilroy/gilroy-Bold.ttf": "b498c2abcd35b036cf201dab0027c340",
"assets/fonts/gilroy/Gilroy-ExtraBold.otf": "0f6e082f42f5247d82c3ade9c2a8f928",
"assets/fonts/gilroy/Gilroy-Light.otf": "c62aded729bf7146d491275e5019d7fc",
"assets/fonts/gilroy/gilroy-Medium.ttf": "ef9daf9c32f47a3468f30f861e92b9c4",
"assets/fonts/gilroy/gilroy-regular.ttf": "af5b8da12b32c5e74532c6446eb356b4",
"assets/fonts/MaterialIcons-Regular.otf": "04a71a440d0f124521ce25f2698790ca",
"assets/fonts/montserrat/montserrat.ttf": "ee6539921d713482b8ccd4d0d23961bb",
"assets/fonts/poppins/Poppins-Bold.ttf": "a3e0b5f427803a187c1b62c5919196aa",
"assets/fonts/poppins/Poppins-Italic.ttf": "5e956c44060a7b3c0e39819ae390ab15",
"assets/fonts/poppins/Poppins-Light.ttf": "f6ea751e936ade6edcd03a26b8153b4a",
"assets/fonts/poppins/Poppins-Medium.ttf": "f61a4eb27371b7453bf5b12ab3648b9e",
"assets/fonts/poppins/Poppins-Regular.ttf": "8b6af8e5e8324edfd77af8b3b35d7f9c",
"assets/fonts/poppins/Poppins-SemiBold.ttf": "4cdacb8f89d588d69e8570edcbe49507",
"assets/NOTICES": "509c1f47b660a30295d24c6bf19bb212",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "bbc3a2d2265f7ff6bef4ba339a0ba4c9",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "dbf0a93d2b23d99b7af4b1a6ab94e122",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "4bc7849a5c7774cfa18e4bc2ef82404a",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"favicon.png": "8ba7140e66ebf995fc94016cdaf42ff7",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"flutter_bootstrap.js": "baa6fe6d8313cbde6864d7cb662d3791",
"icons/Icon-192.png": "16cad87c8b87292cb890f0882160ca36",
"icons/Icon-512.png": "cccad51c27a4fb5a1638996b8b7d4616",
"index.html": "adf14f278dc4f6f03000fb388db76355",
"/": "adf14f278dc4f6f03000fb388db76355",
"main.dart.js": "76daed50bacfcbd2be361058ccf39c82",
"manifest.json": "f256e1882a928f379242620fd06cb7e1",
"version.json": "a29e8b22a08aa0274b027931eec216c4"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
