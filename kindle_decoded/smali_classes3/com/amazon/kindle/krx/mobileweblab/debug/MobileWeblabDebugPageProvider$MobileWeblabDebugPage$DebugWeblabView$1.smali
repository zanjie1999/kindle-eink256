.class Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWeblabView$1;
.super Ljava/lang/Object;
.source "MobileWeblabDebugPageProvider.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 248
    iput-object p1, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWeblabView$1;->this$2:Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWeblabView;

    iput-object p2, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWeblabView$1;->val$this$1:Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 257
    iget-object p2, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWeblabView$1;->this$2:Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWeblabView;

    iget-object p2, p2, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$DebugWeblabView;->applyButton:Landroid/widget/Button;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
