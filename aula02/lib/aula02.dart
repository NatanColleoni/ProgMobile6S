int arredondaMedia(int nota, int multiplo) {

  if(nota < 38) {
    return nota;
  }

  var resto = nota % multiplo;

  if(multiplo - resto < 3) {
    return nota - resto + multiplo;
  }

  return nota;
}

bool foiAprovado(int media) {
  return (media > 40);
}