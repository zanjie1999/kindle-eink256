.class public final enum Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;
.super Ljava/lang/Enum;
.source "UpsellDataFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SyncResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;

.field public static final enum SYNC_ERROR:Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;

.field public static final enum SYNC_OFFLINE:Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;

.field public static final enum SYNC_SUCCESS:Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 90
    new-instance v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;

    const/4 v1, 0x0

    const-string v2, "SYNC_SUCCESS"

    invoke-direct {v0, v2, v1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;->SYNC_SUCCESS:Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;

    .line 95
    new-instance v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;

    const/4 v2, 0x1

    const-string v3, "SYNC_ERROR"

    invoke-direct {v0, v3, v2}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;->SYNC_ERROR:Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;

    .line 100
    new-instance v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;

    const/4 v3, 0x2

    const-string v4, "SYNC_OFFLINE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;->SYNC_OFFLINE:Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;

    .line 86
    sget-object v5, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;->SYNC_SUCCESS:Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;->SYNC_ERROR:Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;->$VALUES:[Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;
    .locals 1

    .line 86
    const-class v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;

    return-object p0
.end method

.method public static values()[Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;
    .locals 1

    .line 86
    sget-object v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;->$VALUES:[Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;

    invoke-virtual {v0}, [Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;

    return-object v0
.end method
