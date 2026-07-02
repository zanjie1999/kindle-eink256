.class Lcom/amazon/nwstd/upsell/UpsellController$2;
.super Ljava/lang/Object;
.source "UpsellController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/nwstd/upsell/UpsellController;->initializeBanner(Landroid/view/ViewStub;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/nwstd/upsell/UpsellController;


# direct methods
.method constructor <init>(Lcom/amazon/nwstd/upsell/UpsellController;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellController$2;->this$0:Lcom/amazon/nwstd/upsell/UpsellController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 361
    iget-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellController$2;->this$0:Lcom/amazon/nwstd/upsell/UpsellController;

    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/UpsellController;->handleButtonClickFromBanner()V

    return-void
.end method
