.class Lcom/amazon/kindle/content/LibraryContentService$2;
.super Ljava/lang/Object;
.source "LibraryContentService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/content/LibraryContentService;->registerAuthenticationListener(Lcom/amazon/kcp/application/IAuthenticationManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/content/LibraryContentService;

.field final synthetic val$authManager:Lcom/amazon/kcp/application/IAuthenticationManager;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/content/LibraryContentService;Lcom/amazon/kcp/application/IAuthenticationManager;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/amazon/kindle/content/LibraryContentService$2;->this$0:Lcom/amazon/kindle/content/LibraryContentService;

    iput-object p2, p0, Lcom/amazon/kindle/content/LibraryContentService$2;->val$authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 249
    new-instance v0, Lcom/amazon/kindle/content/LibraryContentService$2$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/content/LibraryContentService$2$1;-><init>(Lcom/amazon/kindle/content/LibraryContentService$2;)V

    .line 275
    iget-object v1, p0, Lcom/amazon/kindle/content/LibraryContentService$2;->val$authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/event/IEventProvider;->registerHandler(Lcom/amazon/kindle/event/IEventHandler;)V

    return-void
.end method
