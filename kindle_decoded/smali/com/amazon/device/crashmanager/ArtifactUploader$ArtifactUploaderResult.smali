.class Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;
.super Ljava/lang/Object;
.source "ArtifactUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/crashmanager/ArtifactUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArtifactUploaderResult"
.end annotation


# instance fields
.field private final mArtifactUploadStatus:Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;

.field private final mCrashDescriptor:Ljava/lang/String;

.field private final mUploadErrorMessage:Ljava/lang/String;

.field private final mUploadErrorTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/device/crashmanager/ArtifactUploader;


# direct methods
.method public constructor <init>(Lcom/amazon/device/crashmanager/ArtifactUploader;Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 120
    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;-><init>(Lcom/amazon/device/crashmanager/ArtifactUploader;Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/device/crashmanager/ArtifactUploader;Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;->this$0:Lcom/amazon/device/crashmanager/ArtifactUploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 128
    iput-object p2, p0, Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;->mArtifactUploadStatus:Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;

    .line 129
    iput-object p3, p0, Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;->mCrashDescriptor:Ljava/lang/String;

    .line 130
    iput-object p4, p0, Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;->mUploadErrorTag:Ljava/lang/String;

    .line 131
    iput-object p5, p0, Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;->mUploadErrorMessage:Ljava/lang/String;

    return-void

    .line 126
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "artifact upload status cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;)Ljava/lang/String;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;->mUploadErrorMessage:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getArtifactUploadStatus()Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;->mArtifactUploadStatus:Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;

    return-object v0
.end method

.method public getCrashDescriptor()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;->mCrashDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadErrorTag()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;->mUploadErrorTag:Ljava/lang/String;

    return-object v0
.end method
