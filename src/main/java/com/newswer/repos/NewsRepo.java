package com.newswer.repos;

import com.newswer.domain.News;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface NewsRepo  extends CrudRepository<News, Long> {

    List<News> findByTag(String tag);
}
