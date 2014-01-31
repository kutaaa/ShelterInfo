# coding: utf-8

# name,address,tel,lat,lng,capacity,type,floorage,day
names = ["青森商業","higasikoukou","aokou"]
adds = ["東造道一丁目6-1","原別三丁目1-1","馬屋尻字清水流204-1"]
tels = ["017-736-6116","017-736-2444","017-737-3600"]
lats = [40.832236,40.835822,40.844327]
lngs = [140.793255,140.804448,140.821596]
capacitys = [85,100,90]
types = ["普通","一時","緊急"]
floorages = [100.0,399.0,500.0]

0.upto(2) do |i|
	shelter = Shelter.create(
		name: names[i],
		address: adds[i],
		tel: tels[i],
		lat: lats[i],
		lng: lngs[i],
		type: types[i],
		capacity: capacitys[i]
	)
	puts shelter
end
