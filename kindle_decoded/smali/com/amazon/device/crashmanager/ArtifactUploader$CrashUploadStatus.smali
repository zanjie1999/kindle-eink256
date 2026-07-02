.class public final enum Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;
.super Ljava/lang/Enum;
.source "ArtifactUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/crashmanager/ArtifactUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CrashUploadStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;

.field public static final enum FAILURE:Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;

.field public static final enum SERVER_ERROR:Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;

.field public static final enum SUCCESS:Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 55
    new-instance v0, Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;

    const/4 v1, 0x0

    const-string v2, "SUCCESS"

    invoke-direct {v0, v2, v1}, Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;->SUCCESS:Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;

    .line 56
    new-instance v0, Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;

    const/4 v2, 0x1

    const-string v3, "FAILURE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;->FAILURE:Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;

    .line 57
    new-instance v0, Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;

    const/4 v3, 0x2

    const-string v4, "SERVER_ERROR"

    invoke-direct {v0, v4, v3}, Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;->SERVER_ERROR:Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;

    .line 54
    sget-object v5, Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;->SUCCESS:Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;->FAILURE:Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;->$VALUES:[Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;
    .locals 1

    .line 54
    const-class v0, Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;

    return-object p0
.end method

.method public static values()[Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;
    .locals 1

    .line 54
    sget-object v0, Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;->$VALUES:[Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;

    invoke-virtual {v0}, [Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;

    return-object v0
.end method
