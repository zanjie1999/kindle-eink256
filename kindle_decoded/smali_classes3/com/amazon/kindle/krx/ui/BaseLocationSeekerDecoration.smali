.class public Lcom/amazon/kindle/krx/ui/BaseLocationSeekerDecoration;
.super Ljava/lang/Object;
.source "BaseLocationSeekerDecoration.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/ILocationSeekerDecorationEx;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChangeListener()Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentDescription(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDecoration(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;Landroid/content/Context;Landroid/view/ViewParent;Lcom/amazon/kindle/krx/ui/ColorMode;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDecoration(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;)Lcom/amazon/kindle/krx/ui/ColorCodedView;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getLocationSeekerWidget(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;)Lcom/amazon/kindle/krx/ui/ILocationSeekerWidget;
    .locals 0

    .line 63
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getMaxProgress()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSecondaryProgress()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSeekBar()Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getText(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public isTrackingTouch()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onStop()V
    .locals 0

    return-void
.end method
