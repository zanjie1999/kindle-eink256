.class Lcom/amazon/krf/platform/PageManager$2;
.super Ljava/lang/Object;
.source "PageManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/krf/platform/PageManager;->dispose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/krf/platform/PageManager;


# direct methods
.method constructor <init>(Lcom/amazon/krf/platform/PageManager;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/amazon/krf/platform/PageManager$2;->this$0:Lcom/amazon/krf/platform/PageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 247
    invoke-virtual {p0}, Lcom/amazon/krf/platform/PageManager$2;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/amazon/krf/platform/PageManager$2;->this$0:Lcom/amazon/krf/platform/PageManager;

    invoke-static {v0}, Lcom/amazon/krf/platform/PageManager;->access$000(Lcom/amazon/krf/platform/PageManager;)V

    .line 251
    iget-object v0, p0, Lcom/amazon/krf/platform/PageManager$2;->this$0:Lcom/amazon/krf/platform/PageManager;

    invoke-static {v0}, Lcom/amazon/krf/platform/PageManager;->access$100(Lcom/amazon/krf/platform/PageManager;)V

    .line 252
    iget-object v0, p0, Lcom/amazon/krf/platform/PageManager$2;->this$0:Lcom/amazon/krf/platform/PageManager;

    invoke-static {v0}, Lcom/amazon/krf/platform/PageManager;->access$200(Lcom/amazon/krf/platform/PageManager;)V

    const/4 v0, 0x0

    return-object v0
.end method
