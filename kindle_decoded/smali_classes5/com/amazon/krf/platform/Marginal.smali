.class public final Lcom/amazon/krf/platform/Marginal;
.super Ljava/lang/Object;
.source "Marginal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/krf/platform/Marginal$LayoutPosition;,
        Lcom/amazon/krf/platform/Marginal$MarginalType;
    }
.end annotation


# instance fields
.field private final mNativeHandle:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-wide p1, p0, Lcom/amazon/krf/platform/Marginal;->mNativeHandle:J

    return-void
.end method

.method public constructor <init>(Lcom/amazon/krf/platform/Marginal$MarginalType;Lcom/amazon/krf/platform/Marginal$LayoutPosition;Lcom/amazon/krf/platform/ViewSettings;Ljava/lang/String;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-static {p1, p2, p3, p4}, Lcom/amazon/krf/platform/Marginal;->createNativeHandleDefault(IILcom/amazon/krf/platform/ViewSettings;Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amazon/krf/platform/Marginal;->mNativeHandle:J

    return-void
.end method

.method public constructor <init>(Lcom/amazon/krf/platform/Marginal$MarginalType;Lcom/amazon/krf/platform/Marginal$LayoutPosition;Lcom/amazon/krf/platform/ViewSettings;Ljava/lang/String;D)V
    .locals 6

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Lcom/amazon/krf/platform/Marginal;->createNativeHandle(IILcom/amazon/krf/platform/ViewSettings;Ljava/lang/String;D)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amazon/krf/platform/Marginal;->mNativeHandle:J

    return-void
.end method

.method private static native createNativeHandle(IILcom/amazon/krf/platform/ViewSettings;Ljava/lang/String;D)J
.end method

.method private static native createNativeHandleDefault(IILcom/amazon/krf/platform/ViewSettings;Ljava/lang/String;)J
.end method

.method private native finalizeNative()V
.end method

.method private native nativeEquals(J)Z
.end method


# virtual methods
.method public dispose()V
    .locals 5

    .line 157
    iget-wide v0, p0, Lcom/amazon/krf/platform/Marginal;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/amazon/krf/platform/Marginal;->finalizeNative()V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-ne p1, p0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 117
    :cond_1
    instance-of v1, p1, Lcom/amazon/krf/platform/Marginal;

    if-eqz v1, :cond_2

    .line 119
    check-cast p1, Lcom/amazon/krf/platform/Marginal;

    .line 120
    iget-wide v0, p1, Lcom/amazon/krf/platform/Marginal;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/krf/platform/Marginal;->nativeEquals(J)Z

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 168
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/krf/platform/Marginal;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 173
    throw v0
.end method

.method public native getLayoutPosition()Lcom/amazon/krf/platform/Marginal$LayoutPosition;
.end method

.method public native getMarginalType()Lcom/amazon/krf/platform/Marginal$MarginalType;
.end method

.method public native getSettings()Lcom/amazon/krf/platform/ViewSettings;
.end method

.method public native getText()Ljava/lang/String;
.end method
