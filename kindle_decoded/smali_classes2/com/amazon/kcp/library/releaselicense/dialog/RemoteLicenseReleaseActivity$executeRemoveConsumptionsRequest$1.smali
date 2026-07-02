.class public final Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$executeRemoveConsumptionsRequest$1;
.super Ljava/util/TimerTask;
.source "RemoteLicenseReleaseActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->executeRemoveConsumptionsRequest$LibraryModule_release(Ljava/lang/String;ZLcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;Lcom/amazon/kcp/library/ILibraryController;Lcom/amazon/foundation/internal/IThreadPoolManager;Lcom/amazon/kindle/krx/content/bookopen/BookOpenManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $counter:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $removeProgress:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Landroid/widget/ProgressBar;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    .line 527
    iput-object p1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$executeRemoveConsumptionsRequest$1;->$removeProgress:Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$executeRemoveConsumptionsRequest$1;->$counter:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 529
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$executeRemoveConsumptionsRequest$1;->$removeProgress:Landroid/widget/ProgressBar;

    const-string v1, "removeProgress"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_0

    .line 530
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$executeRemoveConsumptionsRequest$1;->$counter:Lkotlin/jvm/internal/Ref$IntRef;

    iget v2, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v2, v2, 0xa

    iput v2, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 531
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$executeRemoveConsumptionsRequest$1;->$removeProgress:Landroid/widget/ProgressBar;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$executeRemoveConsumptionsRequest$1;->$counter:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method
