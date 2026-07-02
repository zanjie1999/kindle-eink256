.class Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity$1;
.super Ljava/lang/Object;
.source "AbstractAudibleStoreActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->showSpinner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;


# direct methods
.method constructor <init>(Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity$1;->this$0:Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 284
    iget-object v0, p0, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity$1;->this$0:Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;

    invoke-static {v0}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->access$000(Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v1, p0, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity$1;->this$0:Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;

    invoke-static {v1, v0}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->access$100(Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 286
    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->webview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 287
    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->webview_progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
