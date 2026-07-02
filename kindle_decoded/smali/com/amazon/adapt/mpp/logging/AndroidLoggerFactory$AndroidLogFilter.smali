.class Lcom/amazon/adapt/mpp/logging/AndroidLoggerFactory$AndroidLogFilter;
.super Ljava/lang/Object;
.source "AndroidLoggerFactory.java"

# interfaces
.implements Lcom/amazon/adapt/mpp/logging/LogFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/adapt/mpp/logging/AndroidLoggerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AndroidLogFilter"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDebugEnabled(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x3

    .line 26
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public isErrorEnabled(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x6

    .line 41
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public isInfoEnabled(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x4

    .line 31
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public isVerboseEnabled(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x2

    .line 21
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public isWarnEnabled(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x5

    .line 36
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method
