.class final Lcom/amazon/kindle/socialsharing/service/Share$1;
.super Ljava/lang/Object;
.source "Share.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/socialsharing/service/Share;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amazon/kindle/socialsharing/service/Share;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amazon/kindle/socialsharing/service/Share;
    .locals 2

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 283
    new-instance v0, Lcom/amazon/kindle/socialsharing/service/Share;

    invoke-direct {v0}, Lcom/amazon/kindle/socialsharing/service/Share;-><init>()V

    const-string v1, "id"

    .line 285
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/socialsharing/service/Share;->setId(Ljava/lang/String;)V

    const-string v1, "asin"

    .line 286
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/socialsharing/service/Share;->setAsin(Ljava/lang/String;)V

    const-string v1, "landingPageUrl"

    .line 287
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/socialsharing/service/Share;->setLandingPageUrl(Ljava/lang/String;)V

    const-string v1, "imageUrl"

    .line 288
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/socialsharing/service/Share;->setImageUrl(Ljava/lang/String;)V

    const-string v1, "physicalId"

    .line 289
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/socialsharing/service/Share;->setPhysicalId(Ljava/lang/String;)V

    const-string v1, "title"

    .line 290
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/socialsharing/service/Share;->setTitle(Ljava/lang/String;)V

    const-string v1, "authors"

    .line 291
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 293
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/socialsharing/service/Share;->setAuthors(Ljava/util/List;)V

    :cond_0
    const-string v1, "description"

    .line 295
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/socialsharing/service/Share;->setDescription(Ljava/lang/String;)V

    const-string v1, "quote"

    .line 296
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/socialsharing/service/Share;->setQuote(Ljava/lang/String;)V

    const-string v1, "quoteStart"

    .line 297
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/socialsharing/service/Share;->setQuoteStart(I)V

    const-string v1, "quoteEnd"

    .line 298
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/socialsharing/service/Share;->setQuoteEnd(I)V

    const-string v1, "bookLanguage"

    .line 299
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/socialsharing/service/Share;->setBookLanguage(Ljava/lang/String;)V

    const-string v1, "readingProgress"

    .line 300
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/socialsharing/service/Share;->setReadingProgress(I)V

    const-string v1, "bookId"

    .line 301
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/socialsharing/service/Share;->setBookId(Ljava/lang/String;)V

    const-string v1, "shareType"

    .line 302
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/socialsharing/service/Share;->setShareType(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 278
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/socialsharing/service/Share$1;->createFromParcel(Landroid/os/Parcel;)Lcom/amazon/kindle/socialsharing/service/Share;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amazon/kindle/socialsharing/service/Share;
    .locals 0

    .line 309
    new-array p1, p1, [Lcom/amazon/kindle/socialsharing/service/Share;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 278
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/socialsharing/service/Share$1;->newArray(I)[Lcom/amazon/kindle/socialsharing/service/Share;

    move-result-object p1

    return-object p1
.end method
