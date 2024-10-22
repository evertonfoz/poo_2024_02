; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [310 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [614 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 230
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 264
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39485524, ; 6: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 7: System.Threading.Thread => 0x28aa24d => 145
	i32 47257355, ; 8: Aula02.dll => 0x2d1170b => 0
	i32 53857724, ; 9: ca/Microsoft.Maui.Controls.resources => 0x335cdbc => 273
	i32 66541672, ; 10: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 68219467, ; 11: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 12: Microsoft.Maui.Graphics.dll => 0x44bb714 => 188
	i32 82292897, ; 13: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 101534019, ; 14: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 248
	i32 113429830, ; 15: zh-HK/Microsoft.Maui.Controls.resources => 0x6c2cd46 => 303
	i32 117431740, ; 16: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 17: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 248
	i32 122350210, ; 18: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 19: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 268
	i32 142721839, ; 20: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 21: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 22: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 23: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 204
	i32 176265551, ; 24: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 25: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 250
	i32 184328833, ; 26: System.ValueTuple.dll => 0xafca281 => 151
	i32 195452805, ; 27: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 302
	i32 199333315, ; 28: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 303
	i32 205061960, ; 29: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 30: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 202
	i32 220171995, ; 31: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 32: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 224
	i32 230752869, ; 33: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 34: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 35: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 36: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 261689757, ; 37: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 207
	i32 276479776, ; 38: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 39: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 226
	i32 280482487, ; 40: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 223
	i32 280992041, ; 41: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 274
	i32 291076382, ; 42: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 43: System.Net.Ping.dll => 0x11d123fd => 69
	i32 318968648, ; 44: Xamarin.AndroidX.Activity.dll => 0x13031348 => 193
	i32 321597661, ; 45: System.Numerics => 0x132b30dd => 83
	i32 336156722, ; 46: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 287
	i32 342366114, ; 47: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 225
	i32 356389973, ; 48: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 286
	i32 357576608, ; 49: cs/Microsoft.Maui.Controls.resources => 0x15502fa0 => 274
	i32 360082299, ; 50: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 51: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 52: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 53: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 54: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 55: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 56: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 57: _Microsoft.Android.Resource.Designer => 0x17969339 => 306
	i32 403441872, ; 58: WindowsBase => 0x180c08d0 => 165
	i32 435591531, ; 59: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 298
	i32 441335492, ; 60: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 208
	i32 442565967, ; 61: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 62: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 221
	i32 451504562, ; 63: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 64: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 65: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 66: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 67: System.dll => 0x1bff388e => 164
	i32 476646585, ; 68: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 223
	i32 486930444, ; 69: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 236
	i32 498788369, ; 70: System.ObjectModel => 0x1dbae811 => 84
	i32 500358224, ; 71: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 285
	i32 503918385, ; 72: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 279
	i32 513247710, ; 73: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 182
	i32 526420162, ; 74: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527168573, ; 75: hi/Microsoft.Maui.Controls.resources => 0x1f6bf43d => 282
	i32 527452488, ; 76: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 268
	i32 530272170, ; 77: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 539058512, ; 78: Microsoft.Extensions.Logging => 0x20216150 => 178
	i32 540030774, ; 79: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 80: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 81: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 82: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 83: Jsr305Binding => 0x213954e7 => 261
	i32 569601784, ; 84: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 259
	i32 577335427, ; 85: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 592146354, ; 86: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 293
	i32 601371474, ; 87: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 88: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 89: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 90: Xamarin.AndroidX.CustomView => 0x2568904f => 213
	i32 639843206, ; 91: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 219
	i32 643868501, ; 92: System.Net => 0x2660a755 => 81
	i32 662205335, ; 93: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 94: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 255
	i32 666292255, ; 95: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 200
	i32 672442732, ; 96: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 97: System.Net.Security => 0x28bdabca => 73
	i32 688181140, ; 98: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 273
	i32 690569205, ; 99: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 100: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 270
	i32 693804605, ; 101: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 102: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 103: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 265
	i32 700358131, ; 104: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 706645707, ; 105: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 288
	i32 709557578, ; 106: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 276
	i32 720511267, ; 107: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 269
	i32 722857257, ; 108: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 109: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 110: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 111: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 190
	i32 759454413, ; 112: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 113: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 114: System.IO.Compression => 0x2e394f87 => 46
	i32 789151979, ; 115: Microsoft.Extensions.Options => 0x2f0980eb => 181
	i32 790371945, ; 116: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 214
	i32 804715423, ; 117: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 118: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 228
	i32 823281589, ; 119: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 120: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 121: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 122: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 123: Xamarin.AndroidX.Print => 0x3246f6cd => 241
	i32 870878177, ; 124: ar/Microsoft.Maui.Controls.resources => 0x33e88be1 => 272
	i32 873119928, ; 125: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 126: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 127: System.Net.Http.Json => 0x3463c971 => 63
	i32 904024072, ; 128: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 129: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 926902833, ; 130: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 300
	i32 928116545, ; 131: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 264
	i32 952186615, ; 132: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 956575887, ; 133: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 269
	i32 966729478, ; 134: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 262
	i32 967690846, ; 135: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 225
	i32 975236339, ; 136: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 137: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 138: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 139: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 140: System.Collections.dll => 0x3b2c715c => 12
	i32 993161700, ; 141: zh-Hans/Microsoft.Maui.Controls.resources => 0x3b3271e4 => 304
	i32 994442037, ; 142: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 994547685, ; 143: es/Microsoft.Maui.Controls.resources => 0x3b4797e5 => 278
	i32 1001831731, ; 144: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 145: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 245
	i32 1019214401, ; 146: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 147: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 177
	i32 1029334545, ; 148: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 275
	i32 1031528504, ; 149: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 263
	i32 1035644815, ; 150: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 198
	i32 1036536393, ; 151: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 152: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 153: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 232
	i32 1067306892, ; 154: GoogleGson => 0x3f9dcf8c => 173
	i32 1082857460, ; 155: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 156: Xamarin.Kotlin.StdLib => 0x409e66d8 => 266
	i32 1098259244, ; 157: System => 0x41761b2c => 164
	i32 1121599056, ; 158: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 231
	i32 1127624469, ; 159: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 180
	i32 1149092582, ; 160: Xamarin.AndroidX.Window => 0x447dc2e6 => 258
	i32 1170634674, ; 161: System.Web.dll => 0x45c677b2 => 153
	i32 1175144683, ; 162: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 254
	i32 1178241025, ; 163: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 239
	i32 1178797549, ; 164: fi/Microsoft.Maui.Controls.resources => 0x464305ed => 279
	i32 1203215381, ; 165: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 292
	i32 1204270330, ; 166: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 200
	i32 1208641965, ; 167: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 168: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1234928153, ; 169: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 290
	i32 1243150071, ; 170: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 259
	i32 1253011324, ; 171: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1264511973, ; 172: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 249
	i32 1267360935, ; 173: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 253
	i32 1273260888, ; 174: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 205
	i32 1275534314, ; 175: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 270
	i32 1278448581, ; 176: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 197
	i32 1293217323, ; 177: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 216
	i32 1309188875, ; 178: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 179: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 258
	i32 1324164729, ; 180: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 181: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1364015309, ; 182: System.IO => 0x514d38cd => 57
	i32 1376866003, ; 183: Xamarin.AndroidX.SavedState => 0x52114ed3 => 245
	i32 1379779777, ; 184: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 185: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 186: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 209
	i32 1408764838, ; 187: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 188: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 189: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1434145427, ; 190: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 191: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 262
	i32 1439761251, ; 192: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 193: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 194: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 195: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 196: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461234159, ; 197: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 198: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 199: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 200: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 199
	i32 1470490898, ; 201: Microsoft.Extensions.Primitives => 0x57a5e912 => 182
	i32 1479771757, ; 202: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 203: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 204: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 205: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 246
	i32 1493001747, ; 206: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 282
	i32 1514721132, ; 207: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 277
	i32 1536373174, ; 208: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 209: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 210: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 211: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551623176, ; 212: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 297
	i32 1554762148, ; 213: fr/Microsoft.Maui.Controls.resources => 0x5cabc9a4 => 280
	i32 1565862583, ; 214: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 215: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 216: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 217: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1580413037, ; 218: sv/Microsoft.Maui.Controls.resources => 0x5e33306d => 298
	i32 1582372066, ; 219: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 215
	i32 1591080825, ; 220: zh-Hant/Microsoft.Maui.Controls.resources => 0x5ed5f779 => 305
	i32 1592978981, ; 221: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 222: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 263
	i32 1601112923, ; 223: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 224: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 225: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 226: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 235
	i32 1622358360, ; 227: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 228: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 257
	i32 1635184631, ; 229: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 219
	i32 1636350590, ; 230: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 212
	i32 1639515021, ; 231: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 232: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 233: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 234: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 235: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 251
	i32 1658251792, ; 236: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 260
	i32 1670060433, ; 237: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 207
	i32 1675553242, ; 238: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 239: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 240: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 241: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 242: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 243: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 244: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 267
	i32 1701541528, ; 245: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 246: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 228
	i32 1726116996, ; 247: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 248: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 249: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 203
	i32 1736233607, ; 250: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 295
	i32 1744735666, ; 251: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 252: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 253: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 254: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 255: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 256: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 257: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 250
	i32 1770582343, ; 258: Microsoft.Extensions.Logging.dll => 0x6988f147 => 178
	i32 1776026572, ; 259: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 260: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 261: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1788241197, ; 262: Xamarin.AndroidX.Fragment => 0x6a96652d => 221
	i32 1808609942, ; 263: Xamarin.AndroidX.Loader => 0x6bcd3296 => 235
	i32 1809966115, ; 264: nb/Microsoft.Maui.Controls.resources => 0x6be1e423 => 290
	i32 1813058853, ; 265: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 266
	i32 1813201214, ; 266: Xamarin.Google.Android.Material => 0x6c13413e => 260
	i32 1818569960, ; 267: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 240
	i32 1818787751, ; 268: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1821794637, ; 269: hu/Microsoft.Maui.Controls.resources => 0x6c96614d => 284
	i32 1824175904, ; 270: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 271: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 272: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 179
	i32 1842015223, ; 273: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 301
	i32 1847515442, ; 274: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 190
	i32 1858542181, ; 275: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 276: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1879696579, ; 277: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 278: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 201
	i32 1888955245, ; 279: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 280: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 281: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 282: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 283: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 284: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1956758971, ; 285: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1960264639, ; 286: ja/Microsoft.Maui.Controls.resources => 0x74d743bf => 287
	i32 1961813231, ; 287: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 247
	i32 1968388702, ; 288: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 174
	i32 1983156543, ; 289: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 267
	i32 1985761444, ; 290: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 192
	i32 2011961780, ; 291: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2014344398, ; 292: hr/Microsoft.Maui.Controls.resources => 0x781074ce => 283
	i32 2019465201, ; 293: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 232
	i32 2025202353, ; 294: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 272
	i32 2031763787, ; 295: Xamarin.Android.Glide => 0x791a414b => 189
	i32 2043674646, ; 296: it/Microsoft.Maui.Controls.resources => 0x79d00016 => 286
	i32 2045470958, ; 297: System.Private.Xml => 0x79eb68ee => 88
	i32 2055257422, ; 298: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 227
	i32 2060060697, ; 299: System.Windows.dll => 0x7aca0819 => 154
	i32 2070888862, ; 300: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2079903147, ; 301: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 302: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2127167465, ; 303: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 304: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 305: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 306: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2150663486, ; 307: ko/Microsoft.Maui.Controls.resources => 0x8030853e => 288
	i32 2159891885, ; 308: Microsoft.Maui => 0x80bd55ad => 186
	i32 2165051842, ; 309: ro/Microsoft.Maui.Controls.resources => 0x810c11c2 => 295
	i32 2181898931, ; 310: Microsoft.Extensions.Options.dll => 0x820d22b3 => 181
	i32 2192057212, ; 311: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 179
	i32 2193016926, ; 312: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 313: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 271
	i32 2201231467, ; 314: System.Net.Http => 0x8334206b => 64
	i32 2217644978, ; 315: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 254
	i32 2222056684, ; 316: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2244775296, ; 317: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 236
	i32 2252106437, ; 318: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2256313426, ; 319: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 320: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 321: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 175
	i32 2267999099, ; 322: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 191
	i32 2270573516, ; 323: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 280
	i32 2279755925, ; 324: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 243
	i32 2289298199, ; 325: th/Microsoft.Maui.Controls.resources => 0x8873eb17 => 299
	i32 2293034957, ; 326: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 327: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 328: System.Net.Mail => 0x88ffe49e => 66
	i32 2305521784, ; 329: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 330: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 195
	i32 2320631194, ; 331: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 332: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 333: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 334: System.Net.Primitives => 0x8c40e0db => 70
	i32 2368005991, ; 335: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2369760409, ; 336: tr/Microsoft.Maui.Controls.resources => 0x8d3fac99 => 300
	i32 2371007202, ; 337: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 174
	i32 2378619854, ; 338: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 339: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2401565422, ; 340: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 341: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 218
	i32 2421380589, ; 342: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2421992093, ; 343: nl/Microsoft.Maui.Controls.resources => 0x905caa9d => 291
	i32 2423080555, ; 344: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 205
	i32 2435356389, ; 345: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 346: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 347: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 348: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 349: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 350: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 208
	i32 2471841756, ; 351: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 352: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 353: Microsoft.Maui.Controls => 0x93dba8a1 => 184
	i32 2483903535, ; 354: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 355: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 356: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 357: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 358: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 230
	i32 2520433370, ; 359: sk/Microsoft.Maui.Controls.resources => 0x963ac2da => 297
	i32 2522472828, ; 360: Xamarin.Android.Glide.dll => 0x9659e17c => 189
	i32 2538310050, ; 361: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2562349572, ; 362: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 363: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2581783588, ; 364: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 231
	i32 2581819634, ; 365: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 253
	i32 2585220780, ; 366: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 367: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 368: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2605712449, ; 369: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 271
	i32 2615233544, ; 370: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 222
	i32 2616218305, ; 371: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 180
	i32 2617129537, ; 372: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 373: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 374: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 212
	i32 2624644809, ; 375: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 217
	i32 2627185994, ; 376: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 377: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 378: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 226
	i32 2663391936, ; 379: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 191
	i32 2663698177, ; 380: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 381: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 382: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 383: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 384: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 385: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 386: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 251
	i32 2715334215, ; 387: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 388: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 389: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 390: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 391: Xamarin.AndroidX.Activity => 0xa2e0939b => 193
	i32 2735172069, ; 392: System.Threading.Channels => 0xa30769e5 => 139
	i32 2737747696, ; 393: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 199
	i32 2740948882, ; 394: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 395: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2758225723, ; 396: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 185
	i32 2764765095, ; 397: Microsoft.Maui.dll => 0xa4caf7a7 => 186
	i32 2765824710, ; 398: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 399: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 265
	i32 2778768386, ; 400: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 256
	i32 2779977773, ; 401: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 244
	i32 2788224221, ; 402: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 222
	i32 2801831435, ; 403: Microsoft.Maui.Graphics => 0xa7008e0b => 188
	i32 2802068195, ; 404: uk/Microsoft.Maui.Controls.resources => 0xa7042ae3 => 301
	i32 2803228030, ; 405: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2806116107, ; 406: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 278
	i32 2810250172, ; 407: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 209
	i32 2819470561, ; 408: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 409: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 410: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 244
	i32 2824502124, ; 411: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2831556043, ; 412: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 291
	i32 2838993487, ; 413: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 233
	i32 2849599387, ; 414: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 415: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 256
	i32 2855708567, ; 416: Xamarin.AndroidX.Transition => 0xaa36a797 => 252
	i32 2857259519, ; 417: el/Microsoft.Maui.Controls.resources => 0xaa4e51ff => 277
	i32 2861098320, ; 418: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 419: Microsoft.Maui.Essentials => 0xaa8a4878 => 187
	i32 2870099610, ; 420: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 194
	i32 2875164099, ; 421: Jsr305Binding.dll => 0xab5f85c3 => 261
	i32 2875220617, ; 422: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2883495834, ; 423: ru/Microsoft.Maui.Controls.resources => 0xabdea79a => 296
	i32 2884993177, ; 424: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 220
	i32 2887636118, ; 425: System.Net.dll => 0xac1dd496 => 81
	i32 2899753641, ; 426: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 427: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 428: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 429: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 430: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2916838712, ; 431: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 257
	i32 2919462931, ; 432: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 433: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 196
	i32 2936416060, ; 434: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 435: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 436: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2959614098, ; 437: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 438: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 439: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 440: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 216
	i32 2987532451, ; 441: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 247
	i32 2996846495, ; 442: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 229
	i32 3015216013, ; 443: Aula02 => 0xb3b88b8d => 0
	i32 3016983068, ; 444: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 249
	i32 3023353419, ; 445: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 446: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 224
	i32 3038032645, ; 447: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 306
	i32 3056245963, ; 448: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 246
	i32 3057625584, ; 449: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 237
	i32 3059408633, ; 450: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 451: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3075834255, ; 452: System.Threading.Tasks => 0xb755818f => 144
	i32 3077302341, ; 453: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 284
	i32 3090735792, ; 454: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 455: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 456: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 457: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 458: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 459: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 460: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 461: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 462: GoogleGson.dll => 0xbba64c02 => 173
	i32 3159123045, ; 463: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 464: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 465: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 238
	i32 3192346100, ; 466: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 467: System.Web => 0xbe592c0c => 153
	i32 3204380047, ; 468: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 469: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 470: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 215
	i32 3220365878, ; 471: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 472: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 473: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 474: Xamarin.AndroidX.CardView => 0xc235e84d => 203
	i32 3265493905, ; 475: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 476: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 477: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 478: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 479: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 480: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 481: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 482: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3316684772, ; 483: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 484: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 213
	i32 3317144872, ; 485: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 486: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 201
	i32 3345895724, ; 487: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 242
	i32 3346324047, ; 488: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 239
	i32 3358260929, ; 489: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 490: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 194
	i32 3362522851, ; 491: Xamarin.AndroidX.Core => 0xc86c06e3 => 210
	i32 3366347497, ; 492: Java.Interop => 0xc8a662e9 => 168
	i32 3374999561, ; 493: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 243
	i32 3395150330, ; 494: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 495: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 496: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 214
	i32 3428513518, ; 497: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 176
	i32 3429136800, ; 498: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 499: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 500: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 217
	i32 3445260447, ; 501: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 502: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 183
	i32 3463511458, ; 503: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 283
	i32 3471940407, ; 504: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 505: Mono.Android => 0xcf3163e6 => 171
	i32 3479583265, ; 506: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 296
	i32 3485117614, ; 507: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 508: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 509: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 206
	i32 3509114376, ; 510: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 511: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 512: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 513: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3542658132, ; 514: vi/Microsoft.Maui.Controls.resources => 0xd328ac54 => 302
	i32 3560100363, ; 515: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 516: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3596930546, ; 517: de/Microsoft.Maui.Controls.resources => 0xd664cdf2 => 276
	i32 3597029428, ; 518: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 192
	i32 3598340787, ; 519: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 520: System.Linq.dll => 0xd715a361 => 61
	i32 3623444314, ; 521: da/Microsoft.Maui.Controls.resources => 0xd7f95f5a => 275
	i32 3624195450, ; 522: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 523: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 241
	i32 3633644679, ; 524: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 196
	i32 3638274909, ; 525: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 526: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 227
	i32 3643854240, ; 527: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 238
	i32 3645089577, ; 528: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3647796983, ; 529: pt-BR/Microsoft.Maui.Controls.resources => 0xd96cf6f7 => 293
	i32 3657292374, ; 530: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 175
	i32 3660523487, ; 531: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3662115805, ; 532: he/Microsoft.Maui.Controls.resources => 0xda4773dd => 281
	i32 3672681054, ; 533: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 534: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 202
	i32 3684561358, ; 535: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 206
	i32 3686075795, ; 536: ms/Microsoft.Maui.Controls.resources => 0xdbb50d93 => 289
	i32 3697841164, ; 537: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 305
	i32 3700866549, ; 538: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 539: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 211
	i32 3716563718, ; 540: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 541: Xamarin.AndroidX.Annotation => 0xdda814c6 => 195
	i32 3724971120, ; 542: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 237
	i32 3732100267, ; 543: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 544: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 545: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 546: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3786282454, ; 547: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 204
	i32 3792276235, ; 548: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 549: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 183
	i32 3802395368, ; 550: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3819260425, ; 551: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 552: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 553: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 554: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 177
	i32 3844307129, ; 555: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 556: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 557: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 558: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 559: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 560: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 561: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 252
	i32 3888767677, ; 562: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 242
	i32 3889960447, ; 563: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 304
	i32 3896106733, ; 564: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 565: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 210
	i32 3901907137, ; 566: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 567: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 568: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 255
	i32 3928044579, ; 569: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 570: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 571: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 240
	i32 3945713374, ; 572: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 573: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 574: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 198
	i32 3959773229, ; 575: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 229
	i32 3980434154, ; 576: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 299
	i32 3987592930, ; 577: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 281
	i32 4003436829, ; 578: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 579: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 197
	i32 4025784931, ; 580: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 581: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 185
	i32 4054681211, ; 582: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 583: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4070331268, ; 584: id/Microsoft.Maui.Controls.resources => 0xf29c5384 => 285
	i32 4073602200, ; 585: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4094352644, ; 586: Microsoft.Maui.Essentials.dll => 0xf40add04 => 187
	i32 4099507663, ; 587: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 588: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 589: Xamarin.AndroidX.Emoji2 => 0xf479582c => 218
	i32 4102112229, ; 590: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 294
	i32 4119206479, ; 591: pl/Microsoft.Maui.Controls.resources => 0xf5861a4f => 292
	i32 4125707920, ; 592: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 289
	i32 4126470640, ; 593: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 176
	i32 4127667938, ; 594: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 595: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 596: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4151237749, ; 597: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 598: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 599: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 600: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 601: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 602: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 234
	i32 4185676441, ; 603: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 604: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 605: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4234116406, ; 606: pt/Microsoft.Maui.Controls.resources => 0xfc5f7d36 => 294
	i32 4256097574, ; 607: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 211
	i32 4258378803, ; 608: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 233
	i32 4260525087, ; 609: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 610: Microsoft.Maui.Controls.dll => 0xfea12dee => 184
	i32 4274976490, ; 611: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 612: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 234
	i32 4294763496 ; 613: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 220
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [614 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 230, ; 3
	i32 264, ; 4
	i32 48, ; 5
	i32 80, ; 6
	i32 145, ; 7
	i32 0, ; 8
	i32 273, ; 9
	i32 30, ; 10
	i32 124, ; 11
	i32 188, ; 12
	i32 102, ; 13
	i32 248, ; 14
	i32 303, ; 15
	i32 107, ; 16
	i32 248, ; 17
	i32 139, ; 18
	i32 268, ; 19
	i32 77, ; 20
	i32 124, ; 21
	i32 13, ; 22
	i32 204, ; 23
	i32 132, ; 24
	i32 250, ; 25
	i32 151, ; 26
	i32 302, ; 27
	i32 303, ; 28
	i32 18, ; 29
	i32 202, ; 30
	i32 26, ; 31
	i32 224, ; 32
	i32 1, ; 33
	i32 59, ; 34
	i32 42, ; 35
	i32 91, ; 36
	i32 207, ; 37
	i32 147, ; 38
	i32 226, ; 39
	i32 223, ; 40
	i32 274, ; 41
	i32 54, ; 42
	i32 69, ; 43
	i32 193, ; 44
	i32 83, ; 45
	i32 287, ; 46
	i32 225, ; 47
	i32 286, ; 48
	i32 274, ; 49
	i32 131, ; 50
	i32 55, ; 51
	i32 149, ; 52
	i32 74, ; 53
	i32 145, ; 54
	i32 62, ; 55
	i32 146, ; 56
	i32 306, ; 57
	i32 165, ; 58
	i32 298, ; 59
	i32 208, ; 60
	i32 12, ; 61
	i32 221, ; 62
	i32 125, ; 63
	i32 152, ; 64
	i32 113, ; 65
	i32 166, ; 66
	i32 164, ; 67
	i32 223, ; 68
	i32 236, ; 69
	i32 84, ; 70
	i32 285, ; 71
	i32 279, ; 72
	i32 182, ; 73
	i32 150, ; 74
	i32 282, ; 75
	i32 268, ; 76
	i32 60, ; 77
	i32 178, ; 78
	i32 51, ; 79
	i32 103, ; 80
	i32 114, ; 81
	i32 40, ; 82
	i32 261, ; 83
	i32 259, ; 84
	i32 120, ; 85
	i32 293, ; 86
	i32 52, ; 87
	i32 44, ; 88
	i32 119, ; 89
	i32 213, ; 90
	i32 219, ; 91
	i32 81, ; 92
	i32 136, ; 93
	i32 255, ; 94
	i32 200, ; 95
	i32 8, ; 96
	i32 73, ; 97
	i32 273, ; 98
	i32 155, ; 99
	i32 270, ; 100
	i32 154, ; 101
	i32 92, ; 102
	i32 265, ; 103
	i32 45, ; 104
	i32 288, ; 105
	i32 276, ; 106
	i32 269, ; 107
	i32 109, ; 108
	i32 129, ; 109
	i32 25, ; 110
	i32 190, ; 111
	i32 72, ; 112
	i32 55, ; 113
	i32 46, ; 114
	i32 181, ; 115
	i32 214, ; 116
	i32 22, ; 117
	i32 228, ; 118
	i32 86, ; 119
	i32 43, ; 120
	i32 160, ; 121
	i32 71, ; 122
	i32 241, ; 123
	i32 272, ; 124
	i32 3, ; 125
	i32 42, ; 126
	i32 63, ; 127
	i32 16, ; 128
	i32 53, ; 129
	i32 300, ; 130
	i32 264, ; 131
	i32 105, ; 132
	i32 269, ; 133
	i32 262, ; 134
	i32 225, ; 135
	i32 34, ; 136
	i32 158, ; 137
	i32 85, ; 138
	i32 32, ; 139
	i32 12, ; 140
	i32 304, ; 141
	i32 51, ; 142
	i32 278, ; 143
	i32 56, ; 144
	i32 245, ; 145
	i32 36, ; 146
	i32 177, ; 147
	i32 275, ; 148
	i32 263, ; 149
	i32 198, ; 150
	i32 35, ; 151
	i32 58, ; 152
	i32 232, ; 153
	i32 173, ; 154
	i32 17, ; 155
	i32 266, ; 156
	i32 164, ; 157
	i32 231, ; 158
	i32 180, ; 159
	i32 258, ; 160
	i32 153, ; 161
	i32 254, ; 162
	i32 239, ; 163
	i32 279, ; 164
	i32 292, ; 165
	i32 200, ; 166
	i32 29, ; 167
	i32 52, ; 168
	i32 290, ; 169
	i32 259, ; 170
	i32 5, ; 171
	i32 249, ; 172
	i32 253, ; 173
	i32 205, ; 174
	i32 270, ; 175
	i32 197, ; 176
	i32 216, ; 177
	i32 85, ; 178
	i32 258, ; 179
	i32 61, ; 180
	i32 112, ; 181
	i32 57, ; 182
	i32 245, ; 183
	i32 99, ; 184
	i32 19, ; 185
	i32 209, ; 186
	i32 111, ; 187
	i32 101, ; 188
	i32 102, ; 189
	i32 104, ; 190
	i32 262, ; 191
	i32 71, ; 192
	i32 38, ; 193
	i32 32, ; 194
	i32 103, ; 195
	i32 73, ; 196
	i32 9, ; 197
	i32 123, ; 198
	i32 46, ; 199
	i32 199, ; 200
	i32 182, ; 201
	i32 9, ; 202
	i32 43, ; 203
	i32 4, ; 204
	i32 246, ; 205
	i32 282, ; 206
	i32 277, ; 207
	i32 31, ; 208
	i32 138, ; 209
	i32 92, ; 210
	i32 93, ; 211
	i32 297, ; 212
	i32 280, ; 213
	i32 49, ; 214
	i32 141, ; 215
	i32 112, ; 216
	i32 140, ; 217
	i32 298, ; 218
	i32 215, ; 219
	i32 305, ; 220
	i32 115, ; 221
	i32 263, ; 222
	i32 157, ; 223
	i32 76, ; 224
	i32 79, ; 225
	i32 235, ; 226
	i32 37, ; 227
	i32 257, ; 228
	i32 219, ; 229
	i32 212, ; 230
	i32 64, ; 231
	i32 138, ; 232
	i32 15, ; 233
	i32 116, ; 234
	i32 251, ; 235
	i32 260, ; 236
	i32 207, ; 237
	i32 48, ; 238
	i32 70, ; 239
	i32 80, ; 240
	i32 126, ; 241
	i32 94, ; 242
	i32 121, ; 243
	i32 267, ; 244
	i32 26, ; 245
	i32 228, ; 246
	i32 97, ; 247
	i32 28, ; 248
	i32 203, ; 249
	i32 295, ; 250
	i32 149, ; 251
	i32 169, ; 252
	i32 4, ; 253
	i32 98, ; 254
	i32 33, ; 255
	i32 93, ; 256
	i32 250, ; 257
	i32 178, ; 258
	i32 21, ; 259
	i32 41, ; 260
	i32 170, ; 261
	i32 221, ; 262
	i32 235, ; 263
	i32 290, ; 264
	i32 266, ; 265
	i32 260, ; 266
	i32 240, ; 267
	i32 2, ; 268
	i32 284, ; 269
	i32 134, ; 270
	i32 111, ; 271
	i32 179, ; 272
	i32 301, ; 273
	i32 190, ; 274
	i32 58, ; 275
	i32 95, ; 276
	i32 39, ; 277
	i32 201, ; 278
	i32 25, ; 279
	i32 94, ; 280
	i32 89, ; 281
	i32 99, ; 282
	i32 10, ; 283
	i32 87, ; 284
	i32 100, ; 285
	i32 287, ; 286
	i32 247, ; 287
	i32 174, ; 288
	i32 267, ; 289
	i32 192, ; 290
	i32 7, ; 291
	i32 283, ; 292
	i32 232, ; 293
	i32 272, ; 294
	i32 189, ; 295
	i32 286, ; 296
	i32 88, ; 297
	i32 227, ; 298
	i32 154, ; 299
	i32 33, ; 300
	i32 116, ; 301
	i32 82, ; 302
	i32 20, ; 303
	i32 11, ; 304
	i32 162, ; 305
	i32 3, ; 306
	i32 288, ; 307
	i32 186, ; 308
	i32 295, ; 309
	i32 181, ; 310
	i32 179, ; 311
	i32 84, ; 312
	i32 271, ; 313
	i32 64, ; 314
	i32 254, ; 315
	i32 143, ; 316
	i32 236, ; 317
	i32 157, ; 318
	i32 41, ; 319
	i32 117, ; 320
	i32 175, ; 321
	i32 191, ; 322
	i32 280, ; 323
	i32 243, ; 324
	i32 299, ; 325
	i32 131, ; 326
	i32 75, ; 327
	i32 66, ; 328
	i32 172, ; 329
	i32 195, ; 330
	i32 143, ; 331
	i32 106, ; 332
	i32 151, ; 333
	i32 70, ; 334
	i32 156, ; 335
	i32 300, ; 336
	i32 174, ; 337
	i32 121, ; 338
	i32 127, ; 339
	i32 152, ; 340
	i32 218, ; 341
	i32 141, ; 342
	i32 291, ; 343
	i32 205, ; 344
	i32 20, ; 345
	i32 14, ; 346
	i32 135, ; 347
	i32 75, ; 348
	i32 59, ; 349
	i32 208, ; 350
	i32 167, ; 351
	i32 168, ; 352
	i32 184, ; 353
	i32 15, ; 354
	i32 74, ; 355
	i32 6, ; 356
	i32 23, ; 357
	i32 230, ; 358
	i32 297, ; 359
	i32 189, ; 360
	i32 91, ; 361
	i32 1, ; 362
	i32 136, ; 363
	i32 231, ; 364
	i32 253, ; 365
	i32 134, ; 366
	i32 69, ; 367
	i32 146, ; 368
	i32 271, ; 369
	i32 222, ; 370
	i32 180, ; 371
	i32 88, ; 372
	i32 96, ; 373
	i32 212, ; 374
	i32 217, ; 375
	i32 31, ; 376
	i32 45, ; 377
	i32 226, ; 378
	i32 191, ; 379
	i32 109, ; 380
	i32 158, ; 381
	i32 35, ; 382
	i32 22, ; 383
	i32 114, ; 384
	i32 57, ; 385
	i32 251, ; 386
	i32 144, ; 387
	i32 118, ; 388
	i32 120, ; 389
	i32 110, ; 390
	i32 193, ; 391
	i32 139, ; 392
	i32 199, ; 393
	i32 54, ; 394
	i32 105, ; 395
	i32 185, ; 396
	i32 186, ; 397
	i32 133, ; 398
	i32 265, ; 399
	i32 256, ; 400
	i32 244, ; 401
	i32 222, ; 402
	i32 188, ; 403
	i32 301, ; 404
	i32 159, ; 405
	i32 278, ; 406
	i32 209, ; 407
	i32 163, ; 408
	i32 132, ; 409
	i32 244, ; 410
	i32 161, ; 411
	i32 291, ; 412
	i32 233, ; 413
	i32 140, ; 414
	i32 256, ; 415
	i32 252, ; 416
	i32 277, ; 417
	i32 169, ; 418
	i32 187, ; 419
	i32 194, ; 420
	i32 261, ; 421
	i32 40, ; 422
	i32 296, ; 423
	i32 220, ; 424
	i32 81, ; 425
	i32 56, ; 426
	i32 37, ; 427
	i32 97, ; 428
	i32 166, ; 429
	i32 172, ; 430
	i32 257, ; 431
	i32 82, ; 432
	i32 196, ; 433
	i32 98, ; 434
	i32 30, ; 435
	i32 159, ; 436
	i32 18, ; 437
	i32 127, ; 438
	i32 119, ; 439
	i32 216, ; 440
	i32 247, ; 441
	i32 229, ; 442
	i32 0, ; 443
	i32 249, ; 444
	i32 165, ; 445
	i32 224, ; 446
	i32 306, ; 447
	i32 246, ; 448
	i32 237, ; 449
	i32 170, ; 450
	i32 16, ; 451
	i32 144, ; 452
	i32 284, ; 453
	i32 125, ; 454
	i32 118, ; 455
	i32 38, ; 456
	i32 115, ; 457
	i32 47, ; 458
	i32 142, ; 459
	i32 117, ; 460
	i32 34, ; 461
	i32 173, ; 462
	i32 95, ; 463
	i32 53, ; 464
	i32 238, ; 465
	i32 129, ; 466
	i32 153, ; 467
	i32 24, ; 468
	i32 161, ; 469
	i32 215, ; 470
	i32 148, ; 471
	i32 104, ; 472
	i32 89, ; 473
	i32 203, ; 474
	i32 60, ; 475
	i32 142, ; 476
	i32 100, ; 477
	i32 5, ; 478
	i32 13, ; 479
	i32 122, ; 480
	i32 135, ; 481
	i32 28, ; 482
	i32 72, ; 483
	i32 213, ; 484
	i32 24, ; 485
	i32 201, ; 486
	i32 242, ; 487
	i32 239, ; 488
	i32 137, ; 489
	i32 194, ; 490
	i32 210, ; 491
	i32 168, ; 492
	i32 243, ; 493
	i32 101, ; 494
	i32 123, ; 495
	i32 214, ; 496
	i32 176, ; 497
	i32 163, ; 498
	i32 167, ; 499
	i32 217, ; 500
	i32 39, ; 501
	i32 183, ; 502
	i32 283, ; 503
	i32 17, ; 504
	i32 171, ; 505
	i32 296, ; 506
	i32 137, ; 507
	i32 150, ; 508
	i32 206, ; 509
	i32 155, ; 510
	i32 130, ; 511
	i32 19, ; 512
	i32 65, ; 513
	i32 302, ; 514
	i32 147, ; 515
	i32 47, ; 516
	i32 276, ; 517
	i32 192, ; 518
	i32 79, ; 519
	i32 61, ; 520
	i32 275, ; 521
	i32 106, ; 522
	i32 241, ; 523
	i32 196, ; 524
	i32 49, ; 525
	i32 227, ; 526
	i32 238, ; 527
	i32 14, ; 528
	i32 293, ; 529
	i32 175, ; 530
	i32 68, ; 531
	i32 281, ; 532
	i32 171, ; 533
	i32 202, ; 534
	i32 206, ; 535
	i32 289, ; 536
	i32 305, ; 537
	i32 78, ; 538
	i32 211, ; 539
	i32 108, ; 540
	i32 195, ; 541
	i32 237, ; 542
	i32 67, ; 543
	i32 63, ; 544
	i32 27, ; 545
	i32 160, ; 546
	i32 204, ; 547
	i32 10, ; 548
	i32 183, ; 549
	i32 11, ; 550
	i32 78, ; 551
	i32 126, ; 552
	i32 83, ; 553
	i32 177, ; 554
	i32 66, ; 555
	i32 107, ; 556
	i32 65, ; 557
	i32 128, ; 558
	i32 122, ; 559
	i32 77, ; 560
	i32 252, ; 561
	i32 242, ; 562
	i32 304, ; 563
	i32 8, ; 564
	i32 210, ; 565
	i32 2, ; 566
	i32 44, ; 567
	i32 255, ; 568
	i32 156, ; 569
	i32 128, ; 570
	i32 240, ; 571
	i32 23, ; 572
	i32 133, ; 573
	i32 198, ; 574
	i32 229, ; 575
	i32 299, ; 576
	i32 281, ; 577
	i32 29, ; 578
	i32 197, ; 579
	i32 62, ; 580
	i32 185, ; 581
	i32 90, ; 582
	i32 87, ; 583
	i32 285, ; 584
	i32 148, ; 585
	i32 187, ; 586
	i32 36, ; 587
	i32 86, ; 588
	i32 218, ; 589
	i32 294, ; 590
	i32 292, ; 591
	i32 289, ; 592
	i32 176, ; 593
	i32 50, ; 594
	i32 6, ; 595
	i32 90, ; 596
	i32 21, ; 597
	i32 162, ; 598
	i32 96, ; 599
	i32 50, ; 600
	i32 113, ; 601
	i32 234, ; 602
	i32 130, ; 603
	i32 76, ; 604
	i32 27, ; 605
	i32 294, ; 606
	i32 211, ; 607
	i32 233, ; 608
	i32 7, ; 609
	i32 184, ; 610
	i32 110, ; 611
	i32 234, ; 612
	i32 220 ; 613
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ 45bb7f365f1587a7786d5bbbf0daec075d5aabea"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
