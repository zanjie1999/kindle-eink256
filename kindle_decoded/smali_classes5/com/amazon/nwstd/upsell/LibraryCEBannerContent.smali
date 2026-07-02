.class public Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;
.super Ljava/lang/Object;
.source "LibraryCEBannerContent.java"


# instance fields
.field private mAcceptText:Ljava/lang/String;

.field private mBackgroundImageURI:Ljava/lang/String;

.field private mDeclineText:Ljava/lang/String;

.field private mDescription:Ljava/lang/String;

.field private mLocale:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAcceptText()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->mAcceptText:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundImageURI()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->mBackgroundImageURI:Ljava/lang/String;

    return-object v0
.end method

.method public getDeclineText()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->mDeclineText:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->mLocale:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setAcceptText(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->mAcceptText:Ljava/lang/String;

    return-void
.end method

.method public setBackgroundImageURI(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->mBackgroundImageURI:Ljava/lang/String;

    return-void
.end method

.method public setDeclineText(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->mDeclineText:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->mLocale:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LibraryCEBannerContent [mTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAcceptText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->mAcceptText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDeclineText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->mDeclineText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
