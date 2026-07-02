.class Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWeblabView$3;
.super Ljava/lang/Object;
.source "MobileWeblabDebugPageProvider.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWeblabView;-><init>(Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage;Landroid/view/View;Lcom/amazon/kindle/krx/mobileweblab/IWeblab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWeblabView;

.field final synthetic val$this$1:Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWeblabView;Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWeblabView$3;->this$2:Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWeblabView;

    iput-object p2, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWeblabView$3;->val$this$1:Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 275
    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWeblabView$3;->this$2:Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWeblabView;

    iget-object v0, v0, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWeblabView;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "Removing overridden value for %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 276
    iget-object p1, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWeblabView$3;->this$2:Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWeblabView;

    iget-object p1, p1, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWeblabView;->this$1:Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage;

    iget-object p1, p1, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage;->this$0:Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider;

    invoke-static {p1}, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider;->access$400(Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider;)Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWeblabView$3;->this$2:Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWeblabView;

    iget-object v0, v0, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWeblabView;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->removeOverride(Ljava/lang/String;)V

    .line 277
    iget-object p1, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWeblabView$3;->this$2:Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWeblabView;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWeblabView;->updateViewForNoOverride()V

    return-void
.end method
