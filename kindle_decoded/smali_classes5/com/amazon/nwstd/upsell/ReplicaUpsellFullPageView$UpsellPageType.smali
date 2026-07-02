.class public final enum Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$UpsellPageType;
.super Ljava/lang/Enum;
.source "ReplicaUpsellFullPageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UpsellPageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$UpsellPageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$UpsellPageType;

.field public static final enum LANDSCAPE_LEFT:Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$UpsellPageType;

.field public static final enum LANDSCAPE_RIGHT:Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$UpsellPageType;

.field public static final enum PORTRAIT:Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$UpsellPageType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 47
    new-instance v0, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$UpsellPageType;

    const/4 v1, 0x0

    const-string v2, "PORTRAIT"

    invoke-direct {v0, v2, v1}, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$UpsellPageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$UpsellPageType;->PORTRAIT:Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$UpsellPageType;

    .line 48
    new-instance v0, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$UpsellPageType;

    const/4 v2, 0x1

    const-string v3, "LANDSCAPE_RIGHT"

    invoke-direct {v0, v3, v2}, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$UpsellPageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$UpsellPageType;->LANDSCAPE_RIGHT:Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$UpsellPageType;

    .line 49
    new-instance v0, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$UpsellPageType;

    const/4 v3, 0x2

    const-string v4, "LANDSCAPE_LEFT"

    invoke-direct {v0, v4, v3}, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$UpsellPageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$UpsellPageType;->LANDSCAPE_LEFT:Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$UpsellPageType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$UpsellPageType;

    .line 46
    sget-object v5, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$UpsellPageType;->PORTRAIT:Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$UpsellPageType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$UpsellPageType;->LANDSCAPE_RIGHT:Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$UpsellPageType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$UpsellPageType;->$VALUES:[Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$UpsellPageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$UpsellPageType;
    .locals 1

    .line 46
    const-class v0, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$UpsellPageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$UpsellPageType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$UpsellPageType;
    .locals 1

    .line 46
    sget-object v0, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$UpsellPageType;->$VALUES:[Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$UpsellPageType;

    invoke-virtual {v0}, [Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$UpsellPageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$UpsellPageType;

    return-object v0
.end method
