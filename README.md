# intrapair.mobile# Intrapair task

  ## Overview 
  This is the **Intrapair mobile** , written with pure [Flutter](https://flutter.dev/).
  
  
  
  ## Project Description
  Intrapair is a mobile application that allows users to create account and set up their profile.


  ## Design 
   The figma design that will be implemented for this project can be found [here](https://www.figma.com/file/UwPEnVS1aSvsSyDlg45tq3/Untitled?type=design&node-id=1-53&t=GS7yytQdDsOByEMh-0
) 

   ## Hosted App Link
   _N.B Once there is a stable build, it would be hosted on appetize and the link would be appended_
   [Here]()

  ## Code Style
  **i. Naming Convention:**

|Naming Convention|Effective Style|Example|   
|-----------------|---------------|-------|
|Classes, enum types,typedefs,and type parameters,etensions|PascalCase|An example is LoginScreen|
|Libraries, packages, directories, and source files, import prefixes|snake_case|An example is login_screen|
|Class members, top-level definitions, variables, parameters, and named parameters, constants|camelCase|An example is verifiedUser|


## Project Architecture and State Management
This project will follow a [MVVM pattern](https://www.geeksforgeeks.org/mvvm-model-view-viewmodel-architecture-pattern-in-android/) with a slight variation due to the peculiarities of the Flutter Framework. This project will follow the [Stacked MVVM Archiecture by Dane Mackier](www.filledstacks.com), for flutter. Its pattern follows the concept of MVVM architectural pattern just without [Two way binding](https://developer.android.com/topic/libraries/data-binding/two-way). The state management to be used with this project is provider, Mainly because it is the recommended state management to be used with **Stacked Architecture**


  ### Directory stucture and usecases

|Project Folders|Effective Style|Example|   
|-----------------|---------------|-------|
|App|Should contain only the configuration of the app|app.dart.|
|Core||An example is home_screen|
|Class members, top-level definitions, variables, parameters, and named parameters, constants|camelCase|An example is verifiedUser|

lib                     
├─ app                  
│  └─ app.dart  
   -     Should contain only the configuration of the app
   -     Note: This file is where all the view and dependencies should be declared.
├─ ui                 
│  ├─ common 
-     This folder will contain on static const members, e.g AppColors, AppStrings, AppImagesPath, LocalStorageKeys, ApiKeys.       
│  ├─ extensions
-     This folder should contain extension method such as DateFormatter, StringExtension, ValidationExtension. 
-     Note: Any method that has the tendensy to be used repeatedly in different views should be converted to extension methods. 
│  ├─ hooks
-     This folder should contain custom hooks. 
-     Note: Any package that that would require turning a stateless widget into stateful widget should be converted into a hook. e.g Youtube Player view should be converted to a hook and its lifecycle should be properly managed. "https://www.turing.com/kb/code-reuse-maximization-with-flutter-hooks" is a link to learn how to create custom hooks.             
 
│  ├─ mixins
-     This folder should contain mixin methods.
│  ├─ theme 
-    This folder should contain all things theming and colors of this project.
│  └─ utilities   
-     This folder should only contain utility methods such as generateUniqueId, generateReferCode.    
├─ services  
-     This folder will contain the necessary repositories and  service files, such as NetworkService, UserService.  
-     Note: Any logic that needs to use external apis(e.g SharePlus library uses ACTION_SEND Intent on Android and UIActivityViewController on iOS to display respective platform's share dialog or ImagePicker library which enables the app to select images from the platform file system) or method channels should be classified as a service.     
├─ views 
-     Here each feature of this project will be create folder which would contain the view and viewmodel of each feature.  
-     Note: On no account should viewmodels know about eachother. Every View should have its viewmodel. e.g. home/home_view && home_viewmodel.                 
│  └─ shared            
│     ├─ dumb_widgets   
-    This should contain reusable widgets that have no state and only helps in reducing code repeation.
│     └─ smart_widgets
-       This should contain reusable widgets that have a state and only helps in reducing code repeation.
-       Note: Special reuseable like this should have its own viewmodel.
└─ main.dart  
-     This is where a minimal config is done to get the app running.          
