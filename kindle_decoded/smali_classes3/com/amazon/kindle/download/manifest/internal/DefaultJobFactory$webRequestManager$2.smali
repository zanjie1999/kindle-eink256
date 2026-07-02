.class final Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory$webRequestManager$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ManifestDownloader.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory;-><init>(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;Ldagger/Lazy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/kindle/webservices/WebRequestManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory$webRequestManager$2;->this$0:Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/kindle/webservices/WebRequestManager;
    .locals 6

    .line 99
    new-instance v0, Lcom/amazon/kindle/webservices/WebRequestManager;

    iget-object v1, p0, Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory$webRequestManager$2;->this$0:Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory;

    invoke-static {v1}, Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory;->access$getLazyWebRequestExecutor$p(Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory;)Ldagger/Lazy;

    move-result-object v1

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/webservices/IWebRequestExecutor;

    new-instance v2, Lcom/amazon/kindle/util/ThreadFactory;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/amazon/kindle/util/IThreadDecorator;

    new-instance v4, Lcom/amazon/kindle/util/Named;

    const-string v5, "ManifestDownloader-manifestRequest"

    invoke-direct {v4, v5}, Lcom/amazon/kindle/util/Named;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-direct {v2, v3}, Lcom/amazon/kindle/util/ThreadFactory;-><init>([Lcom/amazon/kindle/util/IThreadDecorator;)V

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/webservices/WebRequestManager;-><init>(Lcom/amazon/kindle/webservices/IWebRequestExecutor;Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory$webRequestManager$2;->invoke()Lcom/amazon/kindle/webservices/WebRequestManager;

    move-result-object v0

    return-object v0
.end method
