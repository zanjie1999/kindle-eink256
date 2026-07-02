.class public Lcom/amazon/sitb/android/plugin/content/SeekerDecoration;
.super Ljava/lang/Object;
.source "SeekerDecoration.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;


# instance fields
.field private seriesSeekBarChangeListener:Lcom/amazon/sitb/android/view/series/SeriesSeekBarChangeListener;


# direct methods
.method public constructor <init>(Lcom/amazon/sitb/android/view/series/SeriesSeekBarChangeListener;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/amazon/sitb/android/plugin/content/SeekerDecoration;->seriesSeekBarChangeListener:Lcom/amazon/sitb/android/view/series/SeriesSeekBarChangeListener;

    return-void
.end method


# virtual methods
.method public getChangeListener()Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/content/SeekerDecoration;->seriesSeekBarChangeListener:Lcom/amazon/sitb/android/view/series/SeriesSeekBarChangeListener;

    return-object v0
.end method

.method public getContentDescription(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;)Ljava/lang/String;
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

    const/4 p1, 0x0

    return-object p1
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
