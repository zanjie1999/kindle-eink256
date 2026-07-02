.class final Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder$settingsIntent$2;
.super Lkotlin/jvm/internal/Lambda;
.source "LibraryTransferNotificationBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/app/PendingIntent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder$settingsIntent$2;->this$0:Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/app/PendingIntent;
    .locals 3

    .line 36
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryController;->newLibrarySettingsIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Utils.getFactory().libra\u2026ewLibrarySettingsIntent()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v1, 0x14000000

    .line 37
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 38
    iget-object v1, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder$settingsIntent$2;->this$0:Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder;

    invoke-virtual {v1}, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferNotificationBuilder$settingsIntent$2;->invoke()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method
