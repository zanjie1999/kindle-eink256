.class public final Lcom/amazon/whispersync/communication/TCommUncaughtExceptionHandler;
.super Ljava/lang/Object;
.source "TCommUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "TComm.TCommUncaughtExceptionHandler"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/communication/TCommUncaughtExceptionHandler;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private dieIfFatalError(Ljava/lang/Throwable;)V
    .locals 0

    .line 41
    instance-of p1, p1, Ljava/lang/OutOfMemoryError;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 42
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6

    .line 30
    :try_start_0
    sget-object v0, Lcom/amazon/whispersync/communication/TCommUncaughtExceptionHandler;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string/jumbo v1, "uncaughtException"

    const-string v2, "encountered an uncaught exception"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "thread.getName"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    const/4 p1, 0x2

    aput-object p2, v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :catchall_0
    invoke-direct {p0, p2}, Lcom/amazon/whispersync/communication/TCommUncaughtExceptionHandler;->dieIfFatalError(Ljava/lang/Throwable;)V

    return-void
.end method
