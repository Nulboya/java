package blog.domain.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import blog.domain.model.entity.Post;
import blog.domain.repository.PostSearchRepository;
import blog.domain.service.PostSearchService;

@Service("title")
public class PostTitleSearchService implements PostSearchService {

	@Autowired
	private PostSearchRepository postSearchRepository;

	@Override
	public Page<Post> findPost(String query, Pageable pageable) {

		return postSearchRepository.findPostByTitle(query, pageable);
	}
}
