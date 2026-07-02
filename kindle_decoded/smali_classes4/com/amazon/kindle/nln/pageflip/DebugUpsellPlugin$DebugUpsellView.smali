.class public Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$DebugUpsellView;
.super Lcom/amazon/kindle/krx/ui/ColorCodedView;
.source "DebugUpsellPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DebugUpsellView"
.end annotation


# instance fields
.field m_plugin:Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/krx/ui/ColorCodedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .line 124
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 125
    iget-object v0, p0, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$DebugUpsellView;->m_plugin:Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;

    invoke-static {v0}, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;->access$200(Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    if-eq p2, p1, :cond_0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_1

    .line 130
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$DebugUpsellView;->m_plugin:Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;->access$202(Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;Z)Z

    .line 131
    iget-object p1, p0, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$DebugUpsellView;->m_plugin:Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;

    invoke-static {p1}, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;->access$300(Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->refreshActionBarDecoration()V

    :cond_1
    return-void
.end method

.method public setPlugin(Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$DebugUpsellView;->m_plugin:Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;

    return-void
.end method
