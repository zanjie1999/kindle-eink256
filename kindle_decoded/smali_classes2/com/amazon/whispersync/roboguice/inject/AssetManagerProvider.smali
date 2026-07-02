.class public Lcom/amazon/whispersync/roboguice/inject/AssetManagerProvider;
.super Ljava/lang/Object;
.source "AssetManagerProvider.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/Provider<",
        "Landroid/content/res/AssetManager;",
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
.method public get()Landroid/content/res/AssetManager;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/inject/AssetManagerProvider;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/amazon/whispersync/roboguice/inject/AssetManagerProvider;->get()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method
