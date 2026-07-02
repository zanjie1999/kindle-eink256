.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanPropertyDefinition;
.source "POJOPropertyBuilder.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanPropertyDefinition;",
        "Ljava/lang/Comparable<",
        "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field protected _ctorParameters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedParameter;",
            ">;"
        }
    .end annotation
.end field

.field protected _fields:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation
.end field

.field protected _getters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation
.end field

.field protected final _internalName:Ljava/lang/String;

.field protected final _name:Ljava/lang/String;

.field protected _setters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;Ljava/lang/String;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanPropertyDefinition;-><init>()V

    .line 44
    iget-object v0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_internalName:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_internalName:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_name:Ljava/lang/String;

    .line 46
    iget-object p2, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 47
    iget-object p2, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 48
    iget-object p2, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 49
    iget-object p1, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanPropertyDefinition;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_internalName:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_name:Ljava/lang/String;

    return-void
.end method

.method private _anyExplicitNames(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<",
            "TT;>;)Z"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_1

    .line 428
    iget-object v0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->explicitName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 427
    :cond_0
    iget-object p1, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private _anyIgnorals(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<",
            "TT;>;)Z"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_1

    .line 477
    iget-boolean v0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->isMarkedIgnored:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 476
    :cond_0
    iget-object p1, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private _anyVisible(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<",
            "TT;>;)Z"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_1

    .line 446
    iget-boolean v0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->isVisible:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 445
    :cond_0
    iget-object p1, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private varargs _mergeAnnotations(I[Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<",
            "+",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;",
            ">;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;"
        }
    .end annotation

    .line 377
    aget-object v0, p2, p1

    iget-object v0, v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;->getAllAnnotations()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 379
    array-length v1, p2

    if-ge p1, v1, :cond_1

    .line 380
    aget-object v1, p2, p1

    if-eqz v1, :cond_0

    .line 381
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_mergeAnnotations(I[Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;->merge(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method private _removeIgnored(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<",
            "TT;>;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<",
            "TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p1

    .line 392
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withoutIgnored()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object p1

    return-object p1
.end method

.method private _removeNonVisible(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<",
            "TT;>;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<",
            "TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p1

    .line 400
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withoutNonVisible()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object p1

    return-object p1
.end method

.method private _trimByVisibility(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<",
            "TT;>;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<",
            "TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p1

    .line 408
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->trimByVisibility()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object p1

    return-object p1
.end method

.method private findRenamed(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<",
            "+",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;",
            ">;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<",
            "+",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;",
            ">;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<",
            "+",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;",
            ">;"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_4

    .line 503
    iget-object v0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->explicitName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_1

    .line 508
    :cond_0
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    move-object p2, p1

    goto :goto_1

    .line 515
    :cond_2
    iget-object v1, p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->explicitName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 502
    :goto_1
    iget-object p1, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    goto :goto_0

    .line 516
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Conflicting property name definitions: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->explicitName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' (for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ") vs \'"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->explicitName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-object p2
.end method

.method private static merge(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<",
            "TT;>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<",
            "TT;>;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    .line 299
    :cond_1
    invoke-static {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->access$000(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addAll(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;)V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-static {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->merge(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 286
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-static {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->merge(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 287
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-static {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->merge(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 288
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object p1, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-static {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->merge(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    return-void
.end method

.method public addCtor(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedParameter;Ljava/lang/String;ZZ)V
    .locals 7

    .line 268
    new-instance v6, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-object v0, v6

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;-><init>(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Ljava/lang/String;ZZ)V

    iput-object v6, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    return-void
.end method

.method public addField(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedField;Ljava/lang/String;ZZ)V
    .locals 7

    .line 264
    new-instance v6, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-object v0, v6

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;-><init>(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Ljava/lang/String;ZZ)V

    iput-object v6, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    return-void
.end method

.method public addGetter(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;ZZ)V
    .locals 7

    .line 272
    new-instance v6, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-object v0, v6

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;-><init>(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Ljava/lang/String;ZZ)V

    iput-object v6, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    return-void
.end method

.method public addSetter(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;ZZ)V
    .locals 7

    .line 276
    new-instance v6, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-object v0, v6

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;-><init>(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Ljava/lang/String;ZZ)V

    iput-object v6, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    return-void
.end method

.method public anyDeserializeIgnorals()Z
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyIgnorals(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyIgnorals(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyIgnorals(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public anyExplicitNames()Z
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyExplicitNames(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyExplicitNames(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyExplicitNames(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyExplicitNames(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public anyIgnorals()Z
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyIgnorals(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyIgnorals(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyIgnorals(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyIgnorals(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public anySerializeIgnorals()Z
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyIgnorals(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyIgnorals(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public anyVisible()Z
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyVisible(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyVisible(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyVisible(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyVisible(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public compareTo(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;)I
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-nez v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 75
    :cond_0
    iget-object v0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 11
    check-cast p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->compareTo(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;)I

    move-result p1

    return p1
.end method

.method public couldSerialize()Z
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public findNewName()Ljava/lang/String;
    .locals 3

    .line 492
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->findRenamed(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    .line 493
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->findRenamed(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    .line 494
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->findRenamed(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    .line 495
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->findRenamed(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 496
    :cond_0
    iget-object v1, v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->explicitName:Ljava/lang/String;

    :goto_0
    return-object v1
.end method

.method public getAccessor()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;
    .locals 1

    .line 116
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getGetter()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v0

    if-nez v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getField()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedField;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getConstructorParameter()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedParameter;
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 249
    :cond_0
    iget-object v1, v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedParameter;->getOwner()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    move-result-object v1

    instance-of v1, v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    if-eqz v1, :cond_1

    .line 250
    iget-object v0, v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    return-object v0

    .line 252
    :cond_1
    iget-object v0, v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v0, v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    return-object v0
.end method

.method public getField()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedField;
    .locals 6

    .line 208
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 212
    :cond_0
    iget-object v1, v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedField;

    .line 213
    iget-object v0, v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    :goto_0
    if-eqz v0, :cond_3

    .line 215
    iget-object v2, v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v2, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedField;

    .line 216
    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedField;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    .line 217
    invoke-virtual {v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedField;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 219
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v1, v2

    goto :goto_1

    .line 223
    :cond_1
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 214
    :goto_1
    iget-object v0, v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    goto :goto_0

    .line 227
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Multiple fields representing property \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedField;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " vs "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedField;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-object v1
.end method

.method public getGetter()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 6

    .line 144
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 148
    :cond_0
    iget-object v1, v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 149
    iget-object v0, v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    :goto_0
    if-eqz v0, :cond_3

    .line 155
    iget-object v2, v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v2, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 156
    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    .line 157
    invoke-virtual {v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 159
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v1, v2

    goto :goto_1

    .line 163
    :cond_1
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 150
    :goto_1
    iget-object v0, v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    goto :goto_0

    .line 167
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Conflicting getter definitions for property \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " vs "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-object v1
.end method

.method public getInternalName()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_internalName:Ljava/lang/String;

    return-object v0
.end method

.method public getMutator()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;
    .locals 1

    .line 126
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getConstructorParameter()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getSetter()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v0

    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getField()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedField;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSetter()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 6

    .line 176
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 180
    :cond_0
    iget-object v1, v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 181
    iget-object v0, v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    :goto_0
    if-eqz v0, :cond_3

    .line 187
    iget-object v2, v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v2, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 188
    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    .line 189
    invoke-virtual {v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 191
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v1, v2

    goto :goto_1

    .line 195
    :cond_1
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 182
    :goto_1
    iget-object v0, v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    goto :goto_0

    .line 199
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Conflicting setter definitions for property \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " vs "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-object v1
.end method

.method public hasConstructorParameter()Z
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasField()Z
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGetter()Z
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSetter()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isExplicitlyIncluded()Z
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->anyExplicitNames()Z

    move-result v0

    return v0
.end method

.method public mergeAnnotations(Z)V
    .locals 5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    .line 354
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz p1, :cond_0

    new-array v0, v0, [Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object p1, v0, v4

    .line 355
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object p1, v0, v3

    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object p1, v0, v2

    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object p1, v0, v1

    invoke-direct {p0, v4, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_mergeAnnotations(I[Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object p1

    .line 356
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-virtual {v1, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->withAnnotations(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withValue(Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    goto/16 :goto_0

    .line 357
    :cond_0
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz p1, :cond_4

    new-array v0, v1, [Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object p1, v0, v4

    .line 358
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object p1, v0, v3

    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object p1, v0, v2

    invoke-direct {p0, v4, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_mergeAnnotations(I[Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object p1

    .line 359
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedField;

    invoke-virtual {v1, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedField;->withAnnotations(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedField;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withValue(Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    goto :goto_0

    .line 362
    :cond_1
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz p1, :cond_2

    new-array v0, v0, [Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object p1, v0, v4

    .line 363
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object p1, v0, v3

    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object p1, v0, v2

    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object p1, v0, v1

    invoke-direct {p0, v4, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_mergeAnnotations(I[Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object p1

    .line 364
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    invoke-virtual {v1, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedParameter;->withAnnotations(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withValue(Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    goto :goto_0

    .line 365
    :cond_2
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz p1, :cond_3

    new-array v0, v1, [Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object p1, v0, v4

    .line 366
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object p1, v0, v3

    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object p1, v0, v2

    invoke-direct {p0, v4, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_mergeAnnotations(I[Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object p1

    .line 367
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-virtual {v1, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->withAnnotations(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withValue(Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    goto :goto_0

    .line 368
    :cond_3
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz p1, :cond_4

    new-array v0, v2, [Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object p1, v0, v4

    .line 369
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object p1, v0, v3

    invoke-direct {p0, v4, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_mergeAnnotations(I[Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object p1

    .line 370
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedField;

    invoke-virtual {v1, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedField;->withAnnotations(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedField;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withValue(Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    :cond_4
    :goto_0
    return-void
.end method

.method public removeIgnored()V
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_removeIgnored(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 315
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_removeIgnored(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 316
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_removeIgnored(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 317
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_removeIgnored(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    return-void
.end method

.method public removeNonVisible()V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_removeNonVisible(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 329
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_removeNonVisible(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 331
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-nez v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_removeNonVisible(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 333
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_removeNonVisible(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Property \'"

    .line 530
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'; ctors: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", field(s): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getter(s): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", setter(s): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 536
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trimByVisibility()V
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_trimByVisibility(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 345
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_trimByVisibility(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 346
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_trimByVisibility(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 347
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_trimByVisibility(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    return-void
.end method

.method public withName(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;
    .locals 1

    .line 56
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;Ljava/lang/String;)V

    return-object v0
.end method
