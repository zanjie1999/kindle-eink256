.class public Lcom/amazon/krf/platform/ContentDecorationStyleNative;
.super Lcom/amazon/krf/platform/ContentDecorationStyle;
.source "ContentDecorationStyleNative.java"


# instance fields
.field private mNativePtr:J


# direct methods
.method public constructor <init>(J)V
    .locals 9

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v1, p1

    .line 15
    invoke-direct/range {v0 .. v8}, Lcom/amazon/krf/platform/ContentDecorationStyleNative;-><init>(JIIIIFF)V

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 9

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    .line 20
    invoke-direct/range {v0 .. v8}, Lcom/amazon/krf/platform/ContentDecorationStyleNative;-><init>(JIIIIFF)V

    return-void
.end method

.method public constructor <init>(JIIIIFF)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/amazon/krf/platform/ContentDecorationStyle;-><init>()V

    .line 25
    iput-wide p1, p0, Lcom/amazon/krf/platform/ContentDecorationStyleNative;->mNativePtr:J

    .line 26
    iput p3, p0, Lcom/amazon/krf/platform/ContentDecorationStyle;->mContentDecorationStyleID:I

    .line 27
    iput p4, p0, Lcom/amazon/krf/platform/ContentDecorationStyle;->mForegroundColor:I

    .line 28
    iput p5, p0, Lcom/amazon/krf/platform/ContentDecorationStyle;->mBackgroundColor:I

    .line 29
    iput p6, p0, Lcom/amazon/krf/platform/ContentDecorationStyle;->mBorderColor:I

    .line 30
    iput p7, p0, Lcom/amazon/krf/platform/ContentDecorationStyle;->mBorderWeight:F

    .line 31
    iput p8, p0, Lcom/amazon/krf/platform/ContentDecorationStyle;->mBorderRadius:F

    return-void
.end method

.method private native finalizeNative()V
.end method


# virtual methods
.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 38
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/krf/platform/ContentDecorationStyleNative;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 39
    invoke-direct {p0}, Lcom/amazon/krf/platform/ContentDecorationStyleNative;->finalizeNative()V

    .line 40
    iput-wide v2, p0, Lcom/amazon/krf/platform/ContentDecorationStyleNative;->mNativePtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 44
    throw v0
.end method
