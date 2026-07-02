.class public final enum Lcom/audible/mobile/download/service/DownloadItemType;
.super Ljava/lang/Enum;
.source "DownloadItemType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/download/service/DownloadItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/download/service/DownloadItemType;

.field public static final enum Audiobook:Lcom/audible/mobile/download/service/DownloadItemType;

.field public static final enum AudiobookMetadata:Lcom/audible/mobile/download/service/DownloadItemType;

.field public static final enum AudiobookSidecar:Lcom/audible/mobile/download/service/DownloadItemType;

.field public static final enum CoverArtImage:Lcom/audible/mobile/download/service/DownloadItemType;

.field public static final enum HighResCoverArtImage:Lcom/audible/mobile/download/service/DownloadItemType;

.field public static final enum SampleSyncFile:Lcom/audible/mobile/download/service/DownloadItemType;

.field public static final enum Simple:Lcom/audible/mobile/download/service/DownloadItemType;

.field public static final enum SyncFile:Lcom/audible/mobile/download/service/DownloadItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 5
    new-instance v0, Lcom/audible/mobile/download/service/DownloadItemType;

    const/4 v1, 0x0

    const-string v2, "Audiobook"

    invoke-direct {v0, v2, v1}, Lcom/audible/mobile/download/service/DownloadItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/download/service/DownloadItemType;->Audiobook:Lcom/audible/mobile/download/service/DownloadItemType;

    new-instance v0, Lcom/audible/mobile/download/service/DownloadItemType;

    const/4 v2, 0x1

    const-string v3, "SyncFile"

    invoke-direct {v0, v3, v2}, Lcom/audible/mobile/download/service/DownloadItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/download/service/DownloadItemType;->SyncFile:Lcom/audible/mobile/download/service/DownloadItemType;

    new-instance v0, Lcom/audible/mobile/download/service/DownloadItemType;

    const/4 v3, 0x2

    const-string v4, "SampleSyncFile"

    invoke-direct {v0, v4, v3}, Lcom/audible/mobile/download/service/DownloadItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/download/service/DownloadItemType;->SampleSyncFile:Lcom/audible/mobile/download/service/DownloadItemType;

    new-instance v0, Lcom/audible/mobile/download/service/DownloadItemType;

    const/4 v4, 0x3

    const-string v5, "AudiobookMetadata"

    invoke-direct {v0, v5, v4}, Lcom/audible/mobile/download/service/DownloadItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/download/service/DownloadItemType;->AudiobookMetadata:Lcom/audible/mobile/download/service/DownloadItemType;

    new-instance v0, Lcom/audible/mobile/download/service/DownloadItemType;

    const/4 v5, 0x4

    const-string v6, "AudiobookSidecar"

    invoke-direct {v0, v6, v5}, Lcom/audible/mobile/download/service/DownloadItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/download/service/DownloadItemType;->AudiobookSidecar:Lcom/audible/mobile/download/service/DownloadItemType;

    new-instance v0, Lcom/audible/mobile/download/service/DownloadItemType;

    const/4 v6, 0x5

    const-string v7, "Simple"

    invoke-direct {v0, v7, v6}, Lcom/audible/mobile/download/service/DownloadItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/download/service/DownloadItemType;->Simple:Lcom/audible/mobile/download/service/DownloadItemType;

    new-instance v0, Lcom/audible/mobile/download/service/DownloadItemType;

    const/4 v7, 0x6

    const-string v8, "CoverArtImage"

    invoke-direct {v0, v8, v7}, Lcom/audible/mobile/download/service/DownloadItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/download/service/DownloadItemType;->CoverArtImage:Lcom/audible/mobile/download/service/DownloadItemType;

    new-instance v0, Lcom/audible/mobile/download/service/DownloadItemType;

    const/4 v8, 0x7

    const-string v9, "HighResCoverArtImage"

    invoke-direct {v0, v9, v8}, Lcom/audible/mobile/download/service/DownloadItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/download/service/DownloadItemType;->HighResCoverArtImage:Lcom/audible/mobile/download/service/DownloadItemType;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/audible/mobile/download/service/DownloadItemType;

    .line 3
    sget-object v10, Lcom/audible/mobile/download/service/DownloadItemType;->Audiobook:Lcom/audible/mobile/download/service/DownloadItemType;

    aput-object v10, v9, v1

    sget-object v1, Lcom/audible/mobile/download/service/DownloadItemType;->SyncFile:Lcom/audible/mobile/download/service/DownloadItemType;

    aput-object v1, v9, v2

    sget-object v1, Lcom/audible/mobile/download/service/DownloadItemType;->SampleSyncFile:Lcom/audible/mobile/download/service/DownloadItemType;

    aput-object v1, v9, v3

    sget-object v1, Lcom/audible/mobile/download/service/DownloadItemType;->AudiobookMetadata:Lcom/audible/mobile/download/service/DownloadItemType;

    aput-object v1, v9, v4

    sget-object v1, Lcom/audible/mobile/download/service/DownloadItemType;->AudiobookSidecar:Lcom/audible/mobile/download/service/DownloadItemType;

    aput-object v1, v9, v5

    sget-object v1, Lcom/audible/mobile/download/service/DownloadItemType;->Simple:Lcom/audible/mobile/download/service/DownloadItemType;

    aput-object v1, v9, v6

    sget-object v1, Lcom/audible/mobile/download/service/DownloadItemType;->CoverArtImage:Lcom/audible/mobile/download/service/DownloadItemType;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/audible/mobile/download/service/DownloadItemType;->$VALUES:[Lcom/audible/mobile/download/service/DownloadItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/download/service/DownloadItemType;
    .locals 1

    .line 3
    const-class v0, Lcom/audible/mobile/download/service/DownloadItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/download/service/DownloadItemType;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/download/service/DownloadItemType;
    .locals 1

    .line 3
    sget-object v0, Lcom/audible/mobile/download/service/DownloadItemType;->$VALUES:[Lcom/audible/mobile/download/service/DownloadItemType;

    invoke-virtual {v0}, [Lcom/audible/mobile/download/service/DownloadItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/download/service/DownloadItemType;

    return-object v0
.end method
