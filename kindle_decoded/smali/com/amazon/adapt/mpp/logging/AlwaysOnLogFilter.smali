.class Lcom/amazon/adapt/mpp/logging/AlwaysOnLogFilter;
.super Ljava/lang/Object;
.source "AlwaysOnLogFilter.java"

# interfaces
.implements Lcom/amazon/adapt/mpp/logging/LogFilter;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDebugEnabled(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

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

    const/4 p1, 0x1

    return p1
.end method

.method public isWarnEnabled(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
