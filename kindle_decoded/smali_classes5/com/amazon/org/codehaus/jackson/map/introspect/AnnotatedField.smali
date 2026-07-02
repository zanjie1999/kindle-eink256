.class public final Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;
.super Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;
.source "AnnotatedField.java"


# instance fields
.field protected final _field:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;)V
    .locals 0

    .line 27
    invoke-direct {p0, p2}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;-><init>(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;)V

    .line 28
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;->_field:Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method public addOrOverride(Ljava/lang/annotation/Annotation;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;->_annotations:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;->add(Ljava/lang/annotation/Annotation;)V

    return-void
.end method

.method public bridge synthetic getAnnotated()Ljava/lang/reflect/AnnotatedElement;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;->getAnnotated()Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotated()Ljava/lang/reflect/Field;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;->_field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;->_annotations:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;->get(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    return-object p1
.end method

.method public getAnnotationCount()I
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;->_annotations:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;->size()I

    move-result v0

    return v0
.end method

.method public getDeclaringClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;->_field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGenericType()Ljava/lang/reflect/Type;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;->_field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getMember()Ljava/lang/reflect/Member;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;->_field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;->_field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;->_field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;->_field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;->_field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 96
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to setValue() for field "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[field "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", annotations: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;->_annotations:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withAnnotations(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;)Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;->withAnnotations(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;)Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;

    move-result-object p1

    return-object p1
.end method

.method public withAnnotations(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;)Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;
    .locals 2

    .line 33
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;->_field:Ljava/lang/reflect/Field;

    invoke-direct {v0, v1, p1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;-><init>(Ljava/lang/reflect/Field;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;)V

    return-object v0
.end method
