.class public Lcom/amazon/whispersync/roboguice/inject/RoboApplicationProvider;
.super Ljava/lang/Object;
.source "RoboApplicationProvider.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/Provider;


# annotations
.annotation runtime Lcom/amazon/whispersync/com/google/inject/Singleton;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Application;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/Provider<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected application:Landroid/app/Application;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Landroid/app/Application;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/inject/RoboApplicationProvider;->application:Landroid/app/Application;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/amazon/whispersync/roboguice/inject/RoboApplicationProvider;->get()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method
