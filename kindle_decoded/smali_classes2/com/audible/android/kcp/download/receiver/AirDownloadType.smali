.class public final enum Lcom/audible/android/kcp/download/receiver/AirDownloadType;
.super Ljava/lang/Enum;
.source "AirDownloadType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/android/kcp/download/receiver/AirDownloadType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/android/kcp/download/receiver/AirDownloadType;

.field public static final enum AUDIOBOOK:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

.field public static final enum SAMPLE_AUDIOBOOK:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

.field public static final enum SAMPLE_SYNC_FILE:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

.field public static final enum SYNC_FILE:Lcom/audible/android/kcp/download/receiver/AirDownloadType;


# instance fields
.field private final mContentType:Lcom/audible/mobile/download/ContentType;

.field private final mFileType:Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

.field private final mIsSample:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 18
    new-instance v6, Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    sget-object v3, Lcom/audible/mobile/download/ContentType;->Audiobook:Lcom/audible/mobile/download/ContentType;

    sget-object v4, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;->AUDIO:Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    const-string v1, "AUDIOBOOK"

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/audible/android/kcp/download/receiver/AirDownloadType;-><init>(Ljava/lang/String;ILcom/audible/mobile/download/ContentType;Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;Z)V

    sput-object v6, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->AUDIOBOOK:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    .line 19
    new-instance v0, Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    sget-object v10, Lcom/audible/mobile/download/ContentType;->SampleAudiobook:Lcom/audible/mobile/download/ContentType;

    sget-object v11, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;->AUDIO_SAMPLE:Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    const-string v8, "SAMPLE_AUDIOBOOK"

    const/4 v9, 0x1

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/audible/android/kcp/download/receiver/AirDownloadType;-><init>(Ljava/lang/String;ILcom/audible/mobile/download/ContentType;Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;Z)V

    sput-object v0, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->SAMPLE_AUDIOBOOK:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    .line 20
    new-instance v0, Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    sget-object v4, Lcom/audible/mobile/download/ContentType;->PositionSync:Lcom/audible/mobile/download/ContentType;

    sget-object v5, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;->POSITION_SYNC:Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    const-string v2, "SYNC_FILE"

    const/4 v3, 0x2

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/audible/android/kcp/download/receiver/AirDownloadType;-><init>(Ljava/lang/String;ILcom/audible/mobile/download/ContentType;Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;Z)V

    sput-object v0, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->SYNC_FILE:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    .line 21
    new-instance v0, Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    sget-object v10, Lcom/audible/mobile/download/ContentType;->SamplePositionSync:Lcom/audible/mobile/download/ContentType;

    sget-object v11, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;->POSITION_SYNC:Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    const-string v8, "SAMPLE_SYNC_FILE"

    const/4 v9, 0x3

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/audible/android/kcp/download/receiver/AirDownloadType;-><init>(Ljava/lang/String;ILcom/audible/mobile/download/ContentType;Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;Z)V

    sput-object v0, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->SAMPLE_SYNC_FILE:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    .line 16
    sget-object v2, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->AUDIOBOOK:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->SAMPLE_AUDIOBOOK:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->SYNC_FILE:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sput-object v1, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->$VALUES:[Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/audible/mobile/download/ContentType;Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/download/ContentType;",
            "Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;",
            "Z)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-object p3, p0, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->mContentType:Lcom/audible/mobile/download/ContentType;

    .line 30
    iput-object p4, p0, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->mFileType:Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    .line 31
    iput-boolean p5, p0, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->mIsSample:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/android/kcp/download/receiver/AirDownloadType;
    .locals 1

    .line 16
    const-class v0, Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    return-object p0
.end method

.method public static values()[Lcom/audible/android/kcp/download/receiver/AirDownloadType;
    .locals 1

    .line 16
    sget-object v0, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->$VALUES:[Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    invoke-virtual {v0}, [Lcom/audible/android/kcp/download/receiver/AirDownloadType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    return-object v0
.end method


# virtual methods
.method public getContentType()Lcom/audible/mobile/download/ContentType;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->mContentType:Lcom/audible/mobile/download/ContentType;

    return-object v0
.end method

.method public getFileType()Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->mFileType:Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    return-object v0
.end method
