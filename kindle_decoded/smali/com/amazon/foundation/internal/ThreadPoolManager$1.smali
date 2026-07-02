.class Lcom/amazon/foundation/internal/ThreadPoolManager$1;
.super Ljava/lang/Object;
.source "ThreadPoolManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/foundation/internal/ThreadPoolManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/foundation/internal/ThreadPoolManager;


# direct methods
.method constructor <init>(Lcom/amazon/foundation/internal/ThreadPoolManager;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/amazon/foundation/internal/ThreadPoolManager$1;->this$0:Lcom/amazon/foundation/internal/ThreadPoolManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/amazon/foundation/internal/ThreadPoolManager$1;->this$0:Lcom/amazon/foundation/internal/ThreadPoolManager;

    sget-object v1, Lcom/amazon/kindle/krx/foundation/StartupType;->TIME_OUT:Lcom/amazon/kindle/krx/foundation/StartupType;

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/ThreadPoolManager;->setStartupCompleted(Lcom/amazon/kindle/krx/foundation/StartupType;)V

    return-void
.end method
