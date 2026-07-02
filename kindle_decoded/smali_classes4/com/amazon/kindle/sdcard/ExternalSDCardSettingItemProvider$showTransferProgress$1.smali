.class final Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider$showTransferProgress$1;
.super Ljava/lang/Object;
.source "ExternalSDCardSettingItemProvider.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider;->showTransferProgress(Lcom/amazon/kcp/redding/ReddingActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $activity:Lcom/amazon/kcp/redding/ReddingActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/redding/ReddingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider$showTransferProgress$1;->$activity:Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 86
    sget-object v0, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->INSTANCE:Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;

    invoke-virtual {v0}, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->shouldCalculate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider$showTransferProgress$1$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider$showTransferProgress$1$1;-><init>(Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider$showTransferProgress$1;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
