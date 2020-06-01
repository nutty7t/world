import React from 'react'
import { graphql } from 'gatsby'

export default ({ data }) => {
	const post = data.markdownRemark

	return (
		<div>
			<h1>{post.frontmatter.title}</h1>
			<div dangerouslySetInnerHTML={{ __html: post.html }}></div>
		</div>
	)
}

export const query = graphql`
	query($id: String!) {
		markdownRemark(id: { eq: $id }) {
			id
			html
			frontmatter {
				title
			}
		}
	}
`
