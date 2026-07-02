.class Lcom/amazon/kcp/library/TransientActivity$6;
.super Ljava/lang/Object;
.source "TransientActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/TransientActivity;->setDownloadProgress(Lcom/amazon/kindle/services/download/IContentDownload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/TransientActivity;

.field final synthetic val$contentDownload:Lcom/amazon/kindle/services/download/IContentDownload;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/TransientActivity;Lcom/amazon/kindle/services/download/IContentDownload;)V
    .locals 0

    .line 507
    iput-object p1, p0, Lcom/amazon/kcp/library/TransientActivity$6;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    iput-object p2, p0, Lcom/amazon/kcp/library/TransientActivity$6;->val$contentDownload:Lcom/amazon/kindle/services/download/IContentDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 509
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity$6;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/TransientActivity;->access$600(Lcom/amazon/kcp/library/TransientActivity;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 510
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity$6;->val$contentDownload:Lcom/amazon/kindle/services/download/IContentDownload;

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IContentDownload;->getMaxProgress()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 511
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity$6;->val$contentDownload:Lcom/amazon/kindle/services/download/IContentDownload;

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IContentDownload;->getPercentage()I

    move-result v0

    .line 512
    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity$6;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    invoke-static {v1}, Lcom/amazon/kcp/library/TransientActivity;->access$700(Lcom/amazon/kcp/library/TransientActivity;)Lcom/amazon/android/util/DownloadProgressBarState;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->VISIBLE:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    iget-object v3, p0, Lcom/amazon/kcp/library/TransientActivity$6;->val$contentDownload:Lcom/amazon/kindle/services/download/IContentDownload;

    iget-object v4, p0, Lcom/amazon/kcp/library/TransientActivity$6;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    .line 513
    invoke-static {v4}, Lcom/amazon/kcp/library/TransientActivity;->access$800(Lcom/amazon/kcp/library/TransientActivity;)Landroid/widget/ProgressBar;

    move-result-object v4

    .line 512
    invoke-static {v1, v2, v3, v4}, Lcom/amazon/android/util/UIUtils;->setDownloadProgressBar(Lcom/amazon/android/util/DownloadProgressBarState;Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;Lcom/amazon/kindle/services/download/IContentDownload;Landroid/widget/ProgressBar;)Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    .line 514
    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity$6;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    invoke-static {v1}, Lcom/amazon/kcp/library/TransientActivity;->access$900(Lcom/amazon/kcp/library/TransientActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/TransientActivity$6;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/krl/R$string;->download_percentage:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity$6;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity$6;->val$contentDownload:Lcom/amazon/kindle/services/download/IContentDownload;

    invoke-static {v0, v1}, Lcom/amazon/android/util/UIUtils;->generateByteDownloadStatusString(Landroid/content/Context;Lcom/amazon/kindle/services/download/IContentDownload;)Ljava/lang/String;

    move-result-object v0

    .line 518
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 519
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity$6;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/TransientActivity;->access$1000(Lcom/amazon/kcp/library/TransientActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity$6;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    iget-object v2, p0, Lcom/amazon/kcp/library/TransientActivity$6;->val$contentDownload:Lcom/amazon/kindle/services/download/IContentDownload;

    invoke-static {v1, v2}, Lcom/amazon/android/util/UIUtils;->generateByteDownloadStatusString(Landroid/content/Context;Lcom/amazon/kindle/services/download/IContentDownload;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity$6;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/TransientActivity;->access$1100(Lcom/amazon/kcp/library/TransientActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_1
    return-void
.end method
