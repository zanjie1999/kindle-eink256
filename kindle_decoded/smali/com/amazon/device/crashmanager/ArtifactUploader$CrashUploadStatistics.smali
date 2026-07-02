.class public Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatistics;
.super Ljava/lang/Object;
.source "ArtifactUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/crashmanager/ArtifactUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CrashUploadStatistics"
.end annotation


# instance fields
.field private final mCrashUploadStatus:Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;

.field private final mNumArtifactsFailed:I

.field private final mNumArtifactsSkipped:I

.field private final mNumArtifactsUploaded:I

.field final synthetic this$0:Lcom/amazon/device/crashmanager/ArtifactUploader;


# direct methods
.method public constructor <init>(Lcom/amazon/device/crashmanager/ArtifactUploader;Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;III)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatistics;->this$0:Lcom/amazon/device/crashmanager/ArtifactUploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p2, p0, Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatistics;->mCrashUploadStatus:Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;

    .line 72
    iput p3, p0, Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatistics;->mNumArtifactsUploaded:I

    .line 73
    iput p4, p0, Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatistics;->mNumArtifactsFailed:I

    .line 74
    iput p5, p0, Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatistics;->mNumArtifactsSkipped:I

    return-void
.end method


# virtual methods
.method public getCrashUploadStatus()Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatistics;->mCrashUploadStatus:Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;

    return-object v0
.end method

.method public getNumArtifactsFailed()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatistics;->mNumArtifactsFailed:I

    return v0
.end method

.method public getNumArtifactsSkipped()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatistics;->mNumArtifactsSkipped:I

    return v0
.end method

.method public getNumArtifactsUploaded()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatistics;->mNumArtifactsUploaded:I

    return v0
.end method
