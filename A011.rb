$d,$n=gets.chomp.split.map(&:to_i)
$a=Array.new($n) 
where=0 # 現在地
$answer=Array.new($n)
ans=""
$n.times do |i|
	$a[i]=gets.to_i # a_iのリスト
end

def dfs(t,where,ans)
	# 深さ優先検索
	# dを超えたら検索終了
	return false if where.abs>$d

	if t==$n&&where.abs<=$d
		$answer<<ans
		puts $answer.join
		return true
	end 
	return true if dfs(t+1,where+$a[t],ans+"R")
	return true if dfs(t+1,where-$a[t],ans+"L")
	return false
end

dfs(0,0,ans)