.class public interface abstract Lcom/amazon/kindle/panels/IPanelCustomItem;
.super Ljava/lang/Object;
.source "IPanelCustomItem.java"


# virtual methods
.method public abstract getCallback()Lcom/amazon/kindle/callback/ICallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCustomView()Landroid/view/View;
.end method

.method public abstract getRightIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getSecondaryText()Ljava/lang/String;
.end method

.method public abstract getSelectedView(Landroid/view/View;)Landroid/view/View;
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract getVisibility()Z
.end method

.method public abstract isHighlighted()Z
.end method
