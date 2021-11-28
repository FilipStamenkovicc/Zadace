#nazivi knjiga koji su izdali ne aktivni izdavači

select a.naslov
from katalog a inner join izdavac b on a.izdavac = b.sifra
where b.aktivan is null;

#izvuci sve autore koji u svojim naslovima knjiga nemaju slovo b

select b.ime,b.prezime
from katalog a inner join autor b on a.autor = b.sifra
where a.naslov not like '%b%';

#izvuci sve aktivne izdavace koji su izdali knjige u Zagrebu

select b.naziv,b.aktivan
from katalog a inner join izdavac b on a.izdavac = b.sifra
inner join mjesto c on a.mjesto = c.sifra 
where c.postanskiBroj = 10000 and b.aktivan = 1;

# sakila baza
#izvucite sve nazive zemalja čiji gradovi nemaju definiranu adresu

select b.country
from country b inner join city a on b.country_id = a.country_id 
inner join address c on a.city_id = c.city_id
where c.address2 is null;
