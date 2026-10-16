#товары с названием категории
select p.name_pr, p.articul, k.name_kategorii
from products p
join kategorii_productov k on p.id_kategorii = k.id;

#все заказы - кто, что и когда покупал
select z.id, z.vrema_pokupki, pk.name_pokupatelya, pr.name_pr
from zakazy z
join pokupateli pk on z.id_pokupatelya = pk.id
join products pr on z.id_producta = pr.id;

#покупи конкретного покупателя
select pr.name_pr, z.vrema_pokupki
from zakazy z
join products pr on z.id_producta = pr.id
where z.id_pokupatelya = 1;
