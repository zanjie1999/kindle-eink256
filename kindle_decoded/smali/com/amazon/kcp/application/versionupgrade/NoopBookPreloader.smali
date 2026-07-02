.class public Lcom/amazon/kcp/application/versionupgrade/NoopBookPreloader;
.super Ljava/lang/Object;
.source "NoopBookPreloader.java"

# interfaces
.implements Lcom/amazon/kcp/application/IBookPreloader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public preload(Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 0

    return-void
.end method

.method public preload(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public preloadOnAppStart(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public saveLastReadBook(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
