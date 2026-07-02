.class Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "SearchHistoryDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;->loadSearchHistoryFromStorageToCache(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/List<",
        "Lcom/amazon/kcp/search/searchhistory/SearchHistoryModel;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
