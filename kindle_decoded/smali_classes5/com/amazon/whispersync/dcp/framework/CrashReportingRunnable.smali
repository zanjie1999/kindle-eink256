.class public abstract Lcom/amazon/whispersync/dcp/framework/CrashReportingRunnable;
.super Ljava/lang/Object;
.source "CrashReportingRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    const-class v0, Lcom/amazon/whispersync/dcp/framework/CrashReportingRunnable;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/CrashReportingRunnable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCrash(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final run()V
    .locals 3

    .line 16
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/CrashReportingRunnable;->runImpl()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 20
    sget-object v1, Lcom/amazon/whispersync/dcp/framework/CrashReportingRunnable;->TAG:Ljava/lang/String;

    const-string v2, "Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/dcp/framework/CrashReportingRunnable;->onCrash(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected abstract runImpl()V
.end method
