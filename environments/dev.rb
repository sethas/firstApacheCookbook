name "dev"
description "Dev environment"
cookbook "apache", "= 0.1.5"
override_attributes ({
	"author" => {
		"name" => "my new author name"
	}
})
