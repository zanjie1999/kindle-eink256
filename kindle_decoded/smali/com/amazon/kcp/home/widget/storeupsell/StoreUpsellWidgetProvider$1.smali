.class Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider$1;
.super Ljava/lang/Object;
.source "StoreUpsellWidgetProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;->updateViewVisibility()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;

.field final synthetic val$viewVisibility:I


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;I)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider$1;->this$0:Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;

    iput p2, p0, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider$1;->val$viewVisibility:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider$1;->this$0:Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;->access$100(Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider$1;->this$0:Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;->access$100(Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider$1;->val$viewVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
