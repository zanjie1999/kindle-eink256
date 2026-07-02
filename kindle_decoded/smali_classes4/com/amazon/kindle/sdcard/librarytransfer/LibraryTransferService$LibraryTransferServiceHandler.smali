.class public final Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferService$LibraryTransferServiceHandler;
.super Landroid/os/Handler;
.source "LibraryTransferService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LibraryTransferServiceHandler"
.end annotation


# instance fields
.field private final serviceContext:Landroid/app/Service;


# direct methods
.method public constructor <init>(Landroid/app/Service;Landroid/os/Looper;)V
    .locals 1

    const-string v0, "serviceContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "looper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferService$LibraryTransferServiceHandler;->serviceContext:Landroid/app/Service;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget-object v0, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->INSTANCE:Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;

    new-instance v1, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferProgressListener;

    iget-object v2, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferService$LibraryTransferServiceHandler;->serviceContext:Landroid/app/Service;

    invoke-direct {v1, v2, p1}, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferProgressListener;-><init>(Landroid/app/Service;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->executeTransfer(Lcom/amazon/kindle/sdcard/librarytransfer/TransferListener;)V

    return-void
.end method
