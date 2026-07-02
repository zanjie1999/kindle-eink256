.class public final Lcom/amazon/discovery/UniqueDiscovery;
.super Ljava/lang/Object;
.source "UniqueDiscovery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final discoverableType:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Lcom/amazon/discovery/Discovery;->getDiscoveryProvider()Lcom/amazon/discovery/DiscoveryProvider;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/discovery/DiscoveryProvider;->findTypeNames(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 52
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    .line 54
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p1

    if-ne p1, v3, :cond_0

    .line 55
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/amazon/discovery/UniqueDiscovery;->discoverableType:Ljava/lang/String;

    goto :goto_0

    .line 57
    :cond_0
    iput-object v1, p0, Lcom/amazon/discovery/UniqueDiscovery;->discoverableType:Ljava/lang/String;

    goto :goto_0

    .line 53
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "More than one implementation of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " found!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_2
    iput-object v1, p0, Lcom/amazon/discovery/UniqueDiscovery;->discoverableType:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public static of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/amazon/discovery/UniqueDiscovery<",
            "TT;>;"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/amazon/discovery/UniqueDiscovery;

    invoke-direct {v0, p0}, Lcom/amazon/discovery/UniqueDiscovery;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public exists()Z
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazon/discovery/UniqueDiscovery;->discoverableType:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public value()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lcom/amazon/discovery/UniqueDiscovery;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-static {}, Lcom/amazon/discovery/Discovery;->getDiscoveryProvider()Lcom/amazon/discovery/DiscoveryProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/discovery/UniqueDiscovery;->discoverableType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/discovery/DiscoveryProvider;->findInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
