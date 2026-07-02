.class Lcom/facebook/AuthorizationClient$4;
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
.field final synthetic val$declinedPermissions:Ljava/util/ArrayList;

.field final synthetic val$grantedPermissions:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/facebook/AuthorizationClient;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 388
    iput-object p2, p0, Lcom/facebook/AuthorizationClient$4;->val$grantedPermissions:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/facebook/AuthorizationClient$4;->val$declinedPermissions:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 2

    .line 392
    :try_start_0
    invoke-static {p1}, Lcom/facebook/Session;->handlePermissionResponse(Lcom/facebook/Response;)Lcom/facebook/Session$PermissionsPair;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 394
    iget-object v0, p0, Lcom/facebook/AuthorizationClient$4;->val$grantedPermissions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/facebook/Session$PermissionsPair;->getGrantedPermissions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 395
    iget-object v0, p0, Lcom/facebook/AuthorizationClient$4;->val$declinedPermissions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/facebook/Session$PermissionsPair;->getDeclinedPermissions()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
