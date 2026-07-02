.class public Lcom/audible/mobile/download/AudibleDownloadManagerImpl;
.super Ljava/lang/Object;
.source "AudibleDownloadManagerImpl.java"

# interfaces
.implements Lcom/audible/mobile/download/DownloadManager;


# static fields
.field private static final ACTION_PREFIX:Ljava/lang/String; = "com.audible.mobile.download.action."

.field private static final PACKAGE_PREFIX:Ljava/lang/String; = "com.audible.mobile.download."


# instance fields
.field private final contentTypeServiceResolver:Lcom/audible/mobile/download/ContentTypeServiceResolver;

.field private final context:Landroid/content/Context;

.field private lowStorageStrategy:Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/audible/mobile/download/ContentTypeServiceResolver;

    invoke-direct {v0}, Lcom/audible/mobile/download/ContentTypeServiceResolver;-><init>()V

    iput-object v0, p0, Lcom/audible/mobile/download/AudibleDownloadManagerImpl;->contentTypeServiceResolver:Lcom/audible/mobile/download/ContentTypeServiceResolver;

    .line 41
    iput-object p1, p0, Lcom/audible/mobile/download/AudibleDownloadManagerImpl;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public cancel(J)V
    .locals 7

    .line 56
    iget-object v0, p0, Lcom/audible/mobile/download/AudibleDownloadManagerImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/audible/mobile/download/provider/DownloadContract$DownloadItem;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 57
    iget-object p2, p0, Lcom/audible/mobile/download/AudibleDownloadManagerImpl;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 58
    invoke-static {p2}, Lcom/audible/mobile/download/provider/DownloadContract$DownloadItem;->cursorToRequest(Landroid/database/Cursor;)Lcom/audible/mobile/download/Request;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/download/AudibleDownloadManagerImpl;->contentTypeServiceResolver:Lcom/audible/mobile/download/ContentTypeServiceResolver;

    invoke-virtual {p2}, Lcom/audible/mobile/download/Request;->getContentType()Lcom/audible/mobile/download/ContentType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/audible/mobile/download/ContentTypeServiceResolver;->getServiceForContentType(Lcom/audible/mobile/download/ContentType;)Ljava/lang/Class;

    move-result-object v0

    .line 65
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/audible/mobile/download/AudibleDownloadManagerImpl;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.audible.mobile.download.action.CANCEL_DOWNLOAD"

    .line 66
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    invoke-virtual {p2}, Lcom/audible/mobile/download/Request;->getContentType()Lcom/audible/mobile/download/ContentType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/audible/mobile/download/ContentType;->toIntentCategory()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "com.audible.mobile.download.extra.DOWNLOAD_ID"

    .line 68
    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 69
    iget-object p1, p0, Lcom/audible/mobile/download/AudibleDownloadManagerImpl;->context:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public enqueue(Lcom/audible/mobile/download/Request;)J
    .locals 2

    .line 46
    invoke-static {p1}, Lcom/audible/mobile/download/provider/DownloadContract$DownloadItem;->requestToContentValues(Lcom/audible/mobile/download/Request;)Landroid/content/ContentValues;

    move-result-object p1

    .line 47
    sget-object v0, Lcom/audible/mobile/downloader/DownloadStatus;->QUEUED:Lcom/audible/mobile/downloader/DownloadStatus;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STATUS"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/audible/mobile/download/AudibleDownloadManagerImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/mobile/download/AudibleDownloadManagerImpl;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/audible/mobile/download/provider/DownloadContract$DownloadItem;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/audible/mobile/util/NumberUtils;->toLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getLowStorageStrategy()Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;
    .locals 1

    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/download/AudibleDownloadManagerImpl;->lowStorageStrategy:Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
