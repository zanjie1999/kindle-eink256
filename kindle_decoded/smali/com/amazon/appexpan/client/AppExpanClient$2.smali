.class Lcom/amazon/appexpan/client/AppExpanClient$2;
.super Ljava/lang/Object;
.source "AppExpanClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/appexpan/client/AppExpanClient;->requestLatestResourceSet(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/appexpan/client/AppExpanClient;

.field final synthetic val$resourceSetName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/appexpan/client/AppExpanClient;Ljava/lang/String;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/amazon/appexpan/client/AppExpanClient$2;->this$0:Lcom/amazon/appexpan/client/AppExpanClient;

    iput-object p2, p0, Lcom/amazon/appexpan/client/AppExpanClient$2;->val$resourceSetName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 339
    iget-object v0, p0, Lcom/amazon/appexpan/client/AppExpanClient$2;->this$0:Lcom/amazon/appexpan/client/AppExpanClient;

    iget-object v0, v0, Lcom/amazon/appexpan/client/AppExpanClient;->resourceSetLoader:Lcom/amazon/appexpan/client/ResourceSetLoader;

    iget-object v1, p0, Lcom/amazon/appexpan/client/AppExpanClient$2;->val$resourceSetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/appexpan/client/ResourceSetLoader;->requestLatestResourceSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    invoke-static {}, Lcom/amazon/appexpan/client/AppExpanClient;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requesting download for newer version of resource set : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/appexpan/client/AppExpanClient$2;->val$resourceSetName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/appexpan/client/AppExpanLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
