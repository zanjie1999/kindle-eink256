.class public Lcom/amazon/whispersync/device/crashmanager/CrashDetailsAggregator;
.super Ljava/lang/Object;
.source "CrashDetailsAggregator.java"

# interfaces
.implements Lcom/amazon/whispersync/device/crashmanager/CrashDetailsCollectable;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.whispersync.device.crashmanager.CrashDetailsAggregator"


# instance fields
.field private collectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/device/crashmanager/CrashDetailsCollectable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/CrashDetailsAggregator;->collectors:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public appendCollector(Lcom/amazon/whispersync/device/crashmanager/CrashDetailsCollectable;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/CrashDetailsAggregator;->collectors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public collect(Ljava/lang/Throwable;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 27
    iget-object v1, p0, Lcom/amazon/whispersync/device/crashmanager/CrashDetailsAggregator;->collectors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/device/crashmanager/CrashDetailsCollectable;

    .line 30
    :try_start_0
    invoke-interface {v2, p1}, Lcom/amazon/whispersync/device/crashmanager/CrashDetailsCollectable;->collect(Ljava/lang/Throwable;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 32
    sget-object v4, Lcom/amazon/whispersync/device/crashmanager/CrashDetailsAggregator;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "crash data collector: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' threw exception: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-object v0
.end method
