package es.unizar.sisinf.grpB02.RRank.model;

public class LibroVO {
    // Datos (en privado)
    private String ISBN, titulo, desc, nombreImagen, editorial, autor;

    /**
     * Constructor
     * @param ISBN El ISBN del libro.
     * @param titulo El título del libro.
     * @param nombreImagen El nombre de la imagen del libro.
     * @param numLectores El número de lectores del libro.
     */
    public LibroVO(String _ISBN, String _titulo, String _descripcion, String _nombreImagen, String _editorial, String _autor) {
    	//ISBN, titulo, desc, nombreImagen, editorial, autor
    	ISBN=_ISBN;
    	titulo=_titulo;
    	desc= _descripcion;
    	nombreImagen=_nombreImagen;
    	editorial=_editorial;
    	autor = _autor ;
    }

    public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public String getEditorial() {
		return editorial;
	}

	public void setEditorial(String editorial) {
		this.editorial = editorial;
	}

	public String getAutor() {
		return autor;
	}

	public void setAutor(String autor) {
		this.autor = autor;
	}

	// Métodos 'get' y 'set' para el atributo 'ISBN'
    public String getISBN() {
        return ISBN;
    }

    public void setISBN(String ISBN) {
        this.ISBN = ISBN;
    }

    // Métodos 'get' y 'set' para el atributo 'titulo'
    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    // Métodos 'get' y 'set' para el atributo 'nombreImagen'
    public String getNombreImagen() {
        return nombreImagen;
    }

    public void setNombreImagen(String nombreImagen) {
        this.nombreImagen = nombreImagen;
    }
}
