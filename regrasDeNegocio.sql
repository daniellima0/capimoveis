-- Primeira regra de negocio
create or replace function f_autodelete_corretor() 
returns trigger as $f_autodelete_corretor$
	declare
		vid_corretor int;
	begin
		vid_corretor := OLD.id_corretor;
		
		execute 'delete from tb_visita v where (v.id_corretor = '|| vid_corretor ||')';
		execute 'delete from tb_contrato ct where (ct.id_corretor = '|| vid_corretor ||')';
		
		return new;
	end;
$f_autodelete_corretor$ language plpgsql;

create or replace trigger tr_autodelete_corretor after delete on tb_corretor
	for each row execute function f_autodelete_corretor();

-- Segunda Regra de negocio
--Funcao auxiliar
create or replace function f_verificar_proprietario(chave integer) 
returns boolean as $f_verificar_proprietario$
	declare
		vqnt_imov integer;
	begin
		select count(*) into vqnt_imov from tb_imovel i join tb_proprietario p on i.id_prop = chave;
		
		if vqnt_imov <= 1 then
			return true;
		else
			return false;
		end if;
	end;
$f_verificar_proprietario$ language plpgsql;

-- Regra 2
create or replace function f_atualiza_proprietario()
returns trigger as $f_atualiza_proprietario$
	declare
		vresultado boolean;
		vid_imov int;
		vid_cliente int;
		vid_proprietario int;
		vid_novo_proprietario integer;
		vreg_cliente tb_cliente%rowtype;
		
		cur_cliente no scroll cursor(key integer) for
													select * from tb_cliente where id_cliente = key;
		cur_prop no scroll cursor(key integer) for
												select id_prop from tb_imovel where id_imov = key;
		cur_novo_prop no scroll cursor(key varchar) for	
													select id_prop from tb_proprietario p where p.cpf = key;
	begin
		vid_imov := NEW.id_imov;
		vid_cliente := NEW.id_cliente;
		
		open cur_cliente(vid_cliente);
		fetch cur_cliente into vreg_cliente;
		close cur_cliente;
		execute 'insert into tb_proprietario(nome, email, telefone, cpf) 
					values('||vreg_cliente.nome||', '||vreg_cliente.email||', '||vreg_cliente.telefone||', '||vreg_cliente.cpf||')';
		
		open cur_prop(vid_imov);
		fetch cur_prop into vid_proprietario;
		close cur_prop;
		
		vresultado := f_verificar_proprietario(vid_proprietario);
		if vresultado then 
			execute 'delete from tb_proprietario p where (p.id_prop = '||vid_proprietario||')';
			raise notice 'Como o proprietario possuia somente o imovel vendido ele foi retirado do sistema.';
		else
			raise notice 'Proprietario possui multiplos imoveis por isso sera mantido no sistema.';
		end if;
		
		open cur_novo_prop(vreg_cliente.cpf);
		fetch cur_novo_prop into vid_novo_proprietario;
		close cur_novo_prop;
		execute 'update tb_imoveis set id_prop = '||vid_novo_proprietario||' where id_prop = '||vid_proprietario;
		
		return new;
	end;
$f_atualiza_proprietario$ language plpgsql;

create or replace trigger tr_atualiza_proprietario after insert on tb_contrato
	for each row execute function f_atualiza_proprietario();