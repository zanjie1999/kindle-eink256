.class public abstract Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
.super Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
.source "AnnotatedWithParams.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _paramAnnotations:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    .line 32
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->_paramAnnotations:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    return-void
.end method


# virtual methods
.method public final addOrOverrideParam(ILjava/lang/annotation/Annotation;)V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->_paramAnnotations:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;-><init>()V

    .line 46
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->_paramAnnotations:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    aput-object v0, v1, p1

    .line 48
    :cond_0
    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->add(Ljava/lang/annotation/Annotation;)Z

    return-void
.end method

.method public abstract call()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract call([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract call1(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final getParameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .locals 3

    .line 105
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameterType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameterAnnotations(I)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;I)V

    return-object v0
.end method

.method public final getParameterAnnotations(I)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->_paramAnnotations:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    .line 97
    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 98
    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract getParameterCount()I
.end method

.method public abstract getParameterType(I)Lcom/fasterxml/jackson/databind/JavaType;
.end method

.method public abstract getRawParameterType(I)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method protected replaceParameterAnnotations(ILcom/fasterxml/jackson/databind/introspect/AnnotationMap;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->_paramAnnotations:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    aput-object p2, v0, p1

    .line 58
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object p1

    return-object p1
.end method
