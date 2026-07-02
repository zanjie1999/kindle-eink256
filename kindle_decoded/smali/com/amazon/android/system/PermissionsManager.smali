.class public Lcom/amazon/android/system/PermissionsManager;
.super Ljava/lang/Object;
.source "PermissionsManager.java"


# static fields
.field private static final EXTERNAL_STORAGE_AUTHORITY:Ljava/lang/String; = "com.android.externalstorage.documents"

.field private static final PRIMARY_VOLUME_NAME:Ljava/lang/String; = "primary"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private failureMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field

.field private requestedPath:Ljava/lang/String;

.field private successMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/amazon/android/system/PermissionsManager;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/system/PermissionsManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/android/system/PermissionsManager;->activity:Ljava/lang/ref/WeakReference;

    .line 59
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/system/PermissionsManager;->successMap:Ljava/util/Map;

    .line 60
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/system/PermissionsManager;->failureMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/android/system/PermissionsManager;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/amazon/android/system/PermissionsManager;->requestedPath:Ljava/lang/String;

    return-object p0
.end method

.method private isBuildVersionLessThan23()Z
    .locals 2

    .line 329
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private queueCallbacksForRequest(ILjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/amazon/android/system/PermissionsManager;->successMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 177
    iget-object v1, p0, Lcom/amazon/android/system/PermissionsManager;->successMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object p2, p0, Lcom/amazon/android/system/PermissionsManager;->failureMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_1

    .line 183
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 184
    iget-object v0, p0, Lcom/amazon/android/system/PermissionsManager;->failureMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_1
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private removeCallbacksForRequest(I)V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/amazon/android/system/PermissionsManager;->successMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Lcom/amazon/android/system/PermissionsManager;->failureMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private safeCheckSelfPermission(Ljava/lang/String;)Z
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/amazon/android/system/PermissionsManager;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 334
    invoke-direct {p0}, Lcom/amazon/android/system/PermissionsManager;->isBuildVersionLessThan23()Z

    move-result p1

    return p1

    .line 335
    :cond_0
    invoke-direct {p0}, Lcom/amazon/android/system/PermissionsManager;->isBuildVersionLessThan23()Z

    move-result v1

    if-nez v1, :cond_2

    .line 336
    invoke-virtual {v0, p1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public getRequestedPath()Ljava/lang/String;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/amazon/android/system/PermissionsManager;->requestedPath:Ljava/lang/String;

    return-object v0
.end method

.method protected getTreeUriFromFileName(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    .line 132
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "primary"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "%s:%s"

    .line 133
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.externalstorage.documents"

    invoke-static {v0, p1}, Landroid/provider/DocumentsContract;->buildTreeDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public hasExternalStoragePermission()Z
    .locals 1

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 317
    invoke-direct {p0, v0}, Lcom/amazon/android/system/PermissionsManager;->safeCheckSelfPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 318
    invoke-direct {p0, v0}, Lcom/amazon/android/system/PermissionsManager;->safeCheckSelfPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;Lcom/amazon/kindle/scan/ScanLocalContentUtils;Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics;)V
    .locals 7

    .line 263
    iget-object v0, p0, Lcom/amazon/android/system/PermissionsManager;->requestedPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$EntryPoint;->SETTING:Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$EntryPoint;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$EntryPoint;->LIBRARY:Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$EntryPoint;

    .line 264
    :goto_0
    iget-object v1, p0, Lcom/amazon/android/system/PermissionsManager;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const/16 v2, 0x43b9

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, v2, :cond_1

    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    if-eqz v1, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_5

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    .line 269
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 272
    :cond_2
    invoke-static {v1, v2}, Lcom/amazon/android/system/PathUtil;->getFilePathFromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 273
    sget-object v6, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$EntryPoint;->SETTING:Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$EntryPoint;

    if-ne v0, v6, :cond_3

    .line 274
    iput-object v5, p0, Lcom/amazon/android/system/PermissionsManager;->requestedPath:Ljava/lang/String;

    .line 276
    :cond_3
    iget-object v6, p0, Lcom/amazon/android/system/PermissionsManager;->requestedPath:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 277
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Actual path did not match requested path: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/amazon/android/system/PermissionsManager;->requestedPath:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_2

    .line 280
    :cond_4
    invoke-static {}, Lcom/amazon/kcp/debug/ScopedStorageUtilsManager;->getInstance()Lcom/amazon/kcp/debug/ScopedStorageUtils;

    move-result-object v4

    .line 282
    iget-object v5, p0, Lcom/amazon/android/system/PermissionsManager;->requestedPath:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Lcom/amazon/kcp/debug/ScopedStorageUtils;->getUriForFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    .line 283
    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 284
    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result p3

    and-int/lit8 p3, p3, 0x3

    .line 286
    invoke-virtual {v5, v2, p3}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 287
    iget-object p3, p0, Lcom/amazon/android/system/PermissionsManager;->requestedPath:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, p3, v2}, Lcom/amazon/kcp/debug/ScopedStorageUtils;->setUriForFilePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p3

    new-instance v2, Lcom/amazon/android/system/PermissionsManager$1;

    invoke-direct {v2, p0, p4}, Lcom/amazon/android/system/PermissionsManager$1;-><init>(Lcom/amazon/android/system/PermissionsManager;Lcom/amazon/kindle/scan/ScanLocalContentUtils;)V

    invoke-interface {p3, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 297
    invoke-static {}, Lcom/amazon/kindle/content/SideloadedContentUtilsManager;->getInstance()Lcom/amazon/kindle/content/SideloadedContentUtils;

    move-result-object p3

    iget-object p4, p0, Lcom/amazon/android/system/PermissionsManager;->requestedPath:Ljava/lang/String;

    invoke-virtual {p3, v1, p4, v3}, Lcom/amazon/kindle/content/SideloadedContentUtils;->setSideloadedDirectoryEnabled(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_5
    move v4, p2

    .line 301
    :goto_2
    new-instance p2, Ljava/io/File;

    iget-object p3, p0, Lcom/amazon/android/system/PermissionsManager;->requestedPath:Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;->NA:Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;

    if-eqz v4, :cond_6

    sget-object p4, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;->ALLOW:Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;

    goto :goto_3

    :cond_6
    move-object p4, p3

    :goto_3
    invoke-virtual {p5, v0, p2, p3, p4}, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics;->emitDirectoryPermissionMetric(Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$EntryPoint;Ljava/lang/String;Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;)V

    if-eqz v4, :cond_7

    .line 303
    iget-object p2, p0, Lcom/amazon/android/system/PermissionsManager;->successMap:Ljava/util/Map;

    goto :goto_4

    :cond_7
    iget-object p2, p0, Lcom/amazon/android/system/PermissionsManager;->failureMap:Ljava/util/Map;

    :goto_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_8

    .line 305
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Runnable;

    .line 306
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto :goto_5

    .line 309
    :cond_8
    invoke-direct {p0, p1}, Lcom/amazon/android/system/PermissionsManager;->removeCallbacksForRequest(I)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    const/16 v0, 0x539

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_6

    const/16 v0, 0x7a69

    if-eq p1, v0, :cond_3

    const v0, 0x1b9d9

    if-eq p1, v0, :cond_0

    .line 244
    sget-object p2, Lcom/amazon/android/system/PermissionsManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unrecognized Permission Request ID: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 233
    :cond_0
    array-length v0, p3

    if-ne v0, v1, :cond_1

    aget p3, p3, v2

    if-nez p3, :cond_1

    aget-object p2, p2, v2

    const-string p3, "android.permission.ACCESS_FINE_LOCATION"

    .line 235
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 236
    iget-object p2, p0, Lcom/amazon/android/system/PermissionsManager;->successMap:Ljava/util/Map;

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/amazon/android/system/PermissionsManager;->failureMap:Ljava/util/Map;

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_9

    .line 238
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Runnable;

    .line 239
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    .line 222
    :cond_3
    array-length v0, p3

    if-ne v0, v1, :cond_4

    aget p3, p3, v2

    if-nez p3, :cond_4

    aget-object p2, p2, v2

    const-string p3, "android.permission.GET_ACCOUNTS"

    .line 224
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_5

    .line 225
    iget-object p2, p0, Lcom/amazon/android/system/PermissionsManager;->successMap:Ljava/util/Map;

    goto :goto_4

    :cond_5
    iget-object p2, p0, Lcom/amazon/android/system/PermissionsManager;->failureMap:Ljava/util/Map;

    :goto_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_9

    .line 227
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Runnable;

    .line 228
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto :goto_5

    .line 208
    :cond_6
    array-length v0, p3

    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    aget v0, p3, v2

    if-nez v0, :cond_7

    aget p3, p3, v1

    if-nez p3, :cond_7

    aget-object p3, p2, v2

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 211
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    aget-object p2, p2, v1

    const-string p3, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 212
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_6

    :cond_7
    const/4 v1, 0x0

    :goto_6
    if-eqz v1, :cond_8

    .line 213
    iget-object p2, p0, Lcom/amazon/android/system/PermissionsManager;->successMap:Ljava/util/Map;

    goto :goto_7

    :cond_8
    iget-object p2, p0, Lcom/amazon/android/system/PermissionsManager;->failureMap:Ljava/util/Map;

    :goto_7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_9

    .line 215
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Runnable;

    .line 216
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto :goto_8

    .line 247
    :cond_9
    :goto_9
    invoke-direct {p0, p1}, Lcom/amazon/android/system/PermissionsManager;->removeCallbacksForRequest(I)V

    return-void
.end method

.method public requestExternalDirectoryPermissions(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/amazon/android/system/PermissionsManager;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x43b9

    .line 113
    invoke-direct {p0, v1, p1, p2}, Lcom/amazon/android/system/PermissionsManager;->queueCallbacksForRequest(ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 114
    iput-object p3, p0, Lcom/amazon/android/system/PermissionsManager;->requestedPath:Ljava/lang/String;

    .line 115
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, p3}, Lcom/amazon/android/system/PermissionsManager;->getTreeUriFromFileName(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {v0, p2}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 117
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt p3, v2, :cond_1

    .line 118
    invoke-virtual {p2}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p2

    const-string p3, "android.provider.extra.INITIAL_URI"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 120
    :cond_1
    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 109
    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public requestExternalStoragePermissions(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 4

    .line 69
    invoke-direct {p0}, Lcom/amazon/android/system/PermissionsManager;->isBuildVersionLessThan23()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 71
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/system/PermissionsManager;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    .line 80
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void

    :cond_3
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 85
    invoke-virtual {v0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    if-nez v2, :cond_5

    .line 86
    invoke-virtual {v0, v3}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    if-eqz p1, :cond_4

    .line 88
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_4
    return-void

    :cond_5
    const/16 v2, 0x539

    .line 93
    invoke-direct {p0, v2, p1, p2}, Lcom/amazon/android/system/PermissionsManager;->queueCallbacksForRequest(ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 94
    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method
