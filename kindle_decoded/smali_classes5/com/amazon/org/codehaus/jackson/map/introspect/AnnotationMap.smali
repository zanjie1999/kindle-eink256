.class public final Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;
.super Ljava/lang/Object;
.source "AnnotationMap.java"

# interfaces
.implements Lcom/amazon/org/codehaus/jackson/map/util/Annotations;


# instance fields
.field protected _annotations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;->_annotations:Ljava/util/HashMap;

    return-void
.end method

.method public static merge(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;)Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;
    .locals 3

    if-eqz p0, :cond_5

    .line 35
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;->_annotations:Ljava/util/HashMap;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    if-eqz p1, :cond_4

    .line 38
    iget-object v0, p1, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;->_annotations:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 41
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 44
    iget-object p1, p1, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;->_annotations:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/annotation/Annotation;

    .line 45
    invoke-interface {v1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 48
    :cond_2
    iget-object p0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;->_annotations:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/annotation/Annotation;

    .line 49
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 51
    :cond_3
    new-instance p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-direct {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;-><init>(Ljava/util/HashMap;)V

    :cond_4
    :goto_2
    return-object p0

    :cond_5
    :goto_3
    return-object p1
.end method


# virtual methods
.method protected final _add(Ljava/lang/annotation/Annotation;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;->_annotations:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;->_annotations:Ljava/util/HashMap;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;->_annotations:Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public add(Ljava/lang/annotation/Annotation;)V
    .locals 0

    .line 74
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;->_add(Ljava/lang/annotation/Annotation;)V

    return-void
.end method

.method public addIfNotPresent(Ljava/lang/annotation/Annotation;)V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;->_annotations:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;->_add(Ljava/lang/annotation/Annotation;)V

    :cond_1
    return-void
.end method

.method public get(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
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

    .line 27
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;->_annotations:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 30
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/annotation/Annotation;

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;->_annotations:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;->_annotations:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const-string v0, "[null]"

    return-object v0

    .line 83
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
