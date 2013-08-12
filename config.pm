{
	name			=> 'Pippijn van Steenhoven',
	slogan		=> 'I doubt, therefore I might be',
	shortname	=> 'Pippijn',

	menubar => [
		["Home"],
		[projects => "Projects", [
			[devel => "Developer tools", [
				[clangide => "Clang IDE"],
				[makequick => "MakeQuick", [
					[project => "Project"],
					[variables => "Variables"],
					[target => "Targets"],
					[template => "Templates"],
					[rules => "Rules"],
				]],
			]],
			[edu => "Education", [
				[gvoc => "GVoc"],
			]],
			[games => "Games", [
				[quake3 => "Quake 3"],
				[deliantra => "Deliantra"],
			]],
			[net => "Network", [
				[groovy => "Grooveshark"],
				[purplebee => "Purplebee"],
				[website => "This Website"],
			]],
			[lang => "Languages", [
				[aldor => "Aldor", [
					[changes => "Changes"],
					#[install => "Download/Install"],
					#[testrun => "Test Run"],
					#[profile => "Profiling"],
					#[errorlogs => "Error logs"],
					#[licence => "Licence"],
				]],
				[cparser => "C Parser", [
					[online => "Online"],
				]],
				[jmlc => "JML"],
				[libcdk => "CDK library"],
				[rasm => "Runtime assembler"],
				#[reflect => "Reflect"],
				[safe => "Safe C", [
					[ideas => "Future ideas", [
						[compiler => "Compiler", [
							[bison => "Bison"],
							[colour => "Colours"],
							['const-rtti' => "Const RTTI"],
							[inttypes => "Integer types"],
							[rtti => "RTTI"],
							[s11n => "Serialisation"],
							[warnings => "Warnings"],
						]],
						[language => "Language", [
							[cfold => "Constant folding"],
							['common-data' => "Inheritance"],
							[iterators => "Iterators"],
							[lambda => "Lambda"],
							[modules => "Modules"],
							[operators => "Operators"],
							[overload => "Overloading"],
						]],
						[runtime => "Runtime", [
							[gc => "Garbage collection"],
							[rtti => "Reflection"],
						]],
					]],
				]],
				[xul => "XUL Projects"],
				[yaccpp => "YACC Preprocessor"],
			]],
			[robotics => "Robotics", [
				[camnavi => "Camera navigation"],
				[navigation => "Path navigation"],
			]],
			[system => "Systems", [
				[kernel => "Microkernel"],
			]],
		]],
		[opinions => "Opinions", [
			[buildsys => "Build systems"],
		]],
		["programming" => "Programming", [
			['data-hiding' => "Data hiding"],
			[c => "C", [
				[strings => "Strings"],
			]],
			[cpp => "C++", [
				[properties => "Properties"],
			]],
		]],
		[links => "Links"],
		[contact => "Contact"],
	],
}

# vim:noexpandtab