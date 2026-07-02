.class final Lcom/amazon/device/ads/AdLayout$OnLayoutChangeListenerUtil$1;
.super Ljava/lang/Object;
.source "AdLayout.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/AdLayout$OnLayoutChangeListenerUtil;->setOnLayoutChangeListenerForRoot(Lcom/amazon/device/ads/AdLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adLayout:Lcom/amazon/device/ads/AdLayout;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdLayout;)V
    .locals 0

    .line 953
    iput-object p1, p0, Lcom/amazon/device/ads/AdLayout$OnLayoutChangeListenerUtil$1;->val$adLayout:Lcom/amazon/device/ads/AdLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 956
    iget-object p1, p0, Lcom/amazon/device/ads/AdLayout$OnLayoutChangeListenerUtil$1;->val$adLayout:Lcom/amazon/device/ads/AdLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/amazon/device/ads/AdLayout;->getAndSetNeedsToLoadAdOnLayout(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 960
    iget-object p1, p0, Lcom/amazon/device/ads/AdLayout$OnLayoutChangeListenerUtil$1;->val$adLayout:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {p1}, Lcom/amazon/device/ads/AdLayout;->setFloatingWindowDimensions()V

    .line 961
    iget-object p1, p0, Lcom/amazon/device/ads/AdLayout$OnLayoutChangeListenerUtil$1;->val$adLayout:Lcom/amazon/device/ads/AdLayout;

    invoke-static {p1}, Lcom/amazon/device/ads/AdLayout;->access$200(Lcom/amazon/device/ads/AdLayout;)V

    .line 962
    iget-object p1, p0, Lcom/amazon/device/ads/AdLayout$OnLayoutChangeListenerUtil$1;->val$adLayout:Lcom/amazon/device/ads/AdLayout;

    invoke-static {p1}, Lcom/amazon/device/ads/AdLayout;->access$300(Lcom/amazon/device/ads/AdLayout;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method
