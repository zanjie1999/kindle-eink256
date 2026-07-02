.class public Lcom/amazon/kindle/krx/update/KRXContentUpdateManager;
.super Ljava/lang/Object;
.source "KRXContentUpdateManager.java"

# interfaces
.implements Lcom/amazon/kindle/krx/update/IContentUpdateManager;


# instance fields
.field private final handlers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/krx/update/IContentUpdateHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/amazon/kcp/library/models/ConcurrentHashSet;

    invoke-direct {v0}, Lcom/amazon/kcp/library/models/ConcurrentHashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/update/KRXContentUpdateManager;->handlers:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public getContentUpdateHandlers()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/update/IContentUpdateHandler;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/amazon/kindle/krx/update/KRXContentUpdateManager;->handlers:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public registerContentUpdateHandler(Lcom/amazon/kindle/krx/update/IContentUpdateHandler;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/kindle/krx/update/KRXContentUpdateManager;->handlers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterContentUpdateHandler(Lcom/amazon/kindle/krx/update/IContentUpdateHandler;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/kindle/krx/update/KRXContentUpdateManager;->handlers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
