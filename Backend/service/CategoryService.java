package com.wipro.hrms.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.wipro.hrms.models.Category;
import com.wipro.hrms.repos.CategoryRepository;

@Service
public class CategoryService  {
	
	@Autowired
	private CategoryRepository catrepo;
	
	public List<Category> getAllCategories(){		
		return catrepo.findAll(Sort.by(Sort.Direction.DESC,"catid"));
	}
	
	public void saveCategory(Category cat) {
		if(catrepo.existsById(cat.getCatid())) {
			Category cc=catrepo.findById(cat.getCatid()).get();
			cc.setCatname(cat.getCatname());
			catrepo.save(cc);
		}else {
			catrepo.save(cat);
		}
	}
	
	public Category findByCatId(int id) {
		Optional<Category> cat=catrepo.findById(id);
		return cat.get();
	}
	
	public long generateCatId() {
		return catrepo.count()==0 ? 1 : catrepo.count()+1;
	}
	
	public long totalCategories() {
		return catrepo.count();
	}
}
