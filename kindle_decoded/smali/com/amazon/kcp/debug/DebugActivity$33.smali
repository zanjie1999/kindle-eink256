.class Lcom/amazon/kcp/debug/DebugActivity$33;
.super Ljava/lang/Object;
.source "DebugActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugActivity;->updatePricingText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/DebugActivity;

.field final synthetic val$finalPriceString:Ljava/lang/String;

.field final synthetic val$priceUpdateButton:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DebugActivity;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    .line 1575
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$33;->this$0:Lcom/amazon/kcp/debug/DebugActivity;

    iput-object p2, p0, Lcom/amazon/kcp/debug/DebugActivity$33;->val$priceUpdateButton:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/amazon/kcp/debug/DebugActivity$33;->val$finalPriceString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1578
    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugActivity$33;->val$priceUpdateButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/amazon/kcp/debug/DebugActivity$33;->val$finalPriceString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
