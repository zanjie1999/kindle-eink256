.class Lcom/amazon/kcp/reader/ReaderActivity$24;
.super Ljava/lang/Object;
.source "ReaderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ReaderActivity;->onLocalBookItemEvent(Lcom/amazon/kindle/krx/events/LocalBookItemEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ReaderActivity;

.field final synthetic val$event:Lcom/amazon/kindle/krx/events/LocalBookItemEvent;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kindle/krx/events/LocalBookItemEvent;)V
    .locals 0

    .line 3877
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$24;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ReaderActivity$24;->val$event:Lcom/amazon/kindle/krx/events/LocalBookItemEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 3881
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity$24;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity$24;->val$event:Lcom/amazon/kindle/krx/events/LocalBookItemEvent;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/events/LocalBookItemEvent;->getSyncType()Lcom/amazon/kindle/krx/sync/LPRSyncType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->access$1900(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kindle/krx/sync/LPRSyncType;)Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3883
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity$24;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    .line 3884
    invoke-static {v1}, Lcom/amazon/kcp/reader/ReaderActivity;->access$2000(Lcom/amazon/kcp/reader/ReaderActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/reader/ReaderActivity$24;->val$event:Lcom/amazon/kindle/krx/events/LocalBookItemEvent;

    invoke-virtual {v3}, Lcom/amazon/kindle/krx/events/LocalBookItemEvent;->getSyncType()Lcom/amazon/kindle/krx/sync/LPRSyncType;

    move-result-object v3

    .line 3883
    invoke-static {v1, v2, v0, v3}, Lcom/amazon/kcp/reader/ui/LprMessageHelper;->generateLprMessageString(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;Lcom/amazon/kindle/krx/sync/LPRSyncType;)Ljava/lang/String;

    move-result-object v1

    .line 3885
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3886
    iget-object v3, p0, Lcom/amazon/kcp/reader/ReaderActivity$24;->val$event:Lcom/amazon/kindle/krx/events/LocalBookItemEvent;

    invoke-virtual {v3}, Lcom/amazon/kindle/krx/events/LocalBookItemEvent;->getSyncType()Lcom/amazon/kindle/krx/sync/LPRSyncType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LprSyncType"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "FprMrprMessage"

    .line 3887
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3888
    iget v1, v0, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->position:I

    const-string v3, "FprMrprPosition"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3889
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity$24;->val$event:Lcom/amazon/kindle/krx/events/LocalBookItemEvent;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/events/LocalBookItemEvent;->getSyncType()Lcom/amazon/kindle/krx/sync/LPRSyncType;

    move-result-object v1

    sget-object v3, Lcom/amazon/kindle/krx/sync/LPRSyncType;->MRPR:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity$24;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-static {v1}, Lcom/amazon/kcp/reader/ReaderActivity;->access$2100(Lcom/amazon/kcp/reader/ReaderActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3890
    invoke-static {}, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressUtils;->isMrprBottomSheetFirstTreatmentEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3891
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity$24;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ReaderActivity;->getCurrentNLNMode()Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->FULL_PAGE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    if-eq v1, v2, :cond_0

    .line 3892
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity$24;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kcp/reader/ReaderActivity;->showNLNContentFragment(Lcom/amazon/kindle/nln/NonLinearNavigationMode;Z)V

    .line 3893
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity$24;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    iget-object v1, v1, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    new-instance v2, Lcom/amazon/kcp/reader/ReaderActivity$24$1;

    invoke-direct {v2, p0, v0}, Lcom/amazon/kcp/reader/ReaderActivity$24$1;-><init>(Lcom/amazon/kcp/reader/ReaderActivity$24;Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;)V

    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity$24;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    .line 3898
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/amazon/kindle/krl/R$integer;->action_bar_decoration_hide_delay:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v3, v0

    .line 3893
    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3900
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity$24;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-static {v1, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->access$2200(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;)V

    goto :goto_0

    .line 3903
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity$24;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/redding/ReddingActivity;->showDialogSafely(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 3906
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity$24;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/redding/ReddingActivity;->showDialogSafely(ILandroid/os/Bundle;)Z

    :cond_3
    :goto_0
    return-void
.end method
