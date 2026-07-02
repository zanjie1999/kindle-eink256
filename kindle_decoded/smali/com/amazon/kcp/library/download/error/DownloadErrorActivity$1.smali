.class Lcom/amazon/kcp/library/download/error/DownloadErrorActivity$1;
.super Ljava/lang/Object;
.source "DownloadErrorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;->getSettingsListener()Landroid/content/DialogInterface$OnClickListener;
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

    .line 196
    iput-object p1, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity$1;->this$0:Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 199
    iget-object p1, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity$1;->this$0:Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;

    const/16 p2, 0x3eb

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 200
    iget-object p1, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity$1;->this$0:Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 201
    iget-object p1, p0, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity$1;->this$0:Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    const-string p2, "android.settings.WIRELESS_SETTINGS"

    invoke-interface {p1, p2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->startSettingsActivity(Ljava/lang/String;)V

    return-void
.end method
