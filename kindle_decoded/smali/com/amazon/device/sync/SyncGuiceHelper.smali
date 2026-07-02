.class public final Lcom/amazon/device/sync/SyncGuiceHelper;
.super Ljava/lang/Object;
.source "SyncGuiceHelper.java"


# static fields
.field public static final NAMESPACE:Ljava/lang/String; = "amazon.device.sync"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "amazon.device.sync"

    .line 25
    invoke-static {v0, p0}, Lcom/amazon/whispersync/roboguice/RoboGuice;->getInjector(Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/whispersync/roboguice/inject/RoboInjector;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/amazon/whispersync/com/google/inject/Injector;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static injectMembers(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "TT;)TT;"
        }
    .end annotation

    const-string v0, "amazon.device.sync"

    .line 19
    invoke-static {v0, p0, p1}, Lcom/amazon/whispersync/roboguice/RoboGuice;->injectMembers(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method
