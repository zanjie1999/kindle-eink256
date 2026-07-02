.class public interface abstract Lcom/amazon/kcp/library/releaselicense/api/RightsClientAPI;
.super Ljava/lang/Object;
.source "RightsClientAPI.kt"


# virtual methods
.method public abstract getDeviceConsumptionsAsync(Ljava/lang/String;Lcom/amazon/kcp/library/releaselicense/api/GetDeviceConsumptionsCompletionCallback;)V
.end method

.method public abstract getInvalidDownloads(Ljava/util/List;Lcom/amazon/kcp/library/releaselicense/api/GetInvalidDownloadsCompletionCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;",
            "Lcom/amazon/kcp/library/releaselicense/api/GetInvalidDownloadsCompletionCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract removeConsumptions(Ljava/lang/String;Ljava/util/List;Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionCompletionCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionCompletionCallback;",
            ")V"
        }
    .end annotation
.end method
