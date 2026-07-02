.class Lcom/amazon/discovery/Discoveries$1;
.super Ljava/lang/Object;
.source "Discoveries.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/discovery/Discoveries;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final typeIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic val$host:Lcom/amazon/discovery/DiscoveryProvider;

.field final synthetic val$typeNames:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/amazon/discovery/Discoveries;Ljava/util/Collection;Lcom/amazon/discovery/DiscoveryProvider;)V
    .locals 0

    .line 60
    iput-object p2, p0, Lcom/amazon/discovery/Discoveries$1;->val$typeNames:Ljava/util/Collection;

    iput-object p3, p0, Lcom/amazon/discovery/Discoveries$1;->val$host:Lcom/amazon/discovery/DiscoveryProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iget-object p1, p0, Lcom/amazon/discovery/Discoveries$1;->val$typeNames:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/discovery/Discoveries$1;->typeIterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/amazon/discovery/Discoveries$1;->typeIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/amazon/discovery/Discoveries$1;->typeIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 71
    iget-object v1, p0, Lcom/amazon/discovery/Discoveries$1;->val$host:Lcom/amazon/discovery/DiscoveryProvider;

    invoke-virtual {v1, v0}, Lcom/amazon/discovery/DiscoveryProvider;->findInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
