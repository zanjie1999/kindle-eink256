.class public Lcom/amazon/whispersync/dcp/framework/DCPLog;
.super Ljava/lang/Object;
.source "DCPLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/DCPLog$Printer;,
        Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;,
        Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;
    }
.end annotation


# static fields
.field private static final DEFAULT_TAG:Ljava/lang/String; = "DCP"

.field public static final DISABLE_TRUNCATION:I = 0x4

.field public static final PII:I = 0x2

.field public static final PRINT_STACK_TRACE:I = 0x1


# instance fields
.field private mConfig:Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private mDeviceInfo:Lcom/amazon/whispersync/dcp/framework/DeviceInfo;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private mPrinter:Lcom/amazon/whispersync/dcp/framework/DCPLog$Printer;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs d(ILjava/lang/String;[Ljava/lang/Object;)I
    .locals 6

    const/4 v1, 0x3

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    .line 57
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->log(IILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public varargs d(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 6

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    .line 47
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->log(IILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public varargs d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 6

    const/4 v1, 0x3

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 52
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->log(IILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public varargs e(ILjava/lang/String;[Ljava/lang/Object;)I
    .locals 6

    const/4 v1, 0x6

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    .line 102
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->log(IILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public varargs e(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 6

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    .line 92
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->log(IILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 6

    const/4 v1, 0x6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 97
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->log(IILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public varargs i(ILjava/lang/String;[Ljava/lang/Object;)I
    .locals 6

    const/4 v1, 0x4

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    .line 72
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->log(IILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public varargs i(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 6

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    .line 62
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->log(IILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public varargs i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 6

    const/4 v1, 0x4

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 67
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->log(IILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected varargs log(IILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 8

    .line 122
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/DCPLog;->mConfig:Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;->shouldLog(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    and-int/lit8 v0, p2, 0x2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 127
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/DCPLog;->mDeviceInfo:Lcom/amazon/whispersync/dcp/framework/DeviceInfo;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/DeviceInfo;->getBuildType()Lcom/amazon/whispersync/dcp/framework/DeviceInfo$BuildType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/DeviceInfo$BuildType;->isReleaseBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 132
    :cond_1
    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/DCPLog;->mPrinter:Lcom/amazon/whispersync/dcp/framework/DCPLog$Printer;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/amazon/whispersync/dcp/framework/DCPLog$Printer;->print(IILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public popTag(Ljava/lang/String;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/DCPLog;->mConfig:Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;->popTag(Ljava/lang/String;)V

    return-void
.end method

.method public popThreadLocalTag(Ljava/lang/String;)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/DCPLog;->mConfig:Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;->popThreadLocalTag(Ljava/lang/String;)V

    return-void
.end method

.method public pushTag(Ljava/lang/String;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/DCPLog;->mConfig:Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;->pushTag(Ljava/lang/String;)V

    return-void
.end method

.method public pushThreadLocalTag(Ljava/lang/String;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/DCPLog;->mConfig:Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;->pushThreadLocalTag(Ljava/lang/String;)V

    return-void
.end method

.method public runWithTag(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/DCPLog;->mConfig:Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;->runWithTag(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public runWithThreadLocalTag(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/DCPLog;->mConfig:Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;->runWithThreadLocalTag(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public varargs v(ILjava/lang/String;[Ljava/lang/Object;)I
    .locals 6

    const/4 v1, 0x2

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    .line 42
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->log(IILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public varargs v(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 6

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    .line 32
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->log(IILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public varargs v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 6

    const/4 v1, 0x2

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 37
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->log(IILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public varargs w(ILjava/lang/String;[Ljava/lang/Object;)I
    .locals 6

    const/4 v1, 0x5

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    .line 87
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->log(IILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public varargs w(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 6

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    .line 77
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->log(IILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public varargs w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 6

    const/4 v1, 0x5

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 82
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->log(IILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public varargs wtf(ILjava/lang/String;[Ljava/lang/Object;)I
    .locals 6

    const/4 v1, 0x7

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    .line 117
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->log(IILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public varargs wtf(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 6

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    .line 107
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->log(IILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public varargs wtf(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 6

    const/4 v1, 0x7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 112
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->log(IILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
