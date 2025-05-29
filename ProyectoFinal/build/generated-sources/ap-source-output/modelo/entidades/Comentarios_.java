package modelo.entidades;

import javax.annotation.processing.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.entidades.Peliculas;
import modelo.entidades.Series;
import modelo.entidades.Usuario;

@Generated(value="org.eclipse.persistence.internal.jpa.modelgen.CanonicalModelProcessor", date="2025-05-29T22:08:22", comments="EclipseLink-2.7.12.v20230209-rNA")
@StaticMetamodel(Comentarios.class)
public class Comentarios_ { 

    public static volatile SingularAttribute<Comentarios, String> contenido;
    public static volatile SingularAttribute<Comentarios, Peliculas> peliculas;
    public static volatile SingularAttribute<Comentarios, Series> series;
    public static volatile SingularAttribute<Comentarios, Usuario> usuario;
    public static volatile SingularAttribute<Comentarios, Long> id;

}