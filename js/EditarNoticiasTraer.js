
const EditarNoticias = () => {
    fetch('config.php')
        .then(res => res.json())
        .then(data => {
            const noticias = document.getElementById('noticiasdiv');
            data.forEach(noticia => {

                const LinkTrash = document.createElement('a');
                LinkTrash.href = 'deleteNoticia.php?ID=' + noticia.ID;
                LinkTrash.innerText = 'Eliminar';
                const IconTrash = document.createElement('i');
                IconTrash.setAttribute('class', 'icon-trash mr-2');

                const SpanTrash = document.createElement('span');



                const LinkEditar = document.createElement('a');
                LinkEditar.href = 'Insert.php?ID=' + noticia.ID;
                LinkEditar.innerText = 'Editar';
                const IconEditar = document.createElement('i');
                IconEditar.setAttribute('class', 'icon-pencil mr-2');
                


                const SpanEdit = document.createElement('span');

                const pIcons = document.createElement('p');
                pIcons.setAttribute('class', 'meta');

                const DivIcons = document.createElement('div');                
                DivIcons.setAttribute('class', 'meta-wrap');
                           
                const Copete = document.createElement('p');
                Copete.setAttribute('class', 'mb-4');
                Copete.innerHTML = noticia.Copete;
                const Title = document.createElement('h3');
                Title.setAttribute('class', 'mb-2');
                Title.innerHTML = noticia.Titulo;
                const div3 = document.createElement('div');
                div3.setAttribute('class', 'text p-4');
                const linkA = document.createElement('a');

                linkA.setAttribute('class', 'img');
                linkA.setAttribute('style', 'background-image: url('+noticia.Imagen+ ');');
                linkA.href = 'single.php?ID=' + noticia.ID;
                const div2 = document.createElement('div');
                div2.setAttribute('class', "blog-entry ftco-animate fadeInUp ftco-animated");
                const div1 = document.createElement('div');
                div1.setAttribute('class', "col-md-4 d-flex")
                
                LinkTrash.appendChild(IconTrash);
                SpanTrash.appendChild(LinkTrash);
                pIcons.appendChild(SpanTrash);

                LinkEditar.appendChild(IconEditar);
                SpanEdit.appendChild(LinkEditar);
                pIcons.appendChild(SpanEdit);
                DivIcons.appendChild(pIcons);
                div3.appendChild(DivIcons);
                div3.appendChild(Title);
                div3.appendChild(Copete);
                div2.appendChild(div3);
                div2.appendChild(linkA);
                div1.appendChild(div2);
                noticias.appendChild(div1);
            });
        });
        //imagen.style.backgroundImage = "url('tuUrl')";
};