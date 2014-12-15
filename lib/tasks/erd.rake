desc 'Generate Entity Relationship Diagram'
task :generate_erd do
	system "erd --inheritance --attributes=foreign_keys,content --filetype=png"
end