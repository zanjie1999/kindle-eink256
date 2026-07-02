.class public final Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;
.super Ljava/lang/Object;
.source "AnnotatedMethodMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;",
        ">;"
    }
.end annotation


# instance fields
.field protected _methods:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/MemberKey;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;)V
    .locals 3

    .line 23
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;->_methods:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;->_methods:Ljava/util/LinkedHashMap;

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;->_methods:Ljava/util/LinkedHashMap;

    new-instance v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/MemberKey;

    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/MemberKey;-><init>(Ljava/lang/reflect/Method;)V

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public find(Ljava/lang/String;[Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;->_methods:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 59
    :cond_0
    new-instance v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/MemberKey;

    invoke-direct {v1, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/MemberKey;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    return-object p1
.end method

.method public find(Ljava/lang/reflect/Method;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;->_methods:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 67
    :cond_0
    new-instance v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/MemberKey;

    invoke-direct {v1, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/MemberKey;-><init>(Ljava/lang/reflect/Method;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;->_methods:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

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

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;->_methods:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 82
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 83
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 0

    .line 35
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;->remove(Ljava/lang/reflect/Method;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/reflect/Method;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;->_methods:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    .line 41
    new-instance v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/MemberKey;

    invoke-direct {v1, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/MemberKey;-><init>(Ljava/lang/reflect/Method;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethodMap;->_methods:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    :goto_0
    return v0
.end method
