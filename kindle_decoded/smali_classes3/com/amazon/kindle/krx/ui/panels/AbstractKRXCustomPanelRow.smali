.class public abstract Lcom/amazon/kindle/krx/ui/panels/AbstractKRXCustomPanelRow;
.super Ljava/lang/Object;
.source "AbstractKRXCustomPanelRow.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/panels/ICustomPanelRow;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSelectedView(Landroid/view/View;)Landroid/view/View;
    .locals 1

    const-string v0, "parentView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {p0, p1}, Lcom/amazon/kindle/krx/ui/panels/ICustomPanelRow$DefaultImpls;->getSelectedView(Lcom/amazon/kindle/krx/ui/panels/ICustomPanelRow;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onClick()V
    .locals 2

    .line 14
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Expected call of onClick(Context)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract onClick(Landroid/content/Context;)V
.end method
