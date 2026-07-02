.class Lcom/facebook/AuthorizationClient$3;
.super Ljava/lang/Object;
.source "AuthorizationClient.java"

# interfaces
.implements Lcom/facebook/Request$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/AuthorizationClient;->createReauthValidationBatch(Lcom/facebook/AuthorizationClient$Result;)Lcom/facebook/RequestBatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$fbids:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/facebook/AuthorizationClient;Ljava/util/ArrayList;)V
    .locals 0

    .line 367
    iput-object p2, p0, Lcom/facebook/AuthorizationClient$3;->val$fbids:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 1

    .line 371
    :try_start_0
    const-class v0, Lcom/facebook/model/GraphUser;

    invoke-virtual {p1, v0}, Lcom/facebook/Response;->getGraphObjectAs(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    move-result-object p1

    check-cast p1, Lcom/facebook/model/GraphUser;

    if-eqz p1, :cond_0

    .line 373
    iget-object v0, p0, Lcom/facebook/AuthorizationClient$3;->val$fbids:Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/facebook/model/GraphUser;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
