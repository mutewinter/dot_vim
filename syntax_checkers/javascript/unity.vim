if exists("g:loaded_syntastic_javascript_unityscript_checker")
  finish
endif
let g:loaded_syntastic_javascript_unityscript_checker = 1

let s:save_cpo = &cpo
set cpo&vim

function! SyntaxCheckers_javascript_unityscript_GetLocList() dict
  let dependencies = ''

  for depedency in glob('Assets/**/*.js', 1, 1)
    " Filter the current file from the list of dependencies
    if @% != depedency
      let dependencies .= ' ' . depedency
    endif
  endfor

  let baseCommandArray = [
    \"/Applications/Unity/Unity.app/Contents/Frameworks/Mono/lib/mono/unity/us.exe",
    \"-debug",
    \"-target:library",
    \"-i:UnityEngine",
    \"-i:System.Collections",
    \"-base:UnityEngine.MonoBehaviour",
    \"-nowarn:BCW0016",
    \"-nowarn:BCW0003",
    \"-method:Main",
    \"-out:Temp/Assembly-UnityScript.dll",
    \"-x-type-inference-rule-attribute:UnityEngineInternal.TypeInferenceRuleAttribute",
    \"-define:UNITY_5_1_1",
    \"-define:UNITY_5_1",
    \"-define:UNITY_5",
    \"-define:ENABLE_NEW_BUGREPORTER",
    \"-define:ENABLE_2D_PHYSICS",
    \"-define:ENABLE_4_6_FEATURES",
    \"-define:ENABLE_AUDIO",
    \"-define:ENABLE_CACHING",
    \"-define:ENABLE_CLOTH",
    \"-define:ENABLE_DUCK_TYPING",
    \"-define:ENABLE_FRAME_DEBUGGER",
    \"-define:ENABLE_GENERICS",
    \"-define:ENABLE_HOME_SCREEN",
    \"-define:ENABLE_IMAGEEFFECTS",
    \"-define:ENABLE_LIGHT_PROBES_LEGACY",
    \"-define:ENABLE_MICROPHONE",
    \"-define:ENABLE_MULTIPLE_DISPLAYS",
    \"-define:ENABLE_PHYSICS",
    \"-define:ENABLE_PHYSICS_PHYSX3",
    \"-define:ENABLE_PLUGIN_INSPECTOR",
    \"-define:ENABLE_SHADOWS",
    \"-define:ENABLE_SINGLE_INSTANCE_BUILD_SETTING",
    \"-define:ENABLE_SPRITES",
    \"-define:ENABLE_TERRAIN",
    \"-define:ENABLE_UNET",
    \"-define:ENABLE_UNITYEVENTS",
    \"-define:ENABLE_VR",
    \"-define:ENABLE_WEBCAM",
    \"-define:ENABLE_WWW",
    \"-define:ENABLE_CLOUD_SERVICES",
    \"-define:ENABLE_CLOUD_SERVICES_ANALYTICS",
    \"-define:ENABLE_CLOUD_SERVICES_UNET",
    \"-define:ENABLE_CLOUD_LICENSE",
    \"-define:ENABLE_AUDIOMIXER_SUSPEND",
    \"-define:ENABLE_EDITOR_METRICS",
    \"-define:INCLUDE_DYNAMIC_GI",
    \"-define:INCLUDE_GI",
    \"-define:INCLUDE_IL2CPP",
    \"-define:INCLUDE_DIRECTX12",
    \"-define:PLATFORM_SUPPORTS_MONO",
    \"-define:RENDER_SOFTWARE_CURSOR",
    \"-define:ENABLE_LOCALIZATION",
    \"-define:UNITY_STANDALONE_OSX",
    \"-define:UNITY_STANDALONE",
    \"-define:ENABLE_SUBSTANCE",
    \"-define:ENABLE_GAMECENTER",
    \"-define:ENABLE_TEXTUREID_MAP",
    \"-define:ENABLE_RUNTIME_GI",
    \"-define:ENABLE_MOVIES",
    \"-define:ENABLE_NETWORK",
    \"-define:ENABLE_CRUNCH_TEXTURE_COMPRESSION",
    \"-define:ENABLE_WEBSOCKET_HOST",
    \"-define:ENABLE_MONO",
    \"-define:ENABLE_PROFILER",
    \"-define:DEBUG",
    \"-define:TRACE",
    \"-define:UNITY_ASSERTIONS",
    \"-define:UNITY_EDITOR",
    \"-define:UNITY_EDITOR_64",
    \"-define:UNITY_EDITOR_OSX",
    \"-r:'/Applications/Unity/Unity.app/Contents/Frameworks/Managed/UnityEngine.dll'",
    \"-r:'/Applications/Unity/Unity.app/Contents/UnityExtensions/Unity/UnityAnalytics/UnityEngine.Analytics.dll'",
    \"-r:'/Applications/Unity/Unity.app/Contents/UnityExtensions/Unity/Networking/UnityEngine.Networking.dll'",
    \"-r:'/Applications/Unity/Unity.app/Contents/UnityExtensions/Unity/GUISystem/UnityEngine.UI.dll'",
    \"-r:'/Applications/Unity/Unity.app/Contents/Frameworks/Managed/UnityEditor.dll'",
    \"-r:'/Applications/Unity/Unity.app/Contents/PlaybackEngines/iOSSupport/UnityEditor.iOS.Extensions.Xcode.dll'",
    \"-i:UnityEditor"
    \]
  let baseCommand = join(baseCommandArray, " ")
  let finalCommand = baseCommand . ' ' . dependencies

  let makeprg = self.makeprgBuild({ 'args_after': baseCommand . dependencies })

  let errorformat  = '%f(%l\,%c): %m'

  return SyntasticMake({
        \ 'makeprg': makeprg,
        \ 'errorformat': errorformat })
  })
endfunction

call g:SyntasticRegistry.CreateAndRegisterChecker({
      \ 'filetype': 'javascript',
      \ 'name': 'unityscript',
      \ 'exec': '/Applications/Unity/Unity.app/Contents/Frameworks/Mono/bin/mono' })

let &cpo = s:save_cpo
unlet s:save_cpo
