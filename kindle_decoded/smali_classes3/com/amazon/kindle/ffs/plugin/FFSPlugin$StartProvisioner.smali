.class public abstract Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner;
.super Ljava/lang/Object;
.source "FFSPlugin.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/ffs/plugin/FFSPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "StartProvisioner"
.end annotation


# instance fields
.field private final attempt:I

.field private final promise:Lcom/amazon/kindle/ffs/utils/BlockingPromise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/ffs/utils/BlockingPromise<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

.field private final willRetryMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/ffs/plugin/FFSPlugin;Lcom/amazon/kindle/ffs/utils/BlockingPromise;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/ffs/utils/BlockingPromise<",
            "Lkotlin/Unit;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    iput-object p1, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner;->this$0:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner;->promise:Lcom/amazon/kindle/ffs/utils/BlockingPromise;

    iput p3, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner;->attempt:I

    .line 252
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed attempt "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner;->attempt:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " to start provision, will retry in "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->access$getProvisionAttemptDelayMillis$p(Lcom/amazon/kindle/ffs/plugin/FFSPlugin;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " milliseconds"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner;->willRetryMsg:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getWillRetryMsg$p(Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner;)Ljava/lang/String;
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner;->willRetryMsg:Ljava/lang/String;

    return-object p0
.end method

.method private final retryOrFail(Lkotlin/jvm/functions/Function0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 255
    iget v0, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner;->attempt:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 256
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 257
    iget-object p1, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner;->this$0:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-static {p1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->access$getExecutor$p(Lcom/amazon/kindle/ffs/plugin/FFSPlugin;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner;->reTry()Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner;

    move-result-object v0

    .line 258
    iget-object v1, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner;->this$0:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-static {v1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->access$getProvisionAttemptDelayMillis$p(Lcom/amazon/kindle/ffs/plugin/FFSPlugin;)J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 257
    invoke-interface {p1, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 260
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner;->this$0:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    invoke-static {}, Lcom/amazon/kindle/ffs/plugin/FFSPluginKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Giving up provision launch after 5 attempts"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object p1, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner;->promise:Lcom/amazon/kindle/ffs/utils/BlockingPromise;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/ffs/utils/BlockingPromise;->complete(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public abstract canStartProvisioner()Z
.end method

.method protected final getAttempt()I
    .locals 1

    .line 245
    iget v0, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner;->attempt:I

    return v0
.end method

.method protected final getPromise()Lcom/amazon/kindle/ffs/utils/BlockingPromise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kindle/ffs/utils/BlockingPromise<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner;->promise:Lcom/amazon/kindle/ffs/utils/BlockingPromise;

    return-object v0
.end method

.method public abstract reTry()Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner;
.end method

.method public run()V
    .locals 2

    .line 267
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner;->canStartProvisioner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner;->startProvisioner()V

    goto :goto_0

    .line 270
    :cond_0
    new-instance v0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner$run$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner$run$1;-><init>(Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner;->retryOrFail(Lkotlin/jvm/functions/Function0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 273
    new-instance v1, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner$run$2;

    invoke-direct {v1, p0, v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner$run$2;-><init>(Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner;->retryOrFail(Lkotlin/jvm/functions/Function0;)V

    :goto_0
    return-void
.end method

.method public abstract startProvisioner()V
.end method
