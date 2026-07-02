.class public abstract Lcom/amazon/whispersync/roboguice/util/RoboAsyncTask;
.super Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask;
.source "RoboAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask<",
        "TResultT;>;"
    }
.end annotation


# instance fields
.field protected context:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask;-><init>()V

    .line 14
    iput-object p2, p0, Lcom/amazon/whispersync/roboguice/util/RoboAsyncTask;->context:Landroid/content/Context;

    .line 15
    invoke-static {p1, p2}, Lcom/amazon/whispersync/roboguice/RoboGuice;->getInjector(Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/whispersync/roboguice/inject/RoboInjector;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/whispersync/com/google/inject/Injector;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 19
    invoke-direct {p0, p3}, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask;-><init>(Landroid/os/Handler;)V

    .line 20
    iput-object p2, p0, Lcom/amazon/whispersync/roboguice/util/RoboAsyncTask;->context:Landroid/content/Context;

    .line 21
    invoke-static {p1, p2}, Lcom/amazon/whispersync/roboguice/RoboGuice;->getInjector(Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/whispersync/roboguice/inject/RoboInjector;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/whispersync/com/google/inject/Injector;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 25
    invoke-direct {p0, p3, p4}, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask;-><init>(Landroid/os/Handler;Ljava/util/concurrent/Executor;)V

    .line 26
    iput-object p2, p0, Lcom/amazon/whispersync/roboguice/util/RoboAsyncTask;->context:Landroid/content/Context;

    .line 27
    invoke-static {p1, p2}, Lcom/amazon/whispersync/roboguice/RoboGuice;->getInjector(Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/whispersync/roboguice/inject/RoboInjector;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/whispersync/com/google/inject/Injector;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 31
    invoke-direct {p0, p3}, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask;-><init>(Ljava/util/concurrent/Executor;)V

    .line 32
    iput-object p2, p0, Lcom/amazon/whispersync/roboguice/util/RoboAsyncTask;->context:Landroid/content/Context;

    .line 33
    invoke-static {p1, p2}, Lcom/amazon/whispersync/roboguice/RoboGuice;->getInjector(Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/whispersync/roboguice/inject/RoboInjector;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/whispersync/com/google/inject/Injector;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/util/RoboAsyncTask;->context:Landroid/content/Context;

    return-object v0
.end method
