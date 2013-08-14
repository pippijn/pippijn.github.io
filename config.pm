{
	name			=> 'Pippijn van Steenhoven',
	slogan		=> 'I doubt, therefore I might be',
	shortname	=> 'Pippijn',

	menubar => [
		["Home"],
		[projects => "Projects", [
			[devel => "Developer tools", [
				[clangide => "Clang IDE"],
				[debuglib => "DebugLib"],
				[makequick => "MakeQuick", [
					[project => "Project"],
					[variables => "Variables"],
					[target => "Targets"],
					[template => "Templates"],
					[rules => "Rules"],
				]],
				[mlsmoke => "MLSmoke"],
				[ucslib => "UCS Library"],
				[widget => "ML Widgets"],
			]],
			[edu => "Education", [
				[gvoc => "GVoc"],
			]],
			[games => "Games", [
				[quake3 => "Quake 3"],
				[deliantra => "Deliantra"],
				[spring => "Spring RTS"],
			]],
			[net => "Network", [
				[groovy => "Grooveshark"],
				[purplebee => "Purplebee"],
				[website => "This Website"],
				[json => "pa_json"],
				[unpack => "pa_unpack"],
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
				[ccparse => "CParseParse"],
				[cparser => "C Parser", [
					[online => "Online"],
				]],
				[glr => "GLR Parser"],
				[jmlc => "JML"],
				[re2ml => "Re2ML"],
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
				[treematch => "Treematch"],
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
