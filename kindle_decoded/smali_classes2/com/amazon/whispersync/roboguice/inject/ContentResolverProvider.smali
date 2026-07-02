.class public Lcom/amazon/whispersync/roboguice/inject/ContentResolverProvider;
.super Ljava/lang/Object;
.source "ContentResolverProvider.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/Provider;


# annotations
.annotation runtime Lcom/amazon/whispersync/roboguice/inject/ContextSingleton;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/Provider<",
        "Landroid/content/ContentResolver;",
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

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Landroid/content/ContentResolver;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/inject/ContentResolverProvider;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/amazon/whispersync/roboguice/inject/ContentResolverProvider;->get()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method
