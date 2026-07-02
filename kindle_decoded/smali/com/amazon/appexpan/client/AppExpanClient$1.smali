.class Lcom/amazon/appexpan/client/AppExpanClient$1;
.super Ljava/lang/Object;
.source "AppExpanClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/appexpan/client/AppExpanClient;->releaseResourceSet(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/appexpan/client/AppExpanClient;

.field final synthetic val$resourceSetModel:Lcom/amazon/appexpan/client/model/ResourceSetModel;


# direct methods
.method constructor <init>(Lcom/amazon/appexpan/client/AppExpanClient;Lcom/amazon/appexpan/client/model/ResourceSetModel;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/amazon/appexpan/client/AppExpanClient$1;->this$0:Lcom/amazon/appexpan/client/AppExpanClient;

    iput-object p2, p0, Lcom/amazon/appexpan/client/AppExpanClient$1;->val$resourceSetModel:Lcom/amazon/appexpan/client/model/ResourceSetModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/amazon/appexpan/client/AppExpanClient$1;->this$0:Lcom/amazon/appexpan/client/AppExpanClient;

    iget-object v0, v0, Lcom/amazon/appexpan/client/AppExpanClient;->resourceSetLoader:Lcom/amazon/appexpan/client/ResourceSetLoader;

    iget-object v1, p0, Lcom/amazon/appexpan/client/AppExpanClient$1;->val$resourceSetModel:Lcom/amazon/appexpan/client/model/ResourceSetModel;

    invoke-virtual {v0, v1}, Lcom/amazon/appexpan/client/ResourceSetLoader;->releaseResourceSet(Lcom/amazon/appexpan/client/model/ResourceSetModel;)V

    return-void
.end method
