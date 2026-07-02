.class public Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferProgressListener;
.super Ljava/lang/Object;
.source "LibraryTransferProgressListener.kt"

# interfaces
.implements Lcom/amazon/kindle/sdcard/librarytransfer/TransferListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLibraryTransferProgressListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LibraryTransferProgressListener.kt\ncom/amazon/kindle/sdcard/librarytransfer/LibraryTransferProgressListener\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,88:1\n734#2:89\n825#2,2:90\n*E\n*S KotlinDebug\n*F\n+ 1 LibraryTransferProgressListener.kt\ncom/amazon/kindle/sdcard/librarytransfer/LibraryTransferProgressListener\n*L\n33#1:89\n33#1,2:90\n*E\n"
.end annotation


# instance fields
.field private final msg:Landroid/os/Message;

.field private final notificationManager:Landroid/app/NotificationManager;

.field private final serviceContext:Landroid/app/Service;

.field private totalBooks:I

.field private totalFailed:I

.field private totalSuccess:I

.field private final transferNotificationBuilder:Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder;


# direct methods
.method public constructor <init>(Landroid/app/Service;Landroid/os/Message;)V
    .locals 1

    const-string v0, "serviceContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferProgressListener;->serviceContext:Landroid/app/Service;

    iput-object p2, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferProgressListener;->msg:Landroid/os/Message;

    const-string p2, "notification"

    .line 23
    invoke-virtual {p1, p2}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferProgressListener;->notificationManager:Landroid/app/NotificationManager;

    .line 25
    new-instance p1, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder;

    iget-object p2, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferProgressListener;->serviceContext:Landroid/app/Service;

    invoke-virtual {p2}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "serviceContext.applicationContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferProgressListener;->transferNotificationBuilder:Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder;

    return-void

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public onBookTransferFinish(Lcom/amazon/kindle/content/ContentMetadata;Z)V
    .locals 3

    const-string v0, "metadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget-object v0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferUtils;->INSTANCE:Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferUtils;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferUtils;->shouldSilentTransferBook(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 54
    iget p1, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferProgressListener;->totalSuccess:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferProgressListener;->totalSuccess:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferProgressListener;->totalFailed:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferProgressListener;->totalFailed:I

    .line 55
    :goto_0
    iget p1, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferProgressListener;->totalSuccess:I

    iget p2, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferProgressListener;->totalFailed:I

    add-int/2addr p1, p2

    .line 57
    iget-object p2, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferProgressListener;->notificationManager:Landroid/app/NotificationManager;

    const/16 v0, 0x3e8

    iget-object v1, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferProgressListener;->transferNotificationBuilder:Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder;

    .line 58
    iget v2, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferProgressListener;->totalBooks:I

    invoke-virtual {v1, v2, p1, p1}, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder;->buildProgressNotification(III)Landroid/app/Notification;

    move-result-object p1

    .line 57
    invoke-virtual {p2, v0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public onBookTransferStart(Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 5

    const-string v0, "metadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget-object v0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferUtils;->INSTANCE:Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferUtils;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferUtils;->shouldSilentTransferBook(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 43
    :cond_0
    iget p1, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferProgressListener;->totalSuccess:I

    iget v0, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferProgressListener;->totalFailed:I

    add-int/2addr p1, v0

    .line 45
    iget-object v0, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferProgressListener;->notificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x3e8

    iget-object v2, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferProgressListener;->transferNotificationBuilder:Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder;

    .line 46
    iget v3, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferProgressListener;->totalBooks:I

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v2, v3, p1, v4}, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder;->buildProgressNotification(III)Landroid/app/Notification;

    move-result-object p1

    .line 45
    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public onLibraryTransferFinish()V
    .locals 4

    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    .line 64
    iget-object v0, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferProgressListener;->serviceContext:Landroid/app/Service;

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopForeground(I)V

    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferProgressListener;->serviceContext:Landroid/app/Service;

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopForeground(Z)V

    .line 70
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferProgressListener;->serviceContext:Landroid/app/Service;

    iget-object v1, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferProgressListener;->msg:Landroid/os/Message;

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopSelf(I)V

    .line 74
    iget v0, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferProgressListener;->totalBooks:I

    iget v1, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferProgressListener;->totalSuccess:I

    sub-int v1, v0, v1

    const/16 v2, 0x3e9

    if-lez v1, :cond_1

    .line 80
    iget-object v0, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferProgressListener;->notificationManager:Landroid/app/NotificationManager;

    .line 81
    iget-object v3, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferProgressListener;->transferNotificationBuilder:Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder;

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder;->buildFailFinishNotification(I)Landroid/app/Notification;

    move-result-object v1

    .line 80
    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferProgressListener;->notificationManager:Landroid/app/NotificationManager;

    .line 84
    iget-object v3, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferProgressListener;->transferNotificationBuilder:Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder;

    invoke-virtual {v3, v0}, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder;->buildSuccessFinishNotification(I)Landroid/app/Notification;

    move-result-object v0

    .line 83
    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :goto_1
    return-void
.end method

.method public onLibraryTransferStart(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;)V"
        }
    .end annotation

    const-string v0, "metadatas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/amazon/kindle/content/ContentMetadata;

    .line 33
    sget-object v3, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferUtils;->INSTANCE:Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferUtils;

    invoke-virtual {v3, v2}, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferUtils;->shouldSilentTransferBook(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferProgressListener;->totalBooks:I

    .line 35
    iget-object p1, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferProgressListener;->serviceContext:Landroid/app/Service;

    const/16 v0, 0x3e8

    iget-object v1, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferProgressListener;->transferNotificationBuilder:Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder;

    invoke-virtual {v1}, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder;->buildInitNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method
