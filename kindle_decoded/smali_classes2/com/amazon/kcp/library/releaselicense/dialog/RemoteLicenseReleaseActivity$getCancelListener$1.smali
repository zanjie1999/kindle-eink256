.class final Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getCancelListener$1;
.super Ljava/lang/Object;
.source "RemoteLicenseReleaseActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->getCancelListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $bookId:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getCancelListener$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    iput-object p2, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getCancelListener$1;->$bookId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 672
    iget-object p1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getCancelListener$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getCancelListener$1;->$bookId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->access$onFinishByUser(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;Ljava/lang/String;)V

    .line 673
    iget-object p1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getCancelListener$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-static {p1}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->access$getTAG$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cancel button pressed"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
