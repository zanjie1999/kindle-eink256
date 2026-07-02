.class public Lcom/amazon/whispersync/roboguice/inject/ResourcesProvider;
.super Ljava/lang/Object;
.source "ResourcesProvider.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/Provider;


# annotations
.annotation runtime Lcom/amazon/whispersync/com/google/inject/Singleton;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/Provider<",
        "Landroid/content/res/Resources;",
        ">;"
    }
.end annotation


# instance fields
.field protected resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/roboguice/inject/ResourcesProvider;->resources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public get()Landroid/content/res/Resources;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/inject/ResourcesProvider;->resources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/amazon/whispersync/roboguice/inject/ResourcesProvider;->get()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method
