.class public Lcom/amazon/kcp/reader/ui/ReaderBrightnessSlider;
.super Landroid/widget/LinearLayout;
.source "ReaderBrightnessSlider.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 24
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x103006b

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public syncSelectedOptions()V
    .locals 0

    return-void
.end method
