.class final Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider$showTransferProgress$1$1;
.super Ljava/lang/Object;
.source "ExternalSDCardSettingItemProvider.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider$showTransferProgress$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider$showTransferProgress$1;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider$showTransferProgress$1;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider$showTransferProgress$1$1;->this$0:Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider$showTransferProgress$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider$showTransferProgress$1$1;->this$0:Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider$showTransferProgress$1;

    iget-object v0, v0, Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider$showTransferProgress$1;->$activity:Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider$showTransferProgress$1$1;->this$0:Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider$showTransferProgress$1;

    iget-object v0, v0, Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider$showTransferProgress$1;->$activity:Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "activity.fragmentManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment;

    invoke-direct {v0}, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment;-><init>()V

    iget-object v1, p0, Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider$showTransferProgress$1$1;->this$0:Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider$showTransferProgress$1;

    iget-object v1, v1, Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider$showTransferProgress$1;->$activity:Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "TRANSFER_PROGRESS"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
