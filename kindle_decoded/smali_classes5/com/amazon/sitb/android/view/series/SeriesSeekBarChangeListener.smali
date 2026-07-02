.class public Lcom/amazon/sitb/android/view/series/SeriesSeekBarChangeListener;
.super Ljava/lang/Object;
.source "SeriesSeekBarChangeListener.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final log:Lcom/amazon/sitb/android/ISamplingLogger;


# instance fields
.field private final model:Lcom/amazon/sitb/android/model/UpsellModel;

.field private final readerActions:Lcom/amazon/sitb/android/ReaderActions;

.field private shouldShowOnStart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/view/series/SeriesSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/view/series/SeriesSeekBarChangeListener;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/sitb/android/ReaderActions;Lcom/amazon/sitb/android/model/UpsellModel;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/amazon/sitb/android/view/series/SeriesSeekBarChangeListener;->shouldShowOnStart:Z

    .line 27
    iput-object p1, p0, Lcom/amazon/sitb/android/view/series/SeriesSeekBarChangeListener;->readerActions:Lcom/amazon/sitb/android/ReaderActions;

    .line 28
    iput-object p2, p0, Lcom/amazon/sitb/android/view/series/SeriesSeekBarChangeListener;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 7

    .line 39
    iget-object v0, p0, Lcom/amazon/sitb/android/view/series/SeriesSeekBarChangeListener;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/model/UpsellModel;->hasUpsellBook()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/sitb/android/view/series/SeriesSeekBarChangeListener;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/model/UpsellModel;->getShowAtPercentRead()I

    move-result v0

    if-lez v0, :cond_0

    .line 40
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    int-to-double v1, v0

    .line 41
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    int-to-double v3, p1

    iget-object p1, p0, Lcom/amazon/sitb/android/view/series/SeriesSeekBarChangeListener;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    .line 42
    invoke-virtual {p1}, Lcom/amazon/sitb/android/model/UpsellModel;->getShowAtPercentRead()I

    move-result p1

    int-to-double v5, p1

    .line 40
    invoke-static/range {v1 .. v6}, Lcom/amazon/sitb/android/utils/SeriesRangeUtils;->isInShowSeriesUpsellRange(DDD)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/amazon/sitb/android/view/series/SeriesSeekBarChangeListener;->shouldShowOnStart:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 9

    .line 48
    iget-object v0, p0, Lcom/amazon/sitb/android/view/series/SeriesSeekBarChangeListener;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/model/UpsellModel;->hasUpsellBook()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/sitb/android/view/series/SeriesSeekBarChangeListener;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/model/UpsellModel;->getShowAtPercentRead()I

    move-result v0

    if-lez v0, :cond_0

    .line 49
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    int-to-double v3, v0

    .line 50
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    int-to-double v5, p1

    iget-object p1, p0, Lcom/amazon/sitb/android/view/series/SeriesSeekBarChangeListener;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    .line 51
    invoke-virtual {p1}, Lcom/amazon/sitb/android/model/UpsellModel;->getShowAtPercentRead()I

    move-result p1

    int-to-double v7, p1

    .line 49
    invoke-static/range {v3 .. v8}, Lcom/amazon/sitb/android/utils/SeriesRangeUtils;->isInShowSeriesUpsellRange(DDD)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 52
    :goto_0
    iget-boolean v0, p0, Lcom/amazon/sitb/android/view/series/SeriesSeekBarChangeListener;->shouldShowOnStart:Z

    if-eq v0, p1, :cond_2

    .line 54
    sget-object v0, Lcom/amazon/sitb/android/view/series/SeriesSeekBarChangeListener;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-array v1, v1, [Ljava/lang/Object;

    if-eqz p1, :cond_1

    const-string/jumbo p1, "show"

    goto :goto_1

    :cond_1
    const-string p1, "hide"

    :goto_1
    aput-object p1, v1, v2

    const-string/jumbo p1, "onStopTrackingTouch(): Refreshing view to %s series bar"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lcom/amazon/sitb/android/view/series/SeriesSeekBarChangeListener;->readerActions:Lcom/amazon/sitb/android/ReaderActions;

    invoke-virtual {p1}, Lcom/amazon/sitb/android/ReaderActions;->refreshActionBar()V

    :cond_2
    return-void
.end method
