.class public Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;
.super Ljava/lang/Object;
.source "BrochureSlideShareMetadata.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private acrGuid:Ljava/lang/String;

.field private asin:Ljava/lang/String;

.field private bookFormat:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private quoteEndPosition:Ljava/lang/String;

.field private quoteLanguage:Ljava/lang/String;

.field private quoteStartPosition:Ljava/lang/String;

.field private quoteText:Ljava/lang/String;

.field private reftag:Ljava/lang/String;

.field private shareType:Lcom/amazon/kcp/info/brochure/BrochureShareType;

.field private shareableImageDownloadedPath:Ljava/lang/String;

.field private shareableImageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAcrGuid()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;->acrGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getBookFormat()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;->bookFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getBrochureShareType()Lcom/amazon/kcp/info/brochure/BrochureShareType;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;->shareType:Lcom/amazon/kcp/info/brochure/BrochureShareType;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getQuoteEndPosition()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;->quoteEndPosition:Ljava/lang/String;

    return-object v0
.end method

.method public getQuoteLanguage()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;->quoteLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getQuoteStartPosition()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;->quoteStartPosition:Ljava/lang/String;

    return-object v0
.end method

.method public getQuoteText()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;->quoteText:Ljava/lang/String;

    return-object v0
.end method

.method public getReftag()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;->reftag:Ljava/lang/String;

    return-object v0
.end method

.method public getShareableImageDownloadedPath()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;->shareableImageDownloadedPath:Ljava/lang/String;

    return-object v0
.end method

.method public getShareableImageUrl()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;->shareableImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setShareableImageDownloadedPath(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;->shareableImageDownloadedPath:Ljava/lang/String;

    return-void
.end method
