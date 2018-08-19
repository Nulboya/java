package blog.infrastructure.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import blog.domain.model.entity.Tag;

public interface TagDao extends JpaRepository<Tag, Integer> {

	Tag findByName(String tagName);
}
