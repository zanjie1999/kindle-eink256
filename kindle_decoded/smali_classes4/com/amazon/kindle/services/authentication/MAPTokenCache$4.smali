.class Lcom/amazon/kindle/services/authentication/MAPTokenCache$4;
.super Ljava/lang/Object;
.source "MAPTokenCache.java"

# interfaces
.implements Lcom/amazon/identity/auth/device/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/services/authentication/MAPTokenCache;->setValue(Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/services/authentication/MAPTokenCache;

.field final synthetic val$account:Ljava/lang/String;

.field final synthetic val$key:Lcom/amazon/kindle/services/authentication/TokenKey;

.field final synthetic val$originalAccountCache:Ljava/util/Map;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/services/authentication/MAPTokenCache;Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    .line 475
    iput-object p1, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$4;->this$0:Lcom/amazon/kindle/services/authentication/MAPTokenCache;

    iput-object p2, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$4;->val$key:Lcom/amazon/kindle/services/authentication/TokenKey;

    iput-object p3, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$4;->val$account:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$4;->val$originalAccountCache:Ljava/util/Map;

    iput-object p5, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$4;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/os/Bundle;)V
    .locals 3

    .line 484
    invoke-static {}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->access$200()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$4;->val$key:Lcom/amazon/kindle/services/authentication/TokenKey;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Failed to set value for key: [%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 4

    .line 478
    invoke-static {}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Successfully stored attribute in MAP"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    iget-object p1, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$4;->this$0:Lcom/amazon/kindle/services/authentication/MAPTokenCache;

    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$4;->val$key:Lcom/amazon/kindle/services/authentication/TokenKey;

    iget-object v1, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$4;->val$account:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$4;->val$originalAccountCache:Ljava/util/Map;

    iget-object v3, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$4;->val$value:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->access$300(Lcom/amazon/kindle/services/authentication/MAPTokenCache;Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
