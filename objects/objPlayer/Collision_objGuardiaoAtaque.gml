/// obj_attack - Collision with obj_enemy
// 'other' é o inimigo

// Se quiser usar invencibilidade do inimigo para evitar multicollisões:
if (other.alarm[0] <= 0) {
    // aplica dano
    other.hp -= damage;

    // dá um curto período de invencibilidade ao inimigo (ex.: 20 frames)
    other.alarm[0] = 20;

    // se morrer, destroi o inimigo
    if (other.hp <= 0) {
        // pode colocar efeitos, score, etc aqui
        instance_destroy(other);
    }

    // destrói a hitbox de ataque (se for ataque único)
    instance_destroy();
}