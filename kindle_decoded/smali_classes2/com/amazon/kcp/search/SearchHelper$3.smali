.class Lcom/amazon/kcp/search/SearchHelper$3;
.super Ljava/lang/Object;
.source "SearchHelper.java"

# interfaces
.implements Lcom/amazon/kindle/callback/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/SearchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/callback/ICallback<",
        "Lcom/amazon/kcp/search/store/SearchSuggestionCompleteEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/SearchHelper;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/SearchHelper;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/amazon/kcp/search/SearchHelper$3;->this$0:Lcom/amazon/kcp/search/SearchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/amazon/kindle/callback/OperationResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/OperationResult<",
            "Lcom/amazon/kcp/search/store/SearchSuggestionCompleteEvent;",
            ">;)V"
        }
    .end annotation

    .line 116
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/search/SearchHelper$3$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/search/SearchHelper$3$1;-><init>(Lcom/amazon/kcp/search/SearchHelper$3;Lcom/amazon/kindle/callback/OperationResult;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
