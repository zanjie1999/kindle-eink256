.class Lcom/amazon/whispersync/dcp/framework/FrameworkModule$2;
.super Ljava/lang/Object;
.source "FrameworkModule.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/FrameworkModule;->configure()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/Provider<",
        "Landroid/content/pm/PackageManager;",
        ">;"
    }
.end annotation


# instance fields
.field private mApplication:Landroid/app/Application;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/FrameworkModule;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/FrameworkModule;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/FrameworkModule$2;->this$0:Lcom/amazon/whispersync/dcp/framework/FrameworkModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Landroid/content/pm/PackageManager;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/FrameworkModule$2;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/FrameworkModule$2;->get()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method
