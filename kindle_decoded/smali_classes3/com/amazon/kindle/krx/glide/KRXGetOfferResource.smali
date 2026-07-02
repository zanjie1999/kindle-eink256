.class public final Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;
.super Ljava/lang/Object;
.source "KRXGetOfferResource.java"


# instance fields
.field private final asinOffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/glide/KRXAsinOffer;",
            ">;"
        }
    .end annotation
.end field

.field private final availability:Ljava/lang/String;

.field private final badgeInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/glide/KRXBadgeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/glide/KRXAsinOffer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/glide/KRXBadgeInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/glide/KRXAsinOffer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/glide/KRXBadgeInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;->asinOffers:Ljava/util/List;

    .line 32
    iput-object p2, p0, Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;->badgeInfos:Ljava/util/List;

    .line 33
    iput-object p3, p0, Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;->availability:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAsinOffers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/glide/KRXAsinOffer;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;->asinOffers:Ljava/util/List;

    return-object v0
.end method

.method public getAvailability()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;->availability:Ljava/lang/String;

    return-object v0
.end method

.method public getBadgeInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/glide/KRXBadgeInfo;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;->badgeInfos:Ljava/util/List;

    return-object v0
.end method
