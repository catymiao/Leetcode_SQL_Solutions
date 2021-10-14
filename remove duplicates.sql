select id1,id2 from duplicate
group by id1, id2 
having count(id2)>1
