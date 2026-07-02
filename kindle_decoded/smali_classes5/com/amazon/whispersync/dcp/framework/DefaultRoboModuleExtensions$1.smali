.class Lcom/amazon/whispersync/dcp/framework/DefaultRoboModuleExtensions$1;
.super Ljava/lang/Object;
.source "DefaultRoboModuleExtensions.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/DefaultRoboModuleExtensions;->configure()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/Provider<",
        "Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Lcom/amazon/whispersync/com/google/inject/Provider;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/DefaultRoboModuleExtensions;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/DefaultRoboModuleExtensions;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/DefaultRoboModuleExtensions$1;->this$0:Lcom/amazon/whispersync/dcp/framework/DefaultRoboModuleExtensions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/DefaultRoboModuleExtensions$1;->this$0:Lcom/amazon/whispersync/dcp/framework/DefaultRoboModuleExtensions;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/DefaultRoboModuleExtensions;->access$000(Lcom/amazon/whispersync/dcp/framework/DefaultRoboModuleExtensions;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/DefaultRoboModuleExtensions$1;->mContext:Lcom/amazon/whispersync/com/google/inject/Provider;

    invoke-interface {v1}, Lcom/amazon/whispersync/com/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/amazon/whispersync/roboguice/RoboGuice;->getInjector(Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/whispersync/roboguice/inject/RoboInjector;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/DefaultRoboModuleExtensions$1;->get()Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;

    move-result-object v0

    return-object v0
.end method
