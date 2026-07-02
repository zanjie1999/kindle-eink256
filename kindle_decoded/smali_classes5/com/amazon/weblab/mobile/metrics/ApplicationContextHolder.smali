.class public Lcom/amazon/weblab/mobile/metrics/ApplicationContextHolder;
.super Ljava/lang/Object;
.source "ApplicationContextHolder.java"


# static fields
.field private static sApplicationContext:Landroid/content/Context;


# direct methods
.method public static getApplicationContext()Landroid/content/Context;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 22
    sget-object v0, Lcom/amazon/weblab/mobile/metrics/ApplicationContextHolder;->sApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "application context has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setApplicationContext(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/amazon/weblab/mobile/metrics/ApplicationContextHolder;->sApplicationContext:Landroid/content/Context;

    return-void

    .line 37
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "application context cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
