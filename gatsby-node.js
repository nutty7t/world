exports.createPages = async ({ graphql, actions, reporter }) => {
	const { createPage } = actions;

	const result = await graphql(`
		query {
			allMarkdownRemark {
				edges {
					node {
						id
						html
						frontmatter {
							title
						}
					}
				}
			}
		}
	`);

	if (result.errors) {
		reporter.panicOnBuild("Error while running GraphQL query.");
		return;
	}

	result.data.allMarkdownRemark.edges.forEach((edge) => {
		const id = edge.node.id;
		actions.createPage({
			path: id,
			component: require.resolve("./src/templates/zettel.jsx"),
			context: { id },
		});
	});
};
