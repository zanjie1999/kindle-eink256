.class final Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;
.super Ljava/lang/Object;
.source "InternalContext.java"


# instance fields
.field private constructionContexts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/amazon/whispersync/com/google/inject/internal/ConstructionContext<",
            "*>;>;"
        }
    .end annotation
.end field

.field private dependency:Lcom/amazon/whispersync/com/google/inject/spi/Dependency;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;->constructionContexts:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getConstructionContext(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/ConstructionContext;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/internal/ConstructionContext<",
            "TT;>;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;->constructionContexts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructionContext;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructionContext;

    invoke-direct {v0}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructionContext;-><init>()V

    .line 40
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;->constructionContexts:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getDependency()Lcom/amazon/whispersync/com/google/inject/spi/Dependency;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;->dependency:Lcom/amazon/whispersync/com/google/inject/spi/Dependency;

    return-object v0
.end method

.method public setDependency(Lcom/amazon/whispersync/com/google/inject/spi/Dependency;)Lcom/amazon/whispersync/com/google/inject/spi/Dependency;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;->dependency:Lcom/amazon/whispersync/com/google/inject/spi/Dependency;

    .line 51
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;->dependency:Lcom/amazon/whispersync/com/google/inject/spi/Dependency;

    return-object v0
.end method
