.class public Lcom/amazon/nwstd/cms/CMSLibraryBanner;
.super Ljava/lang/Object;
.source "CMSLibraryBanner.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mButtonCancel:Ljava/lang/String;

.field private mButtonStart:Ljava/lang/String;

.field private mDescription:Ljava/lang/String;

.field private mImagePath:Ljava/lang/String;

.field private final mLocale:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/amazon/nwstd/cms/CMSLibraryBanner;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/cms/CMSLibraryBanner;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 71
    :goto_0
    invoke-static {v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 72
    iput-object p1, p0, Lcom/amazon/nwstd/cms/CMSLibraryBanner;->mLocale:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBannerDataAsJSON()Ljava/lang/String;
    .locals 5

    .line 127
    iget-object v0, p0, Lcom/amazon/nwstd/cms/CMSLibraryBanner;->mDescription:Ljava/lang/String;

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/nwstd/cms/CMSLibraryBanner;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/nwstd/cms/CMSLibraryBanner;->mImagePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/nwstd/cms/CMSLibraryBanner;->mButtonCancel:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/nwstd/cms/CMSLibraryBanner;->mButtonStart:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 128
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "bodyText"

    .line 130
    iget-object v4, p0, Lcom/amazon/nwstd/cms/CMSLibraryBanner;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "acceptText"

    .line 131
    iget-object v4, p0, Lcom/amazon/nwstd/cms/CMSLibraryBanner;->mButtonStart:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "declineText"

    .line 132
    iget-object v4, p0, Lcom/amazon/nwstd/cms/CMSLibraryBanner;->mButtonCancel:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 135
    sget-object v3, Lcom/amazon/nwstd/cms/CMSLibraryBanner;->TAG:Ljava/lang/String;

    const-string v4, "Exception while generating library banner JSON : "

    invoke-static {v3, v1, v4, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 138
    :cond_0
    sget-object v0, Lcom/amazon/nwstd/cms/CMSLibraryBanner;->TAG:Ljava/lang/String;

    const-string v3, "Cannot generate library banner with missing data."

    invoke-static {v0, v1, v3}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-object v2
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/amazon/nwstd/cms/CMSLibraryBanner;->mImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/amazon/nwstd/cms/CMSLibraryBanner;->mLocale:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/amazon/nwstd/cms/CMSLibraryBanner;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setButtonCancel(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 116
    :goto_0
    invoke-static {v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 117
    iput-object p1, p0, Lcom/amazon/nwstd/cms/CMSLibraryBanner;->mButtonCancel:Ljava/lang/String;

    return-void
.end method

.method public setButtonStart(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 107
    :goto_0
    invoke-static {v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 108
    iput-object p1, p0, Lcom/amazon/nwstd/cms/CMSLibraryBanner;->mButtonStart:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 98
    :goto_0
    invoke-static {v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 99
    iput-object p1, p0, Lcom/amazon/nwstd/cms/CMSLibraryBanner;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 80
    :goto_0
    invoke-static {v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 81
    iput-object p1, p0, Lcom/amazon/nwstd/cms/CMSLibraryBanner;->mImagePath:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 89
    :goto_0
    invoke-static {v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 90
    iput-object p1, p0, Lcom/amazon/nwstd/cms/CMSLibraryBanner;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/nwstd/cms/CMSLibraryBanner;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/ description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/nwstd/cms/CMSLibraryBanner;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "+ imagePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/nwstd/cms/CMSLibraryBanner;->mImagePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/ buttonStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/nwstd/cms/CMSLibraryBanner;->mButtonStart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/ buttonCancel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/nwstd/cms/CMSLibraryBanner;->mButtonCancel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
