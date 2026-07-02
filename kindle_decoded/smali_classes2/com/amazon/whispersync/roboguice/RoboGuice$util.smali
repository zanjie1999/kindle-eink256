.class public Lcom/amazon/whispersync/roboguice/RoboGuice$util;
.super Ljava/lang/Object;
.source "RoboGuice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/roboguice/RoboGuice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "util"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reset()V
    .locals 1

    .line 382
    sget-object v0, Lcom/amazon/whispersync/roboguice/RoboGuice;->injectors:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 383
    sget-object v0, Lcom/amazon/whispersync/roboguice/RoboGuice;->resourceListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 384
    sget-object v0, Lcom/amazon/whispersync/roboguice/RoboGuice;->viewListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
