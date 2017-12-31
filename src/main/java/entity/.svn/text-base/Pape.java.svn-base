package entity;

import java.util.ArrayList;
import java.util.List;

public class Pape<T> {
	private int pageNo;
	private int pageSize = 5;
	private int rowSize;
	private int totalPage;
	private int nextPageNo;
	private int prePageNo;
	private List<T> pageList = new ArrayList<T>();

	public Pape() {
	}

	public Pape(int pageNo, int pageSize, int rowSize, int totalPage,
			int nextPageNo, int prePageNo, List<T> pageList) {
		super();
		this.pageNo = pageNo;
		this.pageSize = pageSize;
		this.rowSize = rowSize;
		this.totalPage = totalPage;
		this.nextPageNo = nextPageNo;
		this.prePageNo = prePageNo;
		this.pageList = pageList;
	}

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
		if (rowSize % pageSize == 0) {

			totalPage = rowSize / pageSize;
		} else {
			totalPage = rowSize / pageSize + 1;
		}
		
		if(pageNo-1<1){
			prePageNo=1;
		}else{
			prePageNo=pageNo-1;
		}
		if(pageNo+1>totalPage){
			pageNo=totalPage;
			/*nextPageNo=totalPage;*/
		}else{
			nextPageNo=pageNo+1;
		}
		/*if (totalPage == 1) {
			this.nextPageNo = 1;
			this.prePageNo = 1;
		}
		else if(pageNo<=1){
			this.nextPageNo =pageNo+ 1;
			this.prePageNo = 1;
		}
	
		else{
			this.nextPageNo =pageNo+1;
			this.prePageNo = pageNo-1;
		}
		if(pageNo<=0)
		{this.pageNo=1;
		this.prePageNo =1;
		}*/
		if(pageNo>=totalPage)
		{
			this.pageNo=totalPage;
			
		}
	}

	public int getTotalPage() {
		return totalPage;
	}

	/*
	 * public void setTotalPage(int totalPage) { this.totalPage = totalPage; }
	 */
	public int getNextPageNo() {
		return nextPageNo;
	}

	public void setNextPageNo(int nextPageNo) {
		this.nextPageNo = nextPageNo;
	}

	public int getPrePageNo() {
		return prePageNo;
	}

	public void setPrePageNo(int prePageNo) {
		this.prePageNo = prePageNo;
	}

	public List<T> getPageList() {
		return pageList;
	}

	public void setPageList(List<T> pageList) {
		this.pageList = pageList;
	}

}
