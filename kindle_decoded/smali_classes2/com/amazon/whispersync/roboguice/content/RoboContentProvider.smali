.class public abstract Lcom/amazon/whispersync/roboguice/content/RoboContentProvider;
.super Landroid/content/ContentProvider;
.source "RoboContentProvider.java"


# instance fields
.field protected final namespace:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/amazon/whispersync/roboguice/content/RoboContentProvider;->namespace:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate()Z
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/content/RoboContentProvider;->namespace:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whispersync/roboguice/RoboGuice;->getInjector(Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/whispersync/roboguice/inject/RoboInjector;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/whispersync/com/google/inject/Injector;->injectMembers(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method
