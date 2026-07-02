.class public Lcom/amazon/whispersync/dcp/framework/GuiceServiceHelper;
.super Ljava/lang/Object;
.source "GuiceServiceHelper.java"


# instance fields
.field private final mNamespace:Ljava/lang/String;

.field private final mScopedObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/app/Service;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/app/Service;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/GuiceServiceHelper;->mScopedObjects:Ljava/util/Map;

    .line 35
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/GuiceServiceHelper;->mNamespace:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/GuiceServiceHelper;->mService:Landroid/app/Service;

    return-void
.end method


# virtual methods
.method public getScopedObjectMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/GuiceServiceHelper;->mScopedObjects:Ljava/util/Map;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/GuiceServiceHelper;->mNamespace:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/GuiceServiceHelper;->mService:Landroid/app/Service;

    invoke-static {v0, v1}, Lcom/amazon/whispersync/roboguice/RoboGuice;->getInjector(Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/whispersync/roboguice/inject/RoboInjector;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/GuiceServiceHelper;->mService:Landroid/app/Service;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/Injector;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/GuiceServiceHelper;->mNamespace:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/GuiceServiceHelper;->mService:Landroid/app/Service;

    invoke-static {v0, v1}, Lcom/amazon/whispersync/roboguice/RoboGuice;->destroyInjector(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
