.class public Lcom/amazon/ea/util/MessageSender;
.super Ljava/lang/Object;
.source "MessageSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ea/util/MessageSender$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.util.MessageSender"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 18
    sget-object v0, Lcom/amazon/ea/util/MessageSender;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static send(Lcom/amazon/ea/messaging/IMessage;Lcom/amazon/ea/util/MessageSender$Callback;)V
    .locals 2

    .line 30
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAsyncTaskExecutor()Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/amazon/ea/util/MessageSender$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/ea/util/MessageSender$1;-><init>(Lcom/amazon/ea/messaging/IMessage;Lcom/amazon/ea/util/MessageSender$Callback;)V

    sget-object p0, Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;->MEDIUM:Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;

    .line 31
    invoke-static {v1, p0}, Lcom/amazon/ea/metrics/M;->asyncWithMetrics(Ljava/util/concurrent/Callable;Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;)Lcom/amazon/kindle/krx/application/IAsyncTask;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;->submit(Lcom/amazon/kindle/krx/application/IAsyncTask;)Ljava/util/concurrent/Future;

    return-void
.end method
