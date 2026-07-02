.class Lcom/amazon/kindle/services/authentication/MAPTokenCache$1;
.super Ljava/lang/Object;
.source "MAPTokenCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/services/authentication/MAPTokenCache;->getValue(Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;ZZ)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/services/authentication/MAPTokenCache;

.field final synthetic val$account:Ljava/lang/String;

.field final synthetic val$accountCache:Ljava/util/Map;

.field final synthetic val$forceRefresh:Z

.field final synthetic val$key:Lcom/amazon/kindle/services/authentication/TokenKey;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/services/authentication/MAPTokenCache;Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;ZLjava/util/Map;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$1;->this$0:Lcom/amazon/kindle/services/authentication/MAPTokenCache;

    iput-object p2, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$1;->val$key:Lcom/amazon/kindle/services/authentication/TokenKey;

    iput-object p3, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$1;->val$account:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$1;->val$forceRefresh:Z

    iput-object p5, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$1;->val$accountCache:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 174
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$1;->this$0:Lcom/amazon/kindle/services/authentication/MAPTokenCache;

    iget-object v1, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$1;->val$key:Lcom/amazon/kindle/services/authentication/TokenKey;

    iget-object v2, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$1;->val$account:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$1;->val$forceRefresh:Z

    iget-object v4, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$1;->val$accountCache:Ljava/util/Map;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->access$000(Lcom/amazon/kindle/services/authentication/MAPTokenCache;Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;ZLjava/util/Map;)Ljava/lang/String;

    return-void
.end method
