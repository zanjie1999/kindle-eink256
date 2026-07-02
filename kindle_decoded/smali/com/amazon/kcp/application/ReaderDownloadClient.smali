.class public Lcom/amazon/kcp/application/ReaderDownloadClient;
.super Ljava/lang/Object;
.source "ReaderDownloadClient.java"

# interfaces
.implements Lcom/amazon/kindle/download/IReaderDownloadClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSupportedDrmVoucherVersions()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 19
    invoke-static {}, Lcom/amazon/krf/platform/KRF;->getSupportedDRMVoucherVersions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/google/common/base/Predicates;->notNull()Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
