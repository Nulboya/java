package blog.domain.service.factory;

import blog.domain.service.PostSearchService;

public interface SearchServiceFactory {

	PostSearchService getSearchService(String selector);
}
