.class public interface abstract Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;
.super Ljava/lang/Object;
.source "ILocationSeekerDecoration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;,
        Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;
    }
.end annotation


# virtual methods
.method public abstract getChangeListener()Landroid/widget/SeekBar$OnSeekBarChangeListener;
.end method

.method public abstract getContentDescription(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;)Ljava/lang/String;
.end method

.method public abstract getDecoration(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;)Lcom/amazon/kindle/krx/ui/ColorCodedView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getLocationSeekerWidget(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;)Lcom/amazon/kindle/krx/ui/ILocationSeekerWidget;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getMaxProgress()Ljava/lang/Integer;
.end method

.method public abstract getSecondaryProgress()Ljava/lang/Integer;
.end method

.method public abstract getSeekBar()Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;
.end method

.method public abstract getText(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;)Ljava/lang/String;
.end method
