{
	name			=> 'Pippijn van Steenhoven',
	slogan		=> 'I doubt, therefore I might be',
	shortname	=> 'Pippijn',
	copyright	=> 'Pippijn van Steenhoven',

	menubar => [
		["Home"],
		[projects => "Projects", [
			[devel => "Developer tools", [
				[clangide => "Clang IDE"],
				[codegen => "Codegen Library"],
				[debuglib => "DebugLib"],
				[perltypes => "PerlTypes"],
				[makequick => "MakeQuick", [
					[project => "Project"],
					[variables => "Variables"],
					[target => "Targets"],
					[template => "Templates"],
					[rules => "Rules"],
				]],
				[obuild => "OBuild"],
				[mlsmoke => "OCaml Smoke"],
				[widget => "OCaml Widgets"],
				[ucslib => "UCS Library"],
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
				['lina-irc' => "Lina IRC"],
				[purplebee => "Purplebee"],
				[json => "pa_json"],
				[unpack => "pa_unpack"],
				[web => "Website", [
					[generator => "Generator"],
				]],
			]],
			[lang => "Languages", [
				[aldor => "Aldor", [
					[online => "Online"],
					[changes => "Changes"],
					#[install => "Download/Install"],
					#[testrun => "Test Run"],
					#[profile => "Profiling"],
					#[errorlogs => "Error logs"],
					#[licence => "Licence"],
				]],
				[ccparse => "CParseParse", [
					[online => "Online"],
					[bugs => "Bugs"],
				]],
				[cparser => "C Parser", [
					[online => "Online"],
				]],
				[glr => "GLR Parser", [
					[bugs => "Bugs"],
				]],
				[hm => "Hindley-Milner", [
					[online => "Online"],
				]],
				[jmlc => "JML"],
				[merr => "Meta-Error"],
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
				[treematch => "Treematch", [
					[bugs => "Bugs"],
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
