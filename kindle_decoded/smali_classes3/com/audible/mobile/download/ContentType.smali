.class public final enum Lcom/audible/mobile/download/ContentType;
.super Ljava/lang/Enum;
.source "ContentType.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/audible/mobile/downloader/factory/DownloadType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/download/ContentType;",
        ">;",
        "Landroid/os/Parcelable;",
        "Lcom/audible/mobile/downloader/factory/DownloadType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/download/ContentType;

.field public static final enum Audiobook:Lcom/audible/mobile/download/ContentType;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/audible/mobile/download/ContentType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum CoverArt:Lcom/audible/mobile/download/ContentType;

.field public static final enum Isma:Lcom/audible/mobile/download/ContentType;

.field public static final enum Library:Lcom/audible/mobile/download/ContentType;

.field public static final enum PositionSync:Lcom/audible/mobile/download/ContentType;

.field public static final enum SampleAudiobook:Lcom/audible/mobile/download/ContentType;

.field public static final enum SamplePositionSync:Lcom/audible/mobile/download/ContentType;

.field public static final enum Sidecar:Lcom/audible/mobile/download/ContentType;

.field public static final enum Similarity:Lcom/audible/mobile/download/ContentType;

.field public static final enum SimilarityCoverArt:Lcom/audible/mobile/download/ContentType;

.field public static final enum Subscription:Lcom/audible/mobile/download/ContentType;


# instance fields
.field private final notificationId:I

.field private final requiresForegroundDownloading:Z

