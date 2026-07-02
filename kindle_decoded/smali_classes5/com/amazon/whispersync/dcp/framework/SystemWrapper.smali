.class public Lcom/amazon/whispersync/dcp/framework/SystemWrapper;
.super Ljava/lang/Object;
.source "SystemWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    invoke-static {p1}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public currentTimeMillis()J
    .locals 2

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public elapsedRealtime()J
    .locals 2

    .line 81
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public exit(I)V
    .locals 0

    .line 31
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public gc()V
    .locals 0

    .line 36
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 41
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 46
    invoke-static {p1, p2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getenv(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-static {p1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getenv()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 56
    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public nanoTime()J
    .locals 2

    .line 61
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public newDate()Ljava/util/Date;
    .locals 1

    .line 76
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0
.end method

.method public setProperties(Ljava/util/Properties;)V
    .locals 0

    .line 66
    invoke-static {p1}, Ljava/lang/System;->setProperties(Ljava/util/Properties;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 71
    invoke-static {p1, p2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
