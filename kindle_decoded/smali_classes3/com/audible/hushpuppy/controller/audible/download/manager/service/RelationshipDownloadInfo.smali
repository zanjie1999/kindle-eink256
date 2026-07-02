.class public final Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;
.super Ljava/lang/Object;
.source "RelationshipDownloadInfo.java"


# instance fields
.field private final downloadAudioFile:Z

.field private final downloadSyncFile:Z

.field private final relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;


# direct methods
.method public constructor <init>(Lcom/audible/hushpuppy/common/relationship/IRelationship;ZZ)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null relationship passed to queue for download"

    .line 27
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;->relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    .line 29
    iput-boolean p2, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;->downloadAudioFile:Z

    .line 30
    iput-boolean p3, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;->downloadSyncFile:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 54
    const-class v1, Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 58
    :cond_1
    check-cast p1, Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;

    .line 60
    iget-boolean v1, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;->downloadAudioFile:Z

    iget-boolean v2, p1, Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;->downloadAudioFile:Z

    if-eq v1, v2, :cond_2

    return v0

    .line 63
    :cond_2
    iget-boolean v1, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;->downloadSyncFile:Z

    iget-boolean v2, p1, Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;->downloadSyncFile:Z

    if-eq v1, v2, :cond_3

    return v0

    .line 66
    :cond_3
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;->relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    iget-object p1, p1, Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;->relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;->relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;->relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 74
    iget-boolean v1, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;->downloadAudioFile:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 75
    iget-boolean v1, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;->downloadSyncFile:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public isDownloadAudioFile()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;->downloadAudioFile:Z

    return v0
.end method

.method public isDownloadSyncFile()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;->downloadSyncFile:Z

    return v0
.end method
