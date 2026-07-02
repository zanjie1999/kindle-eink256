.class public Lcom/amazon/kindle/anr/ANRStackTrace;
.super Ljava/lang/Object;
.source "ANRStackTrace.java"


# static fields
.field private static TAG:Ljava/lang/String; = "com.amazon.kindle.anr.ANRStackTrace"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com.amazon.kindle.anr.ANRStackTrace"

    const-string v1, "load ANRStackTrace so : anrStackTrace-lib"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "anrStackTrace-lib"

    .line 11
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0, p0, p1}, Lcom/amazon/kindle/anr/ANRStackTrace;->traceInit(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static native traceInit(ILjava/lang/String;Ljava/lang/String;)I
.end method
