.class synthetic Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler$1;
.super Ljava/lang/Object;
.source "UpsellFullSyncHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$nwstd$upsell$fetcher$UpsellDataFetcher$SyncResult:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 197
    invoke-static {}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;->values()[Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler$1;->$SwitchMap$com$amazon$nwstd$upsell$fetcher$UpsellDataFetcher$SyncResult:[I

    :try_start_0
    sget-object v1, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;->SYNC_ERROR:Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler$1;->$SwitchMap$com$amazon$nwstd$upsell$fetcher$UpsellDataFetcher$SyncResult:[I

    sget-object v1, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;->SYNC_OFFLINE:Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler$1;->$SwitchMap$com$amazon$nwstd$upsell$fetcher$UpsellDataFetcher$SyncResult:[I

    sget-object v1, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;->SYNC_SUCCESS:Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
