module.exports = {
	plugins: [
		"gatsby-plugin-purescript",
		{
			resolve: "gatsby-plugin-alias-imports",
			options: {
				alias: {
					"@": "src",
					λ: "src/lambda",
				},
				extensions: ["js", "jsx", "ts", "tsx"],
			},
		},
	],
};
