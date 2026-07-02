.class Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$3;
.super Ljava/lang/Object;
.source "AmazonPackageManager.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Lcom/amazon/whispersync/dcp/framework/IPackageDataObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mInvocationHandlerTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;

.field final synthetic val$observer:Lcom/amazon/whispersync/dcp/framework/IPackageDataObserver;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;Lcom/amazon/whispersync/dcp/framework/IPackageDataObserver;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$3;->this$0:Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;

    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$3;->val$observer:Lcom/amazon/whispersync/dcp/framework/IPackageDataObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;->access$100()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".InvocationHandler"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$3;->mInvocationHandlerTag:Ljava/lang/String;

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

    .line 471
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$3;->mInvocationHandlerTag:Ljava/lang/String;

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

    .line 472
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$3;->val$observer:Lcom/amazon/whispersync/dcp/framework/IPackageDataObserver;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
