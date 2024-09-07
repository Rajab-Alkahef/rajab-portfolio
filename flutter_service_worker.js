'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".vscode/settings.json": "42100db22d4c0489d04ea1244e9931c3",
"assets/AssetManifest.bin": "14ac0cc52916ad4499b6aa7438795e0d",
"assets/AssetManifest.bin.json": "22ea38979b5526f904c286ead7b994ef",
"assets/AssetManifest.json": "7eca6b8691633b9b77e3c1953fd1ce4f",
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
"assets/assets/projects/earbender.png": "64099d76f6c7df0fac39c222293fd473",
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
"assets/data.json": "09dfc9eb55819e52c3dc74b0f114dae8",
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
"assets/NOTICES": "2534bd795c8cc2497d6c68378c707000",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "bbc3a2d2265f7ff6bef4ba339a0ba4c9",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "dbf0a93d2b23d99b7af4b1a6ab94e122",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "4bc7849a5c7774cfa18e4bc2ef82404a",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "738255d00768497e86aa4ca510cce1e1",
"canvaskit/canvaskit.js.symbols": "74a84c23f5ada42fe063514c587968c6",
"canvaskit/canvaskit.wasm": "9251bb81ae8464c4df3b072f84aa969b",
"canvaskit/chromium/canvaskit.js": "901bb9e28fac643b7da75ecfd3339f3f",
"canvaskit/chromium/canvaskit.js.symbols": "ee7e331f7f5bbf5ec937737542112372",
"canvaskit/chromium/canvaskit.wasm": "399e2344480862e2dfa26f12fa5891d7",
"canvaskit/skwasm.js": "5d4f9263ec93efeb022bb14a3881d240",
"canvaskit/skwasm.js.symbols": "c3c05bd50bdf59da8626bbe446ce65a3",
"canvaskit/skwasm.wasm": "4051bfc27ba29bf420d17aa0c3a98bce",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.png": "8ba7140e66ebf995fc94016cdaf42ff7",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c",
"flutter_bootstrap.js": "66217c0743fda63e93ab5fd478e5d3a0",
"icons/Icon-192.png": "16cad87c8b87292cb890f0882160ca36",
"icons/Icon-512.png": "cccad51c27a4fb5a1638996b8b7d4616",
"index.html": "fe01bee92fdc92f029824090dc8cefd6",
"/": "fe01bee92fdc92f029824090dc8cefd6",
"main.dart.js": "16c4e25c883ebccf89f1351ba4b6c291",
"manifest.json": "3421cd00e17d6f742428a18cbf45709d",
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
