.class Lcom/amazon/kcp/application/ReddingApplication$10;
.super Ljava/lang/Object;
.source "ReddingApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/ReddingApplication;->onStartupComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/ReddingApplication;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/ReddingApplication;)V
    .locals 0

    .line 1104
    iput-object p1, p0, Lcom/amazon/kcp/application/ReddingApplication$10;->this$0:Lcom/amazon/kcp/application/ReddingApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1107
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContentUpdateService()Lcom/amazon/kindle/contentupdate/IContentUpdateService;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/contentupdate/IContentUpdateService;->onAppStartup()V

    return-void
.end method
