.class public interface abstract Lcom/amazon/kcp/reader/accessibility/IVirtualViewProvider;
.super Ljava/lang/Object;
.source "IVirtualViewProvider.java"


# virtual methods
.method public abstract getVirtualViews(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/accessibility/IVirtualView;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onAccessibilityDisabled()V
.end method

.method public abstract onAccessibilityEnabled()V
.end method
