const TraerNoticias = () => {
    fetch('config.php')
        .then(res => res.json())
        .then(data => {
            const noticias = document.getElementById('noticiasdiv');
            data.forEach(noticia => {
                console.log(data);
                const linkB = document.createElement('a');
                linkB.href = 'single.php?ID=' + noticia.ID;
                linkB.style='text-decoration:none;color:black;';
                const Copete = document.createElement('p');
                Copete.setAttribute('class', 'mb-4');
                Copete.innerHTML = noticia.Copete;
                const Title = document.createElement('h3');
                Title.setAttribute('class', 'mb-2');
                Title.innerHTML = noticia.Titulo;
                const div3 = document.createElement('div');
                div3.setAttribute('class', 'text p-4');
                const linkA = document.createElement('a');
                linkA.href = 'single.php?ID=' + noticia.ID;
                linkA.setAttribute('class', 'img');
                linkA.setAttribute('style', 'background-image: url('+noticia.Imagen+ ');');
                const div2 = document.createElement('div');
                div2.setAttribute('class', "blog-entry ftco-animate fadeInUp ftco-animated");
                const div1 = document.createElement('div');
                div1.setAttribute('class', "col-md-4 d-flex")
                

                linkB.appendChild(Title);
                linkB.appendChild(Copete);
                div3.appendChild(linkB);
                div2.appendChild(div3);
                div2.appendChild(linkA);
                div1.appendChild(div2);
                noticias.appendChild(div1);
            });
        });
        //imagen.style.backgroundImage = "url('tuUrl')";
};
