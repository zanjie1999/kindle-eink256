.class public Lcom/audible/hushpuppy/common/network/UrlJSBParam;
.super Ljava/lang/Object;
.source "UrlJSBParam.java"


# instance fields
.field private final amazonAudiobookAsin:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "amazonAudioBookAsin"
    .end annotation
.end field

.field private final kindleAsin:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "kindleAsin"
    .end annotation
.end field

.field private final mfaInterstitialUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mfaInterstitialUrl"
    .end annotation
.end field

.field private final orderId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "orderId"
    .end annotation
.end field

.field private final url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field

.field private final view:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "view"
    .end annotation
.end field


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 123
    const-class v2, Lcom/audible/hushpuppy/common/network/UrlJSBParam;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 126
    :cond_1
    check-cast p1, Lcom/audible/hushpuppy/common/network/UrlJSBParam;

    .line 127
    iget-object v2, p0, Lcom/audible/hushpuppy/common/network/UrlJSBParam;->kindleAsin:Ljava/lang/String;

    iget-object v3, p1, Lcom/audible/hushpuppy/common/network/UrlJSBParam;->kindleAsin:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/audible/hushpuppy/common/network/UrlJSBParam;->amazonAudiobookAsin:Ljava/lang/String;

    iget-object v3, p1, Lcom/audible/hushpuppy/common/network/UrlJSBParam;->amazonAudiobookAsin:Ljava/lang/String;

    .line 128
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/audible/hushpuppy/common/network/UrlJSBParam;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/audible/hushpuppy/common/network/UrlJSBParam;->url:Ljava/lang/String;

    .line 129
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/audible/hushpuppy/common/network/UrlJSBParam;->view:Ljava/lang/String;

    iget-object v3, p1, Lcom/audible/hushpuppy/common/network/UrlJSBParam;->view:Ljava/lang/String;

    .line 130
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/audible/hushpuppy/common/network/UrlJSBParam;->orderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/audible/hushpuppy/common/network/UrlJSBParam;->orderId:Ljava/lang/String;

    .line 131
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/audible/hushpuppy/common/network/UrlJSBParam;->mfaInterstitialUrl:Ljava/lang/String;

    iget-object p1, p1, Lcom/audible/hushpuppy/common/network/UrlJSBParam;->mfaInterstitialUrl:Ljava/lang/String;

    .line 132
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getMfaInterstitialUrl()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/audible/hushpuppy/common/network/UrlJSBParam;->mfaInterstitialUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/audible/hushpuppy/common/network/UrlJSBParam;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/audible/hushpuppy/common/network/UrlJSBParam;->view:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 138
    iget-object v1, p0, Lcom/audible/hushpuppy/common/network/UrlJSBParam;->kindleAsin:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/audible/hushpuppy/common/network/UrlJSBParam;->amazonAudiobookAsin:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/audible/hushpuppy/common/network/UrlJSBParam;->url:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/audible/hushpuppy/common/network/UrlJSBParam;->view:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/audible/hushpuppy/common/network/UrlJSBParam;->orderId:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/audible/hushpuppy/common/network/UrlJSBParam;->mfaInterstitialUrl:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
