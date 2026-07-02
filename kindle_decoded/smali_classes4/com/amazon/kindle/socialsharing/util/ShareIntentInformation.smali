.class public Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;
.super Ljava/lang/Object;
.source "ShareIntentInformation.java"


# instance fields
.field protected acrGuid:Ljava/lang/String;

.field protected asin:Ljava/lang/String;

.field protected bookContentType:Lcom/amazon/kindle/krx/content/ContentType;

.field protected bookFormat:Lcom/amazon/kindle/krx/content/BookFormat;

.field protected endPosition:Ljava/lang/String;

.field protected entryPoint:Ljava/lang/String;

.field protected language:Ljava/lang/String;

.field protected overrideLocation:Ljava/lang/String;

.field protected quote:Ljava/lang/String;

.field protected reftag:Ljava/lang/String;

.field protected shareType:Ljava/lang/String;

.field protected shareableImagePath:Ljava/lang/String;

.field protected startPosition:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.amazon.kindle.socialsharing.EXTRA_SHARE_TYPE"

    .line 30
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->shareType:Ljava/lang/String;

    const-string v0, "com.amazon.kindle.socialsharing.EXTRA_ENTRY_POINT"

    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->entryPoint:Ljava/lang/String;

    const-string v0, "com.amazon.kindle.socialsharing.EXTRA_ASIN"

    .line 32
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->asin:Ljava/lang/String;

    const-string v0, "com.amazon.kindle.socialsharing.EXTRA_ACR_GUID"

    .line 33
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->acrGuid:Ljava/lang/String;

    const-string v0, "com.amazon.kindle.socialsharing.EXTRA_REF_TAG"

    .line 34
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->reftag:Ljava/lang/String;

    const-string v0, "com.amazon.kindle.socialsharing.EXTRA_QUOTE"

    .line 35
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->quote:Ljava/lang/String;

    const-string v0, "com.amazon.kindle.socialsharing.EXTRA_START_POSITION"

    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->startPosition:Ljava/lang/String;

    const-string v0, "com.amazon.kindle.socialsharing.EXTRA_END_POSITION"

    .line 37
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->endPosition:Ljava/lang/String;

    const-string v0, "com.amazon.kindle.socialsharing.EXTRA_CONTENT_LANGUAGE"

    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->language:Ljava/lang/String;

    const-string v0, "com.amazon.kindle.socialsharing.EXTRA_SHAREABLE_IMAGE_PATH"

    .line 39
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->shareableImagePath:Ljava/lang/String;

    const-string v0, "com.amazon.kindle.socialsharing.BOOK_FORMAT"

    .line 41
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/krx/content/BookFormat;->valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->bookFormat:Lcom/amazon/kindle/krx/content/BookFormat;

    :cond_0
    const-string v0, "com.amazon.kindle.socialsharing.CONTENT_TYPE"

    .line 45
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/krx/content/ContentType;->valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->bookContentType:Lcom/amazon/kindle/krx/content/ContentType;

    :cond_1
    const-string v0, "com.amazon.kindle.socialsharing.EXTRA_OVERRIDE_LOCATION"

    .line 49
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->overrideLocation:Ljava/lang/String;

    :cond_2
    return-void
.end method


# virtual methods
.method public getAcrGuid()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->acrGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getBookContentType()Lcom/amazon/kindle/krx/content/ContentType;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->bookContentType:Lcom/amazon/kindle/krx/content/ContentType;

    return-object v0
.end method

.method public getBookFormat()Lcom/amazon/kindle/krx/content/BookFormat;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->bookFormat:Lcom/amazon/kindle/krx/content/BookFormat;

    return-object v0
.end method

.method public getEndPosition()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->endPosition:Ljava/lang/String;

    return-object v0
.end method

.method public getEntryPoint()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->entryPoint:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getOverrideLocation()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->overrideLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getQuote()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->quote:Ljava/lang/String;

    return-object v0
.end method

.method public getReftag()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->reftag:Ljava/lang/String;

    return-object v0
.end method

.method public getShareType()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->shareType:Ljava/lang/String;

    return-object v0
.end method

.method public getShareableImagePath()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->shareableImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getStartPosition()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->startPosition:Ljava/lang/String;

    return-object v0
.end method

.method public setEntryPoint(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->entryPoint:Ljava/lang/String;

    return-void
.end method
