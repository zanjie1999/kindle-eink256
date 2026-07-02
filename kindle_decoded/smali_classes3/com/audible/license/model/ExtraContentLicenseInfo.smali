.class public final Lcom/audible/license/model/ExtraContentLicenseInfo;
.super Ljava/lang/Object;
.source "ExtraContentLicenseInfo.kt"


# instance fields
.field private final chapterInfo:Lcom/audible/mobile/contentlicense/networking/model/ChapterInfo;

.field private final downloadMetadata:Lcom/audible/license/model/DownloadMetadata;


# direct methods
.method public constructor <init>(Lcom/audible/license/model/DownloadMetadata;Lcom/audible/mobile/contentlicense/networking/model/ChapterInfo;)V
    .locals 1

    const-string v0, "downloadMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/audible/license/model/ExtraContentLicenseInfo;->downloadMetadata:Lcom/audible/license/model/DownloadMetadata;

    iput-object p2, p0, Lcom/audible/license/model/ExtraContentLicenseInfo;->chapterInfo:Lcom/audible/mobile/contentlicense/networking/model/ChapterInfo;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/audible/license/model/ExtraContentLicenseInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/audible/license/model/ExtraContentLicenseInfo;

    iget-object v0, p0, Lcom/audible/license/model/ExtraContentLicenseInfo;->downloadMetadata:Lcom/audible/license/model/DownloadMetadata;

    iget-object v1, p1, Lcom/audible/license/model/ExtraContentLicenseInfo;->downloadMetadata:Lcom/audible/license/model/DownloadMetadata;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/license/model/ExtraContentLicenseInfo;->chapterInfo:Lcom/audible/mobile/contentlicense/networking/model/ChapterInfo;

    iget-object p1, p1, Lcom/audible/license/model/ExtraContentLicenseInfo;->chapterInfo:Lcom/audible/mobile/contentlicense/networking/model/ChapterInfo;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getDownloadMetadata()Lcom/audible/license/model/DownloadMetadata;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/audible/license/model/ExtraContentLicenseInfo;->downloadMetadata:Lcom/audible/license/model/DownloadMetadata;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/audible/license/model/ExtraContentLicenseInfo;->downloadMetadata:Lcom/audible/license/model/DownloadMetadata;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/audible/license/model/DownloadMetadata;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/audible/license/model/ExtraContentLicenseInfo;->chapterInfo:Lcom/audible/mobile/contentlicense/networking/model/ChapterInfo;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExtraContentLicenseInfo(downloadMetadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/license/model/ExtraContentLicenseInfo;->downloadMetadata:Lcom/audible/license/model/DownloadMetadata;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", chapterInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/license/model/ExtraContentLicenseInfo;->chapterInfo:Lcom/audible/mobile/contentlicense/networking/model/ChapterInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
