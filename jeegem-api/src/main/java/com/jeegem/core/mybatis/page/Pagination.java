package com.jeegem.core.mybatis.page;

import java.util.List;

/**
 * 
 * 开发团队：jeegem <p>
 * 
 *   <p>
 * <p>
 * 
 * 分页的对象，以及分页页码输出
 * 
 * <p>
 * 
 * 区分　责任人　日期　　　　说明<br/>
 * 创建　jeegem　2016年6月2日 　<br/>
 *
 * @author jeegem
 * imjcoder@163.com
 * @version 1.0,2016年6月2日 <br/>
 * 
 */
@SuppressWarnings("serial")
public class Pagination<T> extends SimplePage implements java.io.Serializable,
		Paginable {

	public Pagination() {
	}

	public Pagination(int pageNo, int pageSize, int totalCount) {
		super(pageNo, pageSize, totalCount);
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public Pagination(int pageNo, int pageSize, int totalCount, List list) {
		super(pageNo, pageSize, totalCount);
		this.list = list;
	}

	public int getFirstResult() {
		return (pageNo - 1) * pageSize;
	}

	/**
	 * 当前页的数据
	 */
	private List<T> list;

	public List<T> getList() {
		return list;
	}

	public void setList(List<T> list) {
		this.list = list;
	}

	
	/**jeegem SEO 翻页版本*/
	public String getWebPage(String page){
		StringBuffer pageHtml = new StringBuffer("<ul class='pagination'>");
		if(this.getPageNo()>1){
			if(this.getPageNo()>5){
				pageHtml.append("<li><a href='javascript:;' onclick='"+ page +"'>首页</a></li>");
			}
			pageHtml.append("<li><a href='"+ page +""+(this.getPageNo() -1) +"'>上一页</a></li>");
		}
		for (int i = (this.getPageNo()-2<=0?1:this.getPageNo()-2),no = 1; i <= this.getTotalPage()&& no <6 ; i++,no++) {
			if (this.getPageNo() == i) {
				pageHtml.append("<li class='active'><a href='javascript:void(0);' >"+i+"</a></li>");
			}else{
				pageHtml.append("<li><a href='"+ page +""+ i +"'>"+i+"</a></li>");
			}
		}
		if(this.getPageNo() < this.getTotalPage()){
			pageHtml.append("<li><a href='"+ page +""+(this.getPageNo()+1) +"'>下一页</a></li>");
		}
		pageHtml.append("</ul>");
		return pageHtml.toString();
	}
	
	
	
	/**Ajxa翻页*/
	public String getSiAjaxPageHtml(){
		StringBuffer pageHtml = new StringBuffer("<ul class='pagination'>");
		if(this.getPageNo()>1){
			if(this.getPageNo()>5){
				pageHtml.append("<li><a href='javascript:;' onclick='goPageByAjax(1)'>首页</a></li>");
			}
			pageHtml.append("<li><a href='javascript:;'  onclick='goPageByAjax("+(this.getPageNo() - 1)+")'>上一页</a></li>");
		}
		for (int i = (this.getPageNo()-2<=0?1:this.getPageNo()-2),no = 1; i <= this.getTotalPage()&& no <6 ; i++,no++) {
			if (this.getPageNo() == i) {
				pageHtml.append("<li class='active'><a href='javascript:void(0);' >"+i+"</a></li>");
			}else{
				pageHtml.append("<li><a href='javascript:;' onclick='goPageByAjax("+i+")'>"+i+"</a></li>");
			}
		}
		if(this.getPageNo() < this.getTotalPage()){
			pageHtml.append("<li><a href='javascript:;'  onclick='goPageByAjax("+(this.getPageNo() + 1)+")'>下一页</a></li>");
		}
		pageHtml.append("</ul>");
		return pageHtml.toString();
	}
	
	/**普通翻页*/
	public String getPageHtml(){
		StringBuffer pageHtml = new StringBuffer("<ul class='pagination'>");
		if(this.getPageNo()>1){
			if(this.getPageNo()>5){
				pageHtml.append("<li><a href='javascript:;' onclick='_submitform(1)'>首页</a></li>");
			}
			pageHtml.append("<li><a href='javascript:;'  onclick='_submitform("+(this.getPageNo() - 1)+")'>上一页</a></li>");
		}
		for (int i = (this.getPageNo()-2<=0?1:this.getPageNo()-2),no = 1; i <= this.getTotalPage()&& no <6 ; i++,no++) {
			if (this.getPageNo() == i) {
				pageHtml.append("<li class='active'><a href='javascript:void(0);' >"+i+"</a></li>");
			}else{
				pageHtml.append("<li><a href='javascript:;' onclick='_submitform("+i+")'>"+i+"</a></li>");
			}
		}
		if(this.getPageNo() < this.getTotalPage()){
			pageHtml.append("<li><a href='javascript:;'  onclick='_submitform("+(this.getPageNo() + 1)+")'>下一页</a></li>");
		}
		pageHtml.append("</ul>");
		pageHtml.append("<script>");
		pageHtml.append("	function _submitform(pageNo){");
		pageHtml.append("		$(\"#formId\").append($(\"<input type='hidden' value='\" + pageNo +\"' name='pageNo'>\")).submit();");
		pageHtml.append("	}");
		pageHtml.append("</script>");
		
		return pageHtml.toString();
	}
	
	/**普通翻页*/
	public String getJeeGemPageHtml(){
		StringBuffer s = new StringBuffer("");
		if (this.getTotalPage() > 0) {
			if (this.getPageNo() >= 1) {
				
				if(this.getPageNo() == 1){
					
					s.append("<li class='disabled'><a href='javascript:void(0);'><i class='fa fa-angle-double-left'></i></a></li>");
				}else if (this.getPageNo() > 1) {
					s.append("<li ><a href='javascript:void(0);' onclick='_submitform("+(this.getPageNo() - 1)+")'><i class='fa fa-angle-double-left'></i></a></li>");
					
				}
			}
			
			int beginPage = this.getPageNo() - 3 < 1 ? 1 : this.getPageNo() - 3;
			if (beginPage <= this.getTotalPage()) {
				
				int i = beginPage;
				for (int j = 0; (i <= this.getTotalPage()) && (j < 6); j++) {
					if (i == this.getPageNo()) {
						s.append("<li class='active'><a href='javascript:void(0);' >"+i+"</a></li>");//当前页
					} else {
						s.append("<li><a href='javascript:void(0);' onclick='_submitform("+( i )+")'>" + i + "</a></li>");
					}
					i++;
				}
				
			}
			
			if (this.getPageNo() < this.getTotalPage()) {
				s.append("<li><a href='javascript:void(0);' onclick='_submitform("+(this.getPageNo() + 1)+")'><i class='fa fa-angle-double-right'></i></a></li>");
			}else if(this.getPageNo() == this.getTotalPage()){
				s.append("<li class='disabled'><a href='javascript:void(0);' ><i class='fa fa-angle-double-right'></i></a></li>");
			}
			
			s.append("<script>");
			s.append("	function _submitform(pageNo){");
			s.append("		$(\"#formId\").append($(\"<input type='hidden' value='\" + pageNo +\"' name='pageNo'>\")).submit();");
			s.append("	}");
			s.append("</script>");
		}
		return s.toString();
	}
	
}
