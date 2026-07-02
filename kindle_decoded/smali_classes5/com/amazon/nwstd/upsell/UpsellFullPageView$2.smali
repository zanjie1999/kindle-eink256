.class Lcom/amazon/nwstd/upsell/UpsellFullPageView$2;
.super Ljava/lang/Object;
.source "UpsellFullPageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$upsellController:Lcom/amazon/nwstd/upsell/UpsellController;


# direct methods
.method constructor <init>(Lcom/amazon/nwstd/upsell/UpsellFullPageView;Lcom/amazon/nwstd/upsell/UpsellController;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellFullPageView$2;->this$0:Lcom/amazon/nwstd/upsell/UpsellFullPageView;

    iput-object p2, p0, Lcom/amazon/nwstd/upsell/UpsellFullPageView$2;->val$upsellController:Lcom/amazon/nwstd/upsell/UpsellController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 93
    iget-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellFullPageView$2;->val$upsellController:Lcom/amazon/nwstd/upsell/UpsellController;

    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/UpsellController;->handleButtonClickFromFullPage()V

    return-void
.end method
