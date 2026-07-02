.class final Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$readNowButtonListener$1;
.super Ljava/lang/Object;
.source "RemoteLicenseReleaseActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->readNowButtonListener(Ljava/lang/String;ZLcom/amazon/kindle/network/INetworkService;Lcom/amazon/kcp/application/IAndroidApplicationController;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $applicationController:Lcom/amazon/kcp/application/IAndroidApplicationController;

.field final synthetic $bookId:Ljava/lang/String;

.field final synthetic $isOneTapEnabled:Z

.field final synthetic $networkService:Lcom/amazon/kindle/network/INetworkService;

.field final synthetic this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;Lcom/amazon/kindle/network/INetworkService;Lcom/amazon/kcp/application/IAndroidApplicationController;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$readNowButtonListener$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    iput-object p2, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$readNowButtonListener$1;->$networkService:Lcom/amazon/kindle/network/INetworkService;

    iput-object p3, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$readNowButtonListener$1;->$applicationController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    iput-object p4, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$readNowButtonListener$1;->$bookId:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$readNowButtonListener$1;->$isOneTapEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    .line 486
    iget-object p1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$readNowButtonListener$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->rlr_remove_and_read_now_button:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 487
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$readNowButtonListener$1;->$networkService:Lcom/amazon/kindle/network/INetworkService;

    invoke-interface {v0}, Lcom/amazon/kindle/network/INetworkService;->hasNetworkConnectivity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    iget-object p1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$readNowButtonListener$1;->$applicationController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    const/4 v0, 0x0

    const-string v1, "ConnectionError"

    invoke-interface {p1, v1, v0}, Lcom/amazon/kcp/application/IUIMessaging;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "readNowButton"

    .line 491
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 492
    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->rlr_removing_button:I

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 493
    iget-object v1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$readNowButtonListener$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->setReadNowButtonColorAndBackground$LibraryModule_release(Landroid/widget/Button;)V

    .line 494
    iget-object p1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$readNowButtonListener$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->rlr_body_layout:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    const-string v1, "rlrBodyLayout"

    .line 495
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p1, v1}, Landroid/widget/ScrollView;->setAlpha(F)V

    .line 496
    iget-object p1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$readNowButtonListener$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->getList$LibraryModule_release()Lcom/amazon/kcp/library/releaselicense/NonScrollListView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 497
    iget-object p1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$readNowButtonListener$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-static {p1}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->access$getTAG$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Read Now button pressed with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$readNowButtonListener$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->getSelectedDeviceList$LibraryModule_release()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for book "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$readNowButtonListener$1;->$bookId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with One-Tap Enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$readNowButtonListener$1;->$isOneTapEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iget-object v4, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$readNowButtonListener$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    iget-object v2, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$readNowButtonListener$1;->$bookId:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$readNowButtonListener$1;->$isOneTapEnabled:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x38

    const/4 v9, 0x0

    move-object v1, v4

    invoke-static/range {v1 .. v9}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->executeRemoveConsumptionsRequest$LibraryModule_release$default(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;Ljava/lang/String;ZLcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;Lcom/amazon/kcp/library/ILibraryController;Lcom/amazon/foundation/internal/IThreadPoolManager;Lcom/amazon/kindle/krx/content/bookopen/BookOpenManager;ILjava/lang/Object;)V

    return-void
.end method
