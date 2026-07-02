.class Lcom/amazon/krf/platform/KRFView$2;
.super Ljava/lang/Object;
.source "KRFView.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/krf/platform/KRFView;->dispose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/krf/platform/KRFView;


# direct methods
.method constructor <init>(Lcom/amazon/krf/platform/KRFView;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/amazon/krf/platform/KRFView$2;->this$0:Lcom/amazon/krf/platform/KRFView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Lcom/amazon/krf/platform/KRFView$2;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView$2;->this$0:Lcom/amazon/krf/platform/KRFView;

    invoke-static {v0}, Lcom/amazon/krf/platform/KRFView;->access$000(Lcom/amazon/krf/platform/KRFView;)Lcom/amazon/krf/internal/KRFGLESView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView$2;->this$0:Lcom/amazon/krf/platform/KRFView;

    invoke-static {v0}, Lcom/amazon/krf/platform/KRFView;->access$000(Lcom/amazon/krf/platform/KRFView;)Lcom/amazon/krf/internal/KRFGLESView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/krf/internal/KRFGLESView;->dispose()V

    .line 127
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView$2;->this$0:Lcom/amazon/krf/platform/KRFView;

    invoke-static {v0, v1}, Lcom/amazon/krf/platform/KRFView;->access$002(Lcom/amazon/krf/platform/KRFView;Lcom/amazon/krf/internal/KRFGLESView;)Lcom/amazon/krf/internal/KRFGLESView;

    :cond_0
    return-object v1
.end method
