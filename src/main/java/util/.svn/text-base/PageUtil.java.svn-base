package util;

import java.util.ArrayList;
import java.util.List;

/**
 * 分页信息封装类,通用语各种类型的记录的分页
 * @author Administrator
 *
 */
public class PageUtil<T> {//因为list的泛型不明确,所以要在这里加模糊泛型
	private int pageNo;//当前页数
	private int pageSize;//每一页的数据条数
	private int rowSize;//总结果数,一共有多少条数据
	private int prePage;//上一页
	private int nextPage;//下一页
	private int totalPage;//总页数
	private List<T> list = new ArrayList<T>();//每一页数据的列表,用于页面展示
	
	
	
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getRowSize() {
		return rowSize;
	}
	public void setRowSize(int rowSize) {
		this.rowSize = rowSize;
		if(rowSize%pageSize!=0){
			this.totalPage=rowSize/pageSize+1;
		}else {
			this.totalPage=rowSize/pageSize;
		}
		if (totalPage==1) {
			this.prePage = 1;
			this.nextPage = 1;
		}else if (pageNo<=1) {
			this.prePage=1;
			this.nextPage=pageNo+1;
		}else if (pageNo>=totalPage) {
			this.nextPage = pageNo;
			this.prePage = pageNo-1;
		}else{
			this.nextPage=pageNo+1;
			this.prePage=pageNo-1;
		}
	}
	public int getPrePage() {
		return prePage;
	}
	/*public void setPrePage(int prePage) {
		this.prePage = prePage;
	}*/
	public int getNextPage() {
		return nextPage;
	}
	/*public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}*/
	public int getTotalPage() {
		return totalPage;
	}
/*	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}*/
	public List<T> getList() {
		return list;
	}
	public void setList(List<T> list) {
		this.list = list;
	}	
	
}
