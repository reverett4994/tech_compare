module ApplicationHelper
	## http://railscasts.com/episodes/228-sortable-table-columns?autoplay=true
	def sortable (column,title=nil)
		title||=column.titleize
		css_class=column==params[:sort] ? "current #{params[:direction]}" : nil
		direction= column==params[:sort]&&params[:direction]=='asc' ? 'desc' : 'asc'
		link_to title,{:sort=>column,:direction=> direction},{:class=>css_class}
		
	end
end
