.class public final Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferService;
.super Landroid/app/Service;
.source "LibraryTransferService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferService$LibraryTransferServiceHandler;
    }
.end annotation


# instance fields
.field private libraryTransferServiceHandler:Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferService$LibraryTransferServiceHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 39
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LibraryTransferService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 40
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 41
    new-instance v1, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferService$LibraryTransferServiceHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v2, "thread.looper"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, v0}, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferService$LibraryTransferServiceHandler;-><init>(Landroid/app/Service;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferService;->libraryTransferServiceHandler:Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferService$LibraryTransferServiceHandler;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const-string p2, "intent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object p1, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferService;->libraryTransferServiceHandler:Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferService$LibraryTransferServiceHandler;

    const/4 p2, 0x0

    const-string v0, "libraryTransferServiceHandler"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const-string v1, "libraryTransferServiceHandler.obtainMessage()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iput p3, p1, Landroid/os/Message;->arg1:I

    .line 47
    iget-object p3, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferService;->libraryTransferServiceHandler:Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferService$LibraryTransferServiceHandler;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p1, 0x2

    return p1

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    .line 45
    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 67
    iget-object p1, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferService;->libraryTransferServiceHandler:Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferService$LibraryTransferServiceHandler;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    const-string v0, "libraryTransferServiceHandler.looper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_0
    const-string p1, "libraryTransferServiceHandler"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
