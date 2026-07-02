.class public Lcom/amazon/appexpan/client/AppExpanLog;
.super Ljava/lang/Object;
.source "AppExpanLog.java"


# static fields
.field private static logLevel:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 32
    sget p0, Lcom/amazon/appexpan/client/AppExpanLog;->logLevel:I

    const/4 p1, 0x3

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 50
    sget v0, Lcom/amazon/appexpan/client/AppExpanLog;->logLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 51
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 56
    sget v0, Lcom/amazon/appexpan/client/AppExpanLog;->logLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 57
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 38
    sget v0, Lcom/amazon/appexpan/client/AppExpanLog;->logLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 39
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 0

    .line 21
    sput p0, Lcom/amazon/appexpan/client/AppExpanLog;->logLevel:I

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 26
    sget p0, Lcom/amazon/appexpan/client/AppExpanLog;->logLevel:I

    const/4 p1, 0x2

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 44
    sget v0, Lcom/amazon/appexpan/client/AppExpanLog;->logLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 45
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
