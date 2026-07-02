.class Lcom/amazon/kindle/services/authentication/MAPTokenCache$3;
.super Ljava/lang/Object;
.source "MAPTokenCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/services/authentication/MAPTokenCache;->retrieveToken(Ljava/lang/String;Lcom/amazon/kindle/services/authentication/MAPTokenTask;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/services/authentication/MAPTokenCache;

.field final synthetic val$account:Ljava/lang/String;

.field final synthetic val$mapKey:Ljava/lang/String;

.field final synthetic val$task:Lcom/amazon/kindle/services/authentication/MAPTokenTask;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/services/authentication/MAPTokenCache;Ljava/lang/String;Lcom/amazon/kindle/services/authentication/MAPTokenTask;Ljava/lang/String;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$3;->this$0:Lcom/amazon/kindle/services/authentication/MAPTokenCache;

    iput-object p2, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$3;->val$mapKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$3;->val$task:Lcom/amazon/kindle/services/authentication/MAPTokenTask;

    iput-object p4, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$3;->val$account:Ljava/lang/String;

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

    .line 380
    invoke-virtual {p0}, Lcom/amazon/kindle/services/authentication/MAPTokenCache$3;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 4

    .line 383
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$3;->this$0:Lcom/amazon/kindle/services/authentication/MAPTokenCache;

    iget-object v1, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$3;->val$mapKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$3;->val$task:Lcom/amazon/kindle/services/authentication/MAPTokenTask;

    iget-object v3, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$3;->val$account:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->access$100(Lcom/amazon/kindle/services/authentication/MAPTokenCache;Ljava/lang/String;Lcom/amazon/kindle/services/authentication/MAPTokenTask;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
