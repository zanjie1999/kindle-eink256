.class public final Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder;
.super Ljava/lang/Object;
.source "LibraryTransferNotificationBuilder.kt"


# instance fields
.field private final context:Landroid/content/Context;

.field private final libraryIntent$delegate:Lkotlin/Lazy;

.field private final notificationBuilder:Landroid/app/Notification$Builder;

.field private final settingsIntent$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder;->context:Landroid/content/Context;

    .line 27
    new-instance p1, Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 28
    sget v0, Lcom/amazon/kindle/krl/R$drawable;->ic_notification_general:I

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const-string v0, "kindle_default_channel"

    .line 30
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 32
    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 27
    iput-object p1, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder;->notificationBuilder:Landroid/app/Notification$Builder;

    .line 35
    new-instance p1, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder$settingsIntent$2;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder$settingsIntent$2;-><init>(Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder;->settingsIntent$delegate:Lkotlin/Lazy;

    .line 42
    new-instance p1, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder$libraryIntent$2;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder$libraryIntent$2;-><init>(Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder;->libraryIntent$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getLibraryIntent()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder;->libraryIntent$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    return-object v0
.end method

.method private final getSettingsIntent()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder;->settingsIntent$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    return-object v0
.end method


# virtual methods
.method public final buildFailFinishNotification(I)Landroid/app/Notification;
    .locals 6

    .line 100
    iget-object v0, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder;->notificationBuilder:Landroid/app/Notification$Builder;

    const/4 v1, 0x0

    .line 101
    invoke-virtual {v0, v1, v1, v1}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 102
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 103
    iget-object v2, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder;->context:Landroid/content/Context;

    sget v3, Lcom/amazon/kindle/krl/R$string;->library_transfer_error:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 104
    iget-object v2, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder;->context:Landroid/content/Context;

    sget v3, Lcom/amazon/kindle/krl/R$string;->library_transfer_finish_issues:I

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v1

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 105
    invoke-direct {p0}, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder;->getSettingsIntent()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 106
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 107
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const-string v0, "notificationBuilder.run \u2026ue)\n            }.build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final buildInitNotification()Landroid/app/Notification;
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder;->notificationBuilder:Landroid/app/Notification$Builder;

    .line 54
    iget-object v1, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder;->context:Landroid/content/Context;

    sget v2, Lcom/amazon/kindle/krl/R$string;->library_transfer_saving:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 55
    invoke-virtual {v0, v2, v2, v1}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 56
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 57
    invoke-direct {p0}, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder;->getLibraryIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const-string v1, "notificationBuilder.run \u2026nt)\n            }.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final buildProgressNotification(III)Landroid/app/Notification;
    .locals 6

    .line 69
    iget-object v0, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder;->notificationBuilder:Landroid/app/Notification$Builder;

    .line 70
    iget-object v1, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder;->context:Landroid/content/Context;

    sget v2, Lcom/amazon/kindle/krl/R$string;->library_transfer_saving:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 71
    iget-object v1, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder;->context:Landroid/content/Context;

    sget v2, Lcom/amazon/kindle/krl/R$string;->library_transfer_progress:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v5, 0x1

    aput-object p3, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 72
    invoke-virtual {v0, p1, p2, v4}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 73
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 74
    invoke-direct {p0}, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder;->getLibraryIntent()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 75
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const-string p2, "notificationBuilder.run \u2026nt)\n            }.build()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final buildSuccessFinishNotification(I)Landroid/app/Notification;
    .locals 6

    .line 84
    iget-object v0, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder;->notificationBuilder:Landroid/app/Notification$Builder;

    const/4 v1, 0x0

    .line 85
    invoke-virtual {v0, v1, v1, v1}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 86
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 87
    iget-object v2, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder;->context:Landroid/content/Context;

    sget v3, Lcom/amazon/kindle/krl/R$string;->library_transfer_saved:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 88
    iget-object v2, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder;->context:Landroid/content/Context;

    sget v3, Lcom/amazon/kindle/krl/R$string;->library_transfer_finish:I

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v1

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 89
    invoke-direct {p0}, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder;->getLibraryIntent()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 90
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const-string v0, "notificationBuilder.run \u2026ue)\n            }.build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder;->context:Landroid/content/Context;

    return-object v0
.end method
