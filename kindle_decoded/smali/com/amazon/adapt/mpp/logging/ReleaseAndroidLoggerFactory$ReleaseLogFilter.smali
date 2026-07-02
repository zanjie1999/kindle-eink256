.class Lcom/amazon/adapt/mpp/logging/ReleaseAndroidLoggerFactory$ReleaseLogFilter;
.super Ljava/lang/Object;
.source "ReleaseAndroidLoggerFactory.java"

# interfaces
.implements Lcom/amazon/adapt/mpp/logging/LogFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/adapt/mpp/logging/ReleaseAndroidLoggerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReleaseLogFilter"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDebugEnabled(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isErrorEnabled(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isInfoEnabled(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isVerboseEnabled(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isWarnEnabled(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
