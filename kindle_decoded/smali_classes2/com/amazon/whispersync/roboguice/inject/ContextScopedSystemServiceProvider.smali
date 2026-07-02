.class public Lcom/amazon/whispersync/roboguice/inject/ContextScopedSystemServiceProvider;
.super Ljava/lang/Object;
.source "ContextScopedSystemServiceProvider.java"

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
.field protected contextProvider:Lcom/amazon/whispersync/com/google/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field protected serviceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/com/google/inject/Provider;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedSystemServiceProvider;->contextProvider:Lcom/amazon/whispersync/com/google/inject/Provider;

    .line 29
    iput-object p2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedSystemServiceProvider;->serviceName:Ljava/lang/String;

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

    .line 34
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedSystemServiceProvider;->contextProvider:Lcom/amazon/whispersync/com/google/inject/Provider;

    invoke-interface {v0}, Lcom/amazon/whispersync/com/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedSystemServiceProvider;->serviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
