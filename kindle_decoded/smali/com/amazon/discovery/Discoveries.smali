.class public final Lcom/amazon/discovery/Discoveries;
.super Ljava/lang/Object;
.source "Discoveries.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final typeName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/discovery/Discoveries;->typeName:Ljava/lang/String;

    return-void
.end method

.method public static of(Ljava/lang/Class;)Lcom/amazon/discovery/Discoveries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/amazon/discovery/Discoveries<",
            "TT;>;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/amazon/discovery/Discoveries;

    invoke-direct {v0, p0}, Lcom/amazon/discovery/Discoveries;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 56
    invoke-static {}, Lcom/amazon/discovery/Discovery;->getDiscoveryProvider()Lcom/amazon/discovery/DiscoveryProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v1, p0, Lcom/amazon/discovery/Discoveries;->typeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/discovery/DiscoveryProvider;->findTypeNames(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 60
    new-instance v2, Lcom/amazon/discovery/Discoveries$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/amazon/discovery/Discoveries$1;-><init>(Lcom/amazon/discovery/Discoveries;Ljava/util/Collection;Lcom/amazon/discovery/DiscoveryProvider;)V

    return-object v2

    .line 76
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
