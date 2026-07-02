.class Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$2;
.super Ljava/lang/Object;
.source "AmazonPackageManager.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;->deletePackage(Ljava/lang/String;Lcom/amazon/whispersync/dcp/framework/IPackageDeleteObserver;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mInvocationHandlerTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;

.field final synthetic val$observer:Lcom/amazon/whispersync/dcp/framework/IPackageDeleteObserver;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;Lcom/amazon/whispersync/dcp/framework/IPackageDeleteObserver;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$2;->this$0:Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;

    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$2;->val$observer:Lcom/amazon/whispersync/dcp/framework/IPackageDeleteObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;->access$100()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".InvocationHandler"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$2;->mInvocationHandlerTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 447
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$2;->mInvocationHandlerTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was invoked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$2;->val$observer:Lcom/amazon/whispersync/dcp/framework/IPackageDeleteObserver;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
