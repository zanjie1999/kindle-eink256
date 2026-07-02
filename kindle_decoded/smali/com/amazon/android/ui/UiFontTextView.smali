.class public Lcom/amazon/android/ui/UiFontTextView;
.super Landroid/widget/TextView;
.source "UiFontTextView.kt"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 18
    invoke-static {v0, p1, p0}, Lcom/amazon/android/ui/UiFontUtils;->setUiFont(Landroid/util/AttributeSet;Landroid/content/Context;Landroid/widget/TextView;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-static {p2, p1, p0}, Lcom/amazon/android/ui/UiFontUtils;->setUiFont(Landroid/util/AttributeSet;Landroid/content/Context;Landroid/widget/TextView;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-static {p2, p1, p0}, Lcom/amazon/android/ui/UiFontUtils;->setUiFont(Landroid/util/AttributeSet;Landroid/content/Context;Landroid/widget/TextView;)V

    return-void
.end method
