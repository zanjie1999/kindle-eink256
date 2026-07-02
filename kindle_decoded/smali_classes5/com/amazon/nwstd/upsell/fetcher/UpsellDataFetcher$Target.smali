.class public final enum Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;
.super Ljava/lang/Enum;
.source "UpsellDataFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Target"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;

.field public static final enum COVER_SYNC:Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;

.field public static final enum FULL_SYNC:Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 76
    new-instance v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;

    const/4 v1, 0x0

    const-string v2, "FULL_SYNC"

    invoke-direct {v0, v2, v1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;->FULL_SYNC:Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;

    .line 80
    new-instance v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;

    const/4 v2, 0x1

    const-string v3, "COVER_SYNC"

    invoke-direct {v0, v3, v2}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;->COVER_SYNC:Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;

    .line 72
    sget-object v4, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;->FULL_SYNC:Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;->$VALUES:[Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;
    .locals 1

    .line 72
    const-class v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;

    return-object p0
.end method

.method public static values()[Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;
    .locals 1

    .line 72
    sget-object v0, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;->$VALUES:[Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;

    invoke-virtual {v0}, [Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;

    return-object v0
.end method