.field private final supportsCancellation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 29
    new-instance v0, Lcom/audible/mobile/download/ContentType;

    const/4 v1, 0x0

    const-string v2, "CoverArt"

    invoke-direct {v0, v2, v1, v1}, Lcom/audible/mobile/download/ContentType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/audible/mobile/download/ContentType;->CoverArt:Lcom/audible/mobile/download/ContentType;

    new-instance v0, Lcom/audible/mobile/download/ContentType;

    const/4 v2, 0x1

    const-string v3, "SimilarityCoverArt"

    invoke-direct {v0, v3, v2, v1}, Lcom/audible/mobile/download/ContentType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/audible/mobile/download/ContentType;->SimilarityCoverArt:Lcom/audible/mobile/download/ContentType;

    new-instance v0, Lcom/audible/mobile/download/ContentType;

    const/4 v3, 0x2

    const-string v4, "Similarity"

    invoke-direct {v0, v4, v3, v1}, Lcom/audible/mobile/download/ContentType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/audible/mobile/download/ContentType;->Similarity:Lcom/audible/mobile/download/ContentType;

    new-instance v0, Lcom/audible/mobile/download/ContentType;

    const/4 v4, 0x3

    const-string v5, "Library"

    invoke-direct {v0, v5, v4, v1}, Lcom/audible/mobile/download/ContentType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/audible/mobile/download/ContentType;->Library:Lcom/audible/mobile/download/ContentType;

    new-instance v0, Lcom/audible/mobile/download/ContentType;

    const/4 v5, 0x4

    const-string v6, "Subscription"

    invoke-direct {v0, v6, v5, v1}, Lcom/audible/mobile/download/ContentType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/audible/mobile/download/ContentType;->Subscription:Lcom/audible/mobile/download/ContentType;

    new-instance v0, Lcom/audible/mobile/download/ContentType;

    const/4 v6, 0x5

    const-string v7, "Audiobook"

    const/16 v8, 0x14

    invoke-direct {v0, v7, v6, v2, v8}, Lcom/audible/mobile/download/ContentType;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/audible/mobile/download/ContentType;->Audiobook:Lcom/audible/mobile/download/ContentType;

    new-instance v0, Lcom/audible/mobile/download/ContentType;

    const/4 v7, 0x6

    const-string v8, "SampleAudiobook"

    invoke-direct {v0, v8, v7, v2}, Lcom/audible/mobile/download/ContentType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/audible/mobile/download/ContentType;->SampleAudiobook:Lcom/audible/mobile/download/ContentType;

    new-instance v0, Lcom/audible/mobile/download/ContentType;

    const/4 v8, 0x7

    const-string v9, "Sidecar"

    invoke-direct {v0, v9, v8, v2}, Lcom/audible/mobile/download/ContentType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/audible/mobile/download/ContentType;->Sidecar:Lcom/audible/mobile/download/ContentType;

    .line 30
    new-instance v0, Lcom/audible/mobile/download/ContentType;

    const/16 v9, 0x8

    const-string v10, "PositionSync"

    invoke-direct {v0, v10, v9, v2}, Lcom/audible/mobile/download/ContentType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/audible/mobile/download/ContentType;->PositionSync:Lcom/audible/mobile/download/ContentType;

    new-instance v0, Lcom/audible/mobile/download/ContentType;

    const/16 v10, 0x9

    const-string v11, "SamplePositionSync"

    invoke-direct {v0, v11, v10, v2}, Lcom/audible/mobile/download/ContentType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/audible/mobile/download/ContentType;->SamplePositionSync:Lcom/audible/mobile/download/ContentType;

    new-instance v0, Lcom/audible/mobile/download/ContentType;

    const/16 v11, 0xa

    const-string v12, "Isma"

    const/16 v13, 0x15

    invoke-direct {v0, v12, v11, v2, v13}, Lcom/audible/mobile/download/ContentType;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/audible/mobile/download/ContentType;->Isma:Lcom/audible/mobile/download/ContentType;

    const/16 v12, 0xb

    new-array v12, v12, [Lcom/audible/mobile/download/ContentType;

    .line 27
    sget-object v13, Lcom/audible/mobile/download/ContentType;->CoverArt:Lcom/audible/mobile/download/ContentType;

    aput-object v13, v12, v1

    sget-object v1, Lcom/audible/mobile/download/ContentType;->SimilarityCoverArt:Lcom/audible/mobile/download/ContentType;

    aput-object v1, v12, v2

    sget-object v1, Lcom/audible/mobile/download/ContentType;->Similarity:Lcom/audible/mobile/download/ContentType;

    aput-object v1, v12, v3

    sget-object v1, Lcom/audible/mobile/download/ContentType;->Library:Lcom/audible/mobile/download/ContentType;

    aput-object v1, v12, v4

    sget-object v1, Lcom/audible/mobile/download/ContentType;->Subscription:Lcom/audible/mobile/download/ContentType;

    aput-object v1, v12, v5

    sget-object v1, Lcom/audible/mobile/download/ContentType;->Audiobook:Lcom/audible/mobile/download/ContentType;

    aput-object v1, v12, v6

    sget-object v1, Lcom/audible/mobile/download/ContentType;->SampleAudiobook:Lcom/audible/mobile/download/ContentType;

    aput-object v1, v12, v7

    sget-object v1, Lcom/audible/mobile/download/ContentType;->Sidecar:Lcom/audible/mobile/download/ContentType;

    aput-object v1, v12, v8

    sget-object v1, Lcom/audible/mobile/download/ContentType;->PositionSync:Lcom/audible/mobile/download/ContentType;

    aput-object v1, v12, v9

    sget-object v1, Lcom/audible/mobile/download/ContentType;->SamplePositionSync:Lcom/audible/mobile/download/ContentType;

    aput-object v1, v12, v10

    aput-object v0, v12, v11

    sput-object v12, Lcom/audible/mobile/download/ContentType;->$VALUES:[Lcom/audible/mobile/download/ContentType;

    .line 50
    new-instance v0, Lcom/audible/mobile/download/ContentType$1;

    invoke-direct {v0}, Lcom/audible/mobile/download/ContentType$1;-><init>()V

    sput-object v0, Lcom/audible/mobile/download/ContentType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    const/4 v0, -0x1

    .line 40
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/audible/mobile/download/ContentType;-><init>(Ljava/lang/String;IZI)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput-boolean p3, p0, Lcom/audible/mobile/download/ContentType;->supportsCancellation:Z

    .line 46
    iput p4, p0, Lcom/audible/mobile/download/ContentType;->notificationId:I

    const/4 p1, -0x1

    if-eq p4, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 47
    :goto_0
    iput-boolean p1, p0, Lcom/audible/mobile/download/ContentType;->requiresForegroundDownloading:Z

    return-void
.end method

.method private static createBaseIntentFromRequest(Lcom/audible/mobile/download/Request;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 115
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/audible/mobile/download/Request;->getContentType()Lcom/audible/mobile/download/ContentType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/audible/mobile/download/ContentType;->toIntentCategory()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.audible.mobile.download.extra.REQUEST"

    .line 118
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static createDownloadCancelledIntent(Lcom/audible/mobile/download/Request;)Landroid/content/Intent;
    .locals 1

    const-string v0, "com.audible.mobile.download.action.DOWNLOAD_CANCELLED"

    .line 100
    invoke-static {p0, v0}, Lcom/audible/mobile/download/ContentType;->createBaseIntentFromRequest(Lcom/audible/mobile/download/Request;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static createDownloadCompleteIntent(Lcom/audible/mobile/download/Request;Ljava/io/File;)Landroid/content/Intent;
    .locals 1

    const-string v0, "com.audible.mobile.download.action.DOWNLOAD_COMPLETE"

    .line 71
    invoke-static {p0, v0, p1}, Lcom/audible/mobile/download/ContentType;->createIntentFromFile(Lcom/audible/mobile/download/Request;Ljava/lang/String;Ljava/io/File;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static createDownloadCompleteIntent(Lcom/audible/mobile/download/Request;[B)Landroid/content/Intent;
    .locals 2

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.audible.mobile.download.action.DOWNLOAD_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/audible/mobile/download/Request;->getContentType()Lcom/audible/mobile/download/ContentType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/audible/mobile/download/ContentType;->toIntentCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.audible.mobile.download.extra.PAYLOAD"

    .line 83
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string p1, "com.audible.mobile.download.extra.REQUEST"

    .line 84
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static createDownloadFailedIntent(Lcom/audible/mobile/download/Request;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    const-string v0, "com.audible.mobile.download.action.DOWNLOAD_FAILED"

    .line 90
    invoke-static {p0, v0, p1}, Lcom/audible/mobile/download/ContentType;->createIntentFromFile(Lcom/audible/mobile/download/Request;Ljava/lang/String;Ljava/io/File;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "com.audible.mobile.download.extra.ERROR_STATUS"

    .line 92
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.audible.mobile.download.extra.ERROR_MESSAGE"

    .line 93
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public static createDownloadProgressIntent(Lcom/audible/mobile/download/Request;JJ)Landroid/content/Intent;
    .locals 1

    const-string v0, "com.audible.mobile.download.action.DOWNLOAD_PROGRESS"

    .line 105
    invoke-static {p0, v0}, Lcom/audible/mobile/download/ContentType;->createBaseIntentFromRequest(Lcom/audible/mobile/download/Request;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "com.audible.mobile.download.extra.FILE_CURRENT_LENGTH"

    .line 107
    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "com.audible.mobile.download.extra.CONTENT_LENGTH"

    .line 108
    invoke-virtual {p0, p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    return-object p0
.end method

.method public static createDownloadRemovedIntent(Lcom/audible/mobile/download/Request;)Landroid/content/Intent;
    .locals 1

    const-string v0, "com.audible.mobile.download.action.DOWNLOAD_REMOVED"

    .line 76
    invoke-static {p0, v0}, Lcom/audible/mobile/download/ContentType;->createBaseIntentFromRequest(Lcom/audible/mobile/download/Request;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static createDownloadStartedIntent(Lcom/audible/mobile/download/Request;)Landroid/content/Intent;
    .locals 1

    const-string v0, "com.audible.mobile.download.action.DOWNLOAD_STARTED"

    .line 66
    invoke-static {p0, v0}, Lcom/audible/mobile/download/ContentType;->createBaseIntentFromRequest(Lcom/audible/mobile/download/Request;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static createIntentFromFile(Lcom/audible/mobile/download/Request;Ljava/lang/String;Ljava/io/File;)Landroid/content/Intent;
    .locals 1

    .line 125
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/audible/mobile/download/Request;->getContentType()Lcom/audible/mobile/download/ContentType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/audible/mobile/download/ContentType;->toIntentCategory()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "com.audible.mobile.download.extra.FILE_URI"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "com.audible.mobile.download.extra.REQUEST"

    .line 129
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/download/ContentType;
    .locals 1

    .line 27
    const-class v0, Lcom/audible/mobile/download/ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/download/ContentType;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/download/ContentType;
    .locals 1

    .line 27
    sget-object v0, Lcom/audible/mobile/download/ContentType;->$VALUES:[Lcom/audible/mobile/download/ContentType;

    invoke-virtual {v0}, [Lcom/audible/mobile/download/ContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/download/ContentType;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNotificationId()I
    .locals 1

    .line 151
    iget v0, p0, Lcom/audible/mobile/download/ContentType;->notificationId:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 169
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requiresForegroundDownloading()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lcom/audible/mobile/download/ContentType;->requiresForegroundDownloading:Z

    return v0
.end method

.method public toIntentCategory()Ljava/lang/String;
    .locals 2

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.audible.mobile.download.category."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 163
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
