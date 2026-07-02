.class public Lcom/amazon/android/util/DownloadProgressBarState;
.super Ljava/lang/Object;
.source "DownloadProgressBarState.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private horizontalDownloadingDrawable:Landroid/graphics/drawable/Drawable;

.field private horizontalNoProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private horizontalPausedDrawable:Landroid/graphics/drawable/Drawable;

.field private isDrawableIndeterminate:Z

.field private isOverrideVisible:Z

.field private progress:D

.field private progressDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/amazon/android/util/DownloadProgressBarState;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/util/DownloadProgressBarState;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/amazon/android/util/DownloadProgressBarState;->isOverrideVisible:Z

    .line 39
    iput-boolean v0, p0, Lcom/amazon/android/util/DownloadProgressBarState;->isDrawableIndeterminate:Z

    const-wide/16 v0, 0x0

    .line 40
    iput-wide v0, p0, Lcom/amazon/android/util/DownloadProgressBarState;->progress:D

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 57
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/android/util/DownloadProgressBarState;->horizontalDownloadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 59
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/android/util/DownloadProgressBarState;->horizontalPausedDrawable:Landroid/graphics/drawable/Drawable;

    .line 61
    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/android/util/DownloadProgressBarState;->horizontalNoProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 62
    iget-object p2, p0, Lcom/amazon/android/util/DownloadProgressBarState;->horizontalDownloadingDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/amazon/android/util/DownloadProgressBarState;->progressDrawable:Landroid/graphics/drawable/Drawable;

    .line 64
    invoke-static {p1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDownloadService()Lcom/amazon/kindle/services/download/IDownloadService;

    return-void
.end method


# virtual methods
.method public calculateState(DJLcom/amazon/kindle/model/content/ContentState;)V
    .locals 7

    .line 154
    iput-wide p1, p0, Lcom/amazon/android/util/DownloadProgressBarState;->progress:D

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmpl-double v4, p1, v0

    if-lez v4, :cond_0

    long-to-double v4, p3

    cmpg-double v6, p1, v4

    if-gez v6, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 155
    :goto_0
    iput-boolean p1, p0, Lcom/amazon/android/util/DownloadProgressBarState;->isOverrideVisible:Z

    .line 157
    sget-object p1, Lcom/amazon/android/util/DownloadProgressBarState$1;->$SwitchMap$com$amazon$kindle$model$content$ContentState:[I

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_0

    .line 201
    sget-object p1, Lcom/amazon/android/util/DownloadProgressBarState;->TAG:Ljava/lang/String;

    const-string p2, "Attempting to set the progress bar state on an unknown state!"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 196
    :pswitch_0
    iput-boolean v3, p0, Lcom/amazon/android/util/DownloadProgressBarState;->isOverrideVisible:Z

    .line 197
    iget-object p1, p0, Lcom/amazon/android/util/DownloadProgressBarState;->horizontalNoProgressDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/amazon/android/util/DownloadProgressBarState;->progressDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 187
    :pswitch_1
    iput-boolean v3, p0, Lcom/amazon/android/util/DownloadProgressBarState;->isOverrideVisible:Z

    .line 188
    iget-wide p1, p0, Lcom/amazon/android/util/DownloadProgressBarState;->progress:D

    cmpg-double p5, p1, v0

    if-lez p5, :cond_2

    const-wide/16 p1, 0x0

    cmp-long p5, p3, p1

    if-gtz p5, :cond_1

    goto :goto_1

    .line 191
    :cond_1
    iget-object p1, p0, Lcom/amazon/android/util/DownloadProgressBarState;->horizontalDownloadingDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/amazon/android/util/DownloadProgressBarState;->progressDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 189
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/amazon/android/util/DownloadProgressBarState;->horizontalNoProgressDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/amazon/android/util/DownloadProgressBarState;->progressDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 182
    :pswitch_2
    iput-boolean v2, p0, Lcom/amazon/android/util/DownloadProgressBarState;->isOverrideVisible:Z

    goto :goto_2

    .line 176
    :pswitch_3
    iput-boolean v2, p0, Lcom/amazon/android/util/DownloadProgressBarState;->isOverrideVisible:Z

    .line 177
    iget-object p1, p0, Lcom/amazon/android/util/DownloadProgressBarState;->horizontalDownloadingDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/amazon/android/util/DownloadProgressBarState;->progressDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 169
    :pswitch_4
    iput-boolean v3, p0, Lcom/amazon/android/util/DownloadProgressBarState;->isOverrideVisible:Z

    .line 170
    iget-object p1, p0, Lcom/amazon/android/util/DownloadProgressBarState;->horizontalPausedDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/amazon/android/util/DownloadProgressBarState;->progressDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 163
    :pswitch_5
    iput-boolean v3, p0, Lcom/amazon/android/util/DownloadProgressBarState;->isOverrideVisible:Z

    .line 164
    iget-object p1, p0, Lcom/amazon/android/util/DownloadProgressBarState;->horizontalPausedDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/amazon/android/util/DownloadProgressBarState;->progressDrawable:Landroid/graphics/drawable/Drawable;

    .line 206
    :goto_2
    iget-object p1, p0, Lcom/amazon/android/util/DownloadProgressBarState;->progressDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/amazon/android/util/DownloadProgressBarState;->horizontalNoProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, p2, :cond_3

    const/4 v2, 0x1

    :cond_3
    iput-boolean v2, p0, Lcom/amazon/android/util/DownloadProgressBarState;->isDrawableIndeterminate:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getProgress()I
    .locals 2

    .line 242
    iget-wide v0, p0, Lcom/amazon/android/util/DownloadProgressBarState;->progress:D

    double-to-int v0, v0

    return v0
.end method

.method public getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/amazon/android/util/DownloadProgressBarState;->progressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isDrawableIndeterminate()Z
    .locals 1

    .line 251
    iget-boolean v0, p0, Lcom/amazon/android/util/DownloadProgressBarState;->isDrawableIndeterminate:Z

    return v0
.end method

.method public isOverrideVisibile()Z
    .locals 1

    .line 233
    iget-boolean v0, p0, Lcom/amazon/android/util/DownloadProgressBarState;->isOverrideVisible:Z

    return v0
.end method
