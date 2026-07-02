.class Lcom/amazon/nwstd/upsell/UpsellFullPageView$1;
.super Ljava/lang/Object;
.source "UpsellFullPageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/nwstd/upsell/UpsellFullPageView;-><init>(Landroid/content/Context;Lcom/amazon/nwstd/upsell/UpsellController;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/nwstd/upsell/UpsellFullPageView;


# direct methods
.method constructor <init>(Lcom/amazon/nwstd/upsell/UpsellFullPageView;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellFullPageView$1;->this$0:Lcom/amazon/nwstd/upsell/UpsellFullPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellFullPageView$1;->this$0:Lcom/amazon/nwstd/upsell/UpsellFullPageView;

    iget-object v1, v0, Lcom/amazon/nwstd/upsell/UpsellFullPageView;->mContext:Landroid/content/Context;

    sget v2, Lcom/amazon/kindle/newsstand/core/R$layout;->upsell_fullpage_view:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/nwstd/upsell/UpsellFullPageView;->mRootView:Landroid/view/View;

    return-void
.end method
