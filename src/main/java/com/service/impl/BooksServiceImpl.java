package com.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dao.BooksDAO;
import com.entity.Books;
import com.service.BooksService;

@Service("booksService")
public class BooksServiceImpl implements BooksService {
	@Autowired
	@Resource
	private BooksDAO booksDAO;

	@Override // 继承接口的新增 返回值0(失败),1(成功)
	public int insertBooks(Books books) {
		return this.booksDAO.insertBooks(books);
	}

	@Override // 继承接口的更新 返回值0(失败),1(成功)
	public int updateBooks(Books books) {
		return this.booksDAO.updateBooks(books);
	}

	@Override // 继承接口的删除 返回值0(失败),1(成功)
	public int deleteBooks(String booksid) {
		return this.booksDAO.deleteBooks(booksid);
	}

	@Override // 继承接口的查询全部
	public List<Books> getAllBooks() {
		return this.booksDAO.getAllBooks();
	}

	@Override // 继承接口的按条件精确查询
	public List<Books> getBooksByCond(Books books) {
		return this.booksDAO.getBooksByCond(books);
	}

	@Override // 继承接口的按条件模糊查询
	public List<Books> getBooksByLike(Books books) {
		return this.booksDAO.getBooksByLike(books);
	}

	@Override // 继承接口的按主键查询 返回Entity实例
	public Books getBooksById(String booksid) {
		return this.booksDAO.getBooksById(booksid);
	}

}
