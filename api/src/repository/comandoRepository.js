import { conx } from "./connecion.js";

export async function listarUsuarios(){
    const comando =`
    SELECT * FROM tb_inscricao 
    WHERE nm_nome LIKE '%%'
    AND ds_email LIKE '%%';`

    const [linhas] = await conx.query(comando)
    return linhas;
}

export async function AtualizarUsers(id, inscricao){
    const comando =`
    UPDATE tb_inscricao
    SET bt_visitou = true
    WHERE id_inscricao = ?;
    `
    const [resposta] = await conx.query(comando, [inscricao.visitou, id]);
    return resposta.affectedRows;
}

