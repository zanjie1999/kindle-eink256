.class public Lcom/amazon/whispersync/roboguice/inject/SystemServiceProvider;
.super Ljava/lang/Object;
.source "SystemServiceProvider.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
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

.field protected serviceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/amazon/whispersync/roboguice/inject/SystemServiceProvider;->serviceName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/inject/SystemServiceProvider;->application:Landroid/app/Application;

    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/SystemServiceProvider;->serviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
