.class final Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$retryWebRequestListener$1;
.super Ljava/lang/Object;
.source "RemoteLicenseReleaseActivity.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->retryWebRequestListener(Ljava/lang/String;ZZ)Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $bookId:Ljava/lang/String;

.field final synthetic $isOneTapEnabled:Z

.field final synthetic $retryGetConsumptions:Z

.field final synthetic this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;ZLjava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$retryWebRequestListener$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    iput-boolean p2, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$retryWebRequestListener$1;->$retryGetConsumptions:Z

    iput-object p3, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$retryWebRequestListener$1;->$bookId:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$retryWebRequestListener$1;->$isOneTapEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    const-string p2, "dialogInterface"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 697
    iget-boolean p1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$retryWebRequestListener$1;->$retryGetConsumptions:Z

    const-string p2, " with One-Tap Enabled: "

    if-eqz p1, :cond_0

    .line 698
    iget-object p1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$retryWebRequestListener$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-static {p1}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->access$getTAG$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "List Devices request retried for book "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$retryWebRequestListener$1;->$bookId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$retryWebRequestListener$1;->$isOneTapEnabled:Z

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$retryWebRequestListener$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    iget-object v1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$retryWebRequestListener$1;->$bookId:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->executeGetAsinDetailsRequest$LibraryModule_release$default(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;Ljava/lang/String;Lcom/amazon/kindle/network/INetworkService;Lcom/amazon/kcp/application/IAndroidApplicationController;ILjava/lang/Object;)V

    goto :goto_0

    .line 701
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$retryWebRequestListener$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-static {p1}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->access$getTAG$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoveAndReadNow request retried for book "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$retryWebRequestListener$1;->$bookId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$retryWebRequestListener$1;->$isOneTapEnabled:Z

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    iget-object v3, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$retryWebRequestListener$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    iget-object v1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$retryWebRequestListener$1;->$bookId:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$retryWebRequestListener$1;->$isOneTapEnabled:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x38

    const/4 v8, 0x0

    move-object v0, v3

    invoke-static/range {v0 .. v8}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->executeRemoveConsumptionsRequest$LibraryModule_release$default(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;Ljava/lang/String;ZLcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;Lcom/amazon/kcp/library/ILibraryController;Lcom/amazon/foundation/internal/IThreadPoolManager;Lcom/amazon/kindle/krx/content/bookopen/BookOpenManager;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method
