.class public final Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedParameter;
.super Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;
.source "AnnotatedParameter.java"


# instance fields
.field protected final _index:I

.field protected final _owner:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

.field protected final _type:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedWithParams;Ljava/lang/reflect/Type;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p3}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;-><init>(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;)V

    .line 54
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedParameter;->_owner:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .line 55
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedParameter;->_type:Ljava/lang/reflect/Type;

    .line 56
    iput p4, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedParameter;->_index:I

    return-void
.end method


# virtual methods
.method public addOrOverride(Ljava/lang/annotation/Annotation;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;->_annotations:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;->add(Ljava/lang/annotation/Annotation;)V

    return-void
.end method

.method public getAnnotated()Ljava/lang/reflect/AnnotatedElement;
    .locals 1

    const/4 v0, 0x0

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

    .line 106
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;->_annotations:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;->get(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    return-object p1
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

    .line 133
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedParameter;->_owner:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getGenericType()Ljava/lang/reflect/Type;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedParameter;->_type:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 177
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedParameter;->_index:I

    return v0
.end method

.method public getMember()Ljava/lang/reflect/Member;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedParameter;->_owner:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;->getMember()Ljava/lang/reflect/Member;

    move-result-object v0

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedParameter;->_owner:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;->getModifiers()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getOwner()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedWithParams;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedParameter;->_owner:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    return-object v0
.end method

.method public getParameterType()Ljava/lang/reflect/Type;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedParameter;->_type:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getRawType()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedParameter;->_type:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 118
    check-cast v0, Ljava/lang/Class;

    return-object v0

    .line 121
    :cond_0
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->defaultInstance()Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedParameter;->_type:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 148
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot call setValue() on constructor parameter of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedParameter;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[parameter #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedParameter;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 22
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedParameter;->withAnnotations(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;)Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object p1

    return-object p1
.end method

.method public withAnnotations(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;)Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedParameter;
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;->_annotations:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedParameter;->_owner:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedParameter;->_index:I

    invoke-virtual {v0, v1, p1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->replaceParameterAnnotations(ILcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;)Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object p1

    return-object p1
.end method
