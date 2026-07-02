.class final Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor$connectionDetailsTrackingClient$2$1;
.super Ljava/lang/Object;
.source "OkHttpWebRequestExecutor.kt"

# interfaces
.implements Lokhttp3/EventListener$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor$connectionDetailsTrackingClient$2;->invoke()Lokhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor$connectionDetailsTrackingClient$2;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor$connectionDetailsTrackingClient$2;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor$connectionDetailsTrackingClient$2$1;->this$0:Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor$connectionDetailsTrackingClient$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lokhttp3/Call;)Lokhttp3/EventListener;
    .locals 3

    .line 87
    new-instance v0, Lcom/amazon/kindle/webservices/ConnectionDetails;

    invoke-direct {v0}, Lcom/amazon/kindle/webservices/ConnectionDetails;-><init>()V

    .line 88
    iget-object v1, p0, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor$connectionDetailsTrackingClient$2$1;->this$0:Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor$connectionDetailsTrackingClient$2;

    iget-object v1, v1, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor$connectionDetailsTrackingClient$2;->this$0:Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;

    invoke-static {v1}, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;->access$getCallToDetailsMap$p(Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    const-string v2, "call"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    new-instance p1, Lcom/amazon/kindle/webservices/okhttp/ConnectionTimerEventListener;

    invoke-direct {p1, v0}, Lcom/amazon/kindle/webservices/okhttp/ConnectionTimerEventListener;-><init>(Lcom/amazon/kindle/webservices/ConnectionDetails;)V

    return-object p1
.end method
