.class Lcom/amazon/kcp/library/download/error/DownloadErrorActivity$5;
.super Ljava/lang/Object;
.source "DownloadErrorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->getEnableMobileDataDownloadListener()Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity$5;->this$0:Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 302
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/application/UserSettingsController;->setDownloadBookNetworkMode(I)V

    .line 305
    iget-object p1, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity$5;->this$0:Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;

    invoke-static {p1}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->access$000(Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 306
    iget-object p1, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity$5;->this$0:Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->restartDownload()V

    .line 309
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity$5;->this$0:Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;

    const/16 p2, 0x3ec

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 310
    iget-object p1, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity$5;->this$0:Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
