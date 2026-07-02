.class abstract Lcom/amazon/weblab/mobile/cache/CachePolicy;
.super Ljava/lang/Object;
.source "CachePolicy.java"

# interfaces
.implements Lcom/amazon/weblab/mobile/cache/ICachePolicy;


# instance fields
.field private mCachePolicyListener:Lcom/amazon/weblab/mobile/cache/ICacheRefresher;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyPolicy(Lcom/amazon/weblab/mobile/model/TreatmentAssignment;)V
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/amazon/weblab/mobile/cache/CachePolicy;->getListener()Lcom/amazon/weblab/mobile/cache/ICacheRefresher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p0, p1}, Lcom/amazon/weblab/mobile/cache/CachePolicy;->hasExpired(Lcom/amazon/weblab/mobile/model/TreatmentAssignment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 29
    invoke-interface {v0}, Lcom/amazon/weblab/mobile/cache/ICacheRefresher;->refresh()V

    :cond_0
    return-void
.end method

.method protected getListener()Lcom/amazon/weblab/mobile/cache/ICacheRefresher;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/weblab/mobile/cache/CachePolicy;->mCachePolicyListener:Lcom/amazon/weblab/mobile/cache/ICacheRefresher;

    return-object v0
.end method

.method public abstract hasExpired(Lcom/amazon/weblab/mobile/model/TreatmentAssignment;)Z
.end method

.method public setListener(Lcom/amazon/weblab/mobile/cache/ICacheRefresher;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/amazon/weblab/mobile/cache/CachePolicy;->mCachePolicyListener:Lcom/amazon/weblab/mobile/cache/ICacheRefresher;

    return-void
.end method
