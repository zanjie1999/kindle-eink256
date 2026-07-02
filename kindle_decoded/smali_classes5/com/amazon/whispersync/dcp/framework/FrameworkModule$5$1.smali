.class Lcom/amazon/whispersync/dcp/framework/FrameworkModule$5$1;
.super Ljava/lang/Object;
.source "FrameworkModule.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/FrameworkModule$5;->configure()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/Provider<",
        "Lcom/amazon/identity/auth/device/api/MAPAccountManager;",
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

.field final synthetic this$1:Lcom/amazon/whispersync/dcp/framework/FrameworkModule$5;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/FrameworkModule$5;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/FrameworkModule$5$1;->this$1:Lcom/amazon/whispersync/dcp/framework/FrameworkModule$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/amazon/identity/auth/device/api/MAPAccountManager;
    .locals 2

    .line 107
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/FrameworkModule$5$1;->mContext:Lcom/amazon/whispersync/com/google/inject/Provider;

    invoke-interface {v1}, Lcom/amazon/whispersync/com/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/FrameworkModule$5$1;->get()Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    move-result-object v0

    return-object v0
.end method
