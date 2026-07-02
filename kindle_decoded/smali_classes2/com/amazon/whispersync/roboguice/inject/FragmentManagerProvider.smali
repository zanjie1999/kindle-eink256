.class public Lcom/amazon/whispersync/roboguice/inject/FragmentManagerProvider;
.super Ljava/lang/Object;
.source "FragmentManagerProvider.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/Provider;


# annotations
.annotation runtime Lcom/amazon/whispersync/roboguice/inject/ContextSingleton;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/Provider<",
        "Lcom/amazon/whispersync/android/support/v4/app/FragmentManager;",
        ">;"
    }
.end annotation


# instance fields
.field protected activity:Landroid/app/Activity;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/amazon/whispersync/android/support/v4/app/FragmentManager;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/inject/FragmentManagerProvider;->activity:Landroid/app/Activity;

    check-cast v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;->getSupportFragmentManager()Lcom/amazon/whispersync/android/support/v4/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/amazon/whispersync/roboguice/inject/FragmentManagerProvider;->get()Lcom/amazon/whispersync/android/support/v4/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method
