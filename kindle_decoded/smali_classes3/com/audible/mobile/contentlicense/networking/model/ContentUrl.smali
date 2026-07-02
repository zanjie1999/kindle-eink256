.class public Lcom/audible/mobile/contentlicense/networking/model/ContentUrl;
.super Ljava/lang/Object;
.source "ContentUrl.java"


# instance fields
.field private url:Landroid/net/Uri;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "offline_url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 26
    :cond_0
    instance-of v1, p1, Lcom/audible/mobile/contentlicense/networking/model/ContentUrl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 29
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 33
    :cond_2
    check-cast p1, Lcom/audible/mobile/contentlicense/networking/model/ContentUrl;

    .line 35
    iget-object v1, p0, Lcom/audible/mobile/contentlicense/networking/model/ContentUrl;->url:Landroid/net/Uri;

    iget-object p1, p1, Lcom/audible/mobile/contentlicense/networking/model/ContentUrl;->url:Landroid/net/Uri;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getUrl()Landroid/net/Uri;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/audible/mobile/contentlicense/networking/model/ContentUrl;->url:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 41
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 42
    iget-object v1, p0, Lcom/audible/mobile/contentlicense/networking/model/ContentUrl;->url:Landroid/net/Uri;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Url{ offline_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/contentlicense/networking/model/ContentUrl;->url:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
