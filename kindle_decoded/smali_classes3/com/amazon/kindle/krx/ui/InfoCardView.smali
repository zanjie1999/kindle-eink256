.class public abstract Lcom/amazon/kindle/krx/ui/InfoCardView;
.super Landroid/widget/FrameLayout;
.source "InfoCardView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getNameForMetrics()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract setColorMode(Lcom/amazon/kindle/krx/ui/ColorMode;)V
.end method
