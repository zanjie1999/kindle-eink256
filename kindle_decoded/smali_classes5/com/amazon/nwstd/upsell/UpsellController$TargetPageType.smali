.class final enum Lcom/amazon/nwstd/upsell/UpsellController$TargetPageType;
.super Ljava/lang/Enum;
.source "UpsellController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/upsell/UpsellController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TargetPageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/nwstd/upsell/UpsellController$TargetPageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/nwstd/upsell/UpsellController$TargetPageType;

.field public static final enum KINDLE:Lcom/amazon/nwstd/upsell/UpsellController$TargetPageType;

.field public static final enum RETAIL:Lcom/amazon/nwstd/upsell/UpsellController$TargetPageType;


# instance fields
.field private pageValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 61
    new-instance v0, Lcom/amazon/nwstd/upsell/UpsellController$TargetPageType;

    const/4 v1, 0x0

    const-string v2, "KINDLE"

    const-string v3, "kindle"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/nwstd/upsell/UpsellController$TargetPageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/upsell/UpsellController$TargetPageType;->KINDLE:Lcom/amazon/nwstd/upsell/UpsellController$TargetPageType;

    .line 62
    new-instance v0, Lcom/amazon/nwstd/upsell/UpsellController$TargetPageType;

    const/4 v2, 0x1

    const-string v3, "RETAIL"

    const-string/jumbo v4, "retail"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/nwstd/upsell/UpsellController$TargetPageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/upsell/UpsellController$TargetPageType;->RETAIL:Lcom/amazon/nwstd/upsell/UpsellController$TargetPageType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/nwstd/upsell/UpsellController$TargetPageType;

    .line 60
    sget-object v4, Lcom/amazon/nwstd/upsell/UpsellController$TargetPageType;->KINDLE:Lcom/amazon/nwstd/upsell/UpsellController$TargetPageType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/nwstd/upsell/UpsellController$TargetPageType;->$VALUES:[Lcom/amazon/nwstd/upsell/UpsellController$TargetPageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 70
    iput-object p3, p0, Lcom/amazon/nwstd/upsell/UpsellController$TargetPageType;->pageValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/nwstd/upsell/UpsellController$TargetPageType;
    .locals 1

    .line 60
    const-class v0, Lcom/amazon/nwstd/upsell/UpsellController$TargetPageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/nwstd/upsell/UpsellController$TargetPageType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/nwstd/upsell/UpsellController$TargetPageType;
    .locals 1

    .line 60
    sget-object v0, Lcom/amazon/nwstd/upsell/UpsellController$TargetPageType;->$VALUES:[Lcom/amazon/nwstd/upsell/UpsellController$TargetPageType;

    invoke-virtual {v0}, [Lcom/amazon/nwstd/upsell/UpsellController$TargetPageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/nwstd/upsell/UpsellController$TargetPageType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController$TargetPageType;->pageValue:Ljava/lang/String;

    return-object v0
.end method
