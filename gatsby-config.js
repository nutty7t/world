module.exports = {
	plugins: [
		"gatsby-plugin-purescript",
		"gatsby-plugin-react-helmet",
		"gatsby-transformer-remark",
		{
			resolve: "gatsby-plugin-alias-imports",
			options: {
				alias: {
					"@": "src",
					λ: "src/lambda",
					μ: "src/services",
				},
				extensions: ["js", "jsx", "ts", "tsx"],
			},
		},
		{
			resolve: "gatsby-source-filesystem",
			options: {
				name: "zettels",
				path: `${__dirname}/src/services/zettels/data/`,
			},
		},
	],
};
