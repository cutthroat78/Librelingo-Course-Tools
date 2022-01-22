# Librelingo-Course-Tools
My sets of unofficial tools to help make [Librelingo](https://github.com/LibreLingo/LibreLingo) courses

## Usage

```
git clone https://github.com/cutthroat78/Librelingo-Course-Tools.git
```

```
cd Librelingo-Course-Tools
```

```
chmod +x ./Librelingo\ Course\ Tools.sh
```

```
./Librelingo\ Course\ Tools.sh {sub-commands}
```
## Sub-Commands
- help: Displays this page
- init: Setups the course (Do this first)
- modules: Sets up your modules
### Usage
```
./Librelingo\ Course\ Tools.sh modules {module names} 
```
#### Example:
```
./Librelingo\ Course\ Tools.sh modules Activities Basics Verbs "More Verbs"
```
How to use:
- skills: Sets up skills for the module specified
### Usage
```
./Librelingo\ Course\ Tools.sh skills {module name} {skill names} 
```
#### Example:
```
./Librelingo\ Course\ Tools.sh skills Basics Animals Food Verbs "Verb Plurals"
```