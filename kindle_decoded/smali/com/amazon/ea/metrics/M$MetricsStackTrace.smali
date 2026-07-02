.class Lcom/amazon/ea/metrics/M$MetricsStackTrace;
.super Ljava/lang/RuntimeException;
.source "M.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/metrics/M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MetricsStackTrace"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/ea/metrics/M$1;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/amazon/ea/metrics/M$MetricsStackTrace;-><init>()V

    return-void
.end method
