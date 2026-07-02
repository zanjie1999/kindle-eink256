.class public Lcom/amazon/whispersync/com/google/inject/name/Names;
.super Ljava/lang/Object;
.source "Names.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindProperties(Lcom/amazon/whispersync/com/google/inject/Binder;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Binder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 46
    const-class v2, Lcom/amazon/whispersync/com/google/inject/name/Names;

    aput-object v2, v0, v1

    invoke-interface {p0, v0}, Lcom/amazon/whispersync/com/google/inject/Binder;->skipSources([Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Binder;

    move-result-object p0

    .line 47
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 48
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 49
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 50
    const-class v2, Ljava/lang/String;

    new-instance v3, Lcom/amazon/whispersync/com/google/inject/name/NamedImpl;

    invoke-direct {v3, v1}, Lcom/amazon/whispersync/com/google/inject/name/NamedImpl;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/amazon/whispersync/com/google/inject/Key;->get(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/amazon/whispersync/com/google/inject/Binder;->bind(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toInstance(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static bindProperties(Lcom/amazon/whispersync/com/google/inject/Binder;Ljava/util/Properties;)V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 60
    const-class v2, Lcom/amazon/whispersync/com/google/inject/name/Names;

    aput-object v2, v0, v1

    invoke-interface {p0, v0}, Lcom/amazon/whispersync/com/google/inject/Binder;->skipSources([Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Binder;

    move-result-object p0

    .line 63
    invoke-virtual {p1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 65
    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    const-class v3, Ljava/lang/String;

    new-instance v4, Lcom/amazon/whispersync/com/google/inject/name/NamedImpl;

    invoke-direct {v4, v1}, Lcom/amazon/whispersync/com/google/inject/name/NamedImpl;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/amazon/whispersync/com/google/inject/Key;->get(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/amazon/whispersync/com/google/inject/Binder;->bind(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toInstance(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static named(Ljava/lang/String;)Lcom/amazon/whispersync/com/google/inject/name/Named;
    .locals 1

    .line 38
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/name/NamedImpl;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/com/google/inject/name/NamedImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
