.class public final Lcom/amazon/android/system/DismissSingleInvokeUtils;
.super Ljava/lang/Object;
.source "DismissSingleInvokeUtils.java"


# static fields
.field private static final INSTANCE:Lcom/amazon/android/system/DismissSingleInvokeUtils;

.field private static final NO_PREVIOUS_INVOKE:J = -0x1L


# instance fields
.field private lastInvokeTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/amazon/android/system/DismissSingleInvokeUtils;

    invoke-direct {v0}, Lcom/amazon/android/system/DismissSingleInvokeUtils;-><init>()V

    sput-object v0, Lcom/amazon/android/system/DismissSingleInvokeUtils;->INSTANCE:Lcom/amazon/android/system/DismissSingleInvokeUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 13
    iput-wide v0, p0, Lcom/amazon/android/system/DismissSingleInvokeUtils;->lastInvokeTime:J

    return-void
.end method

.method public static getInstance()Lcom/amazon/android/system/DismissSingleInvokeUtils;
    .locals 1

    .line 19
    sget-object v0, Lcom/amazon/android/system/DismissSingleInvokeUtils;->INSTANCE:Lcom/amazon/android/system/DismissSingleInvokeUtils;

    return-object v0
.end method


# virtual methods
.method public dismissSingleInvoke(J)Z
    .locals 4

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/android/system/DismissSingleInvokeUtils;->lastInvokeTime:J

    sub-long/2addr v0, v2

    cmp-long v2, v0, p1

    if-gtz v2, :cond_0

    const-wide/16 p1, -0x1

    .line 30
    iput-wide p1, p0, Lcom/amazon/android/system/DismissSingleInvokeUtils;->lastInvokeTime:J

    const/4 p1, 0x0

    return p1

    .line 33
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amazon/android/system/DismissSingleInvokeUtils;->lastInvokeTime:J

    const/4 p1, 0x1

    return p1
.end method
