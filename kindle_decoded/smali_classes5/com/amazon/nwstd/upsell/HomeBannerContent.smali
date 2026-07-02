.class public Lcom/amazon/nwstd/upsell/HomeBannerContent;
.super Ljava/lang/Object;
.source "HomeBannerContent.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCardRank:I

.field private mDescription:Ljava/lang/String;

.field private mHomeImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStartNow:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/amazon/nwstd/upsell/HomeBannerContent;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/upsell/HomeBannerContent;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/nwstd/upsell/HomeBannerContent;->mHomeImages:Ljava/util/List;

    const/4 v0, 0x2

    .line 44
    iput v0, p0, Lcom/amazon/nwstd/upsell/HomeBannerContent;->mCardRank:I

    return-void
.end method


# virtual methods
.method public setAcceptText(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/amazon/nwstd/upsell/HomeBannerContent;->mStartNow:Ljava/lang/String;

    return-void
.end method

.method public setBackgroundImageURI(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/amazon/nwstd/upsell/HomeBannerContent;->mHomeImages:Ljava/util/List;

    return-void
.end method

.method public setCardRank(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/amazon/nwstd/upsell/HomeBannerContent;->mCardRank:I

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/amazon/nwstd/upsell/HomeBannerContent;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/amazon/nwstd/upsell/HomeBannerContent;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 86
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/HomeBannerContent;->mTitle:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/nwstd/upsell/HomeBannerContent;->mDescription:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/nwstd/upsell/HomeBannerContent;->mStartNow:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "HomeBannerContent [mTitle = %s , mDescription = %s , mStartNow = %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
