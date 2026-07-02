.class public Lcom/amazon/whispersync/roboguice/inject/AccountManagerProvider;
.super Ljava/lang/Object;
.source "AccountManagerProvider.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/Provider;


# annotations
.annotation runtime Lcom/amazon/whispersync/roboguice/inject/ContextSingleton;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/Provider<",
        "Landroid/accounts/AccountManager;",
        ">;"
    }
.end annotation


# instance fields
.field protected context:Landroid/content/Context;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Landroid/accounts/AccountManager;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/inject/AccountManagerProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/amazon/whispersync/roboguice/inject/AccountManagerProvider;->get()Landroid/accounts/AccountManager;

    move-result-object v0

    return-object v0
.end method
