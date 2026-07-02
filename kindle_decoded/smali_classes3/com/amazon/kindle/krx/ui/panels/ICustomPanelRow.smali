.class public interface abstract Lcom/amazon/kindle/krx/ui/panels/ICustomPanelRow;
.super Ljava/lang/Object;
.source "ICustomPanelRow.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/panels/IPanelRow;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/ui/panels/ICustomPanelRow$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract getCustomView()Landroid/view/View;
.end method

.method public abstract getSelectedView(Landroid/view/View;)Landroid/view/View;
.end method
