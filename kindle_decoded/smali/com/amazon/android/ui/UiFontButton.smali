.class public final Lcom/amazon/android/ui/UiFontButton;
.super Landroid/widget/Button;
.source "UiFontButton.kt"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 13
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 14
    invoke-static {v0, p1, p0}, Lcom/amazon/android/ui/UiFontUtils;->setUiFont(Landroid/util/AttributeSet;Landroid/content/Context;Landroid/widget/TextView;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    invoke-static {p2, p1, p0}, Lcom/amazon/android/ui/UiFontUtils;->setUiFont(Landroid/util/AttributeSet;Landroid/content/Context;Landroid/widget/TextView;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    invoke-static {p2, p1, p0}, Lcom/amazon/android/ui/UiFontUtils;->setUiFont(Landroid/util/AttributeSet;Landroid/content/Context;Landroid/widget/TextView;)V

    return-void
.end method
