.class Lcom/amazon/sitb/android/impl/LoggerManager$SamplingLogger;
.super Ljava/lang/Object;
.source "LoggerManager.java"

# interfaces
.implements Lcom/amazon/sitb/android/ISamplingLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/sitb/android/impl/LoggerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SamplingLogger"
.end annotation


# instance fields
.field private tag:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/sitb/android/impl/LoggerManager;


# direct methods
.method public constructor <init>(Lcom/amazon/sitb/android/impl/LoggerManager;Ljava/lang/Class;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/amazon/sitb/android/impl/LoggerManager$SamplingLogger;->this$0:Lcom/amazon/sitb/android/impl/LoggerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/sitb/android/impl/LoggerManager$SamplingLogger;->tag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/amazon/sitb/android/impl/LoggerManager$SamplingLogger;->this$0:Lcom/amazon/sitb/android/impl/LoggerManager;

    invoke-static {v0}, Lcom/amazon/sitb/android/impl/LoggerManager;->access$000(Lcom/amazon/sitb/android/impl/LoggerManager;)Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/sitb/android/impl/LoggerManager$SamplingLogger;->tag:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/amazon/sitb/android/impl/LoggerManager$SamplingLogger;->this$0:Lcom/amazon/sitb/android/impl/LoggerManager;

    invoke-static {v0}, Lcom/amazon/sitb/android/impl/LoggerManager;->access$000(Lcom/amazon/sitb/android/impl/LoggerManager;)Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/sitb/android/impl/LoggerManager$SamplingLogger;->tag:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/amazon/sitb/android/impl/LoggerManager$SamplingLogger;->this$0:Lcom/amazon/sitb/android/impl/LoggerManager;

    invoke-static {v0}, Lcom/amazon/sitb/android/impl/LoggerManager;->access$000(Lcom/amazon/sitb/android/impl/LoggerManager;)Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/sitb/android/impl/LoggerManager$SamplingLogger;->tag:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/amazon/sitb/android/impl/LoggerManager$SamplingLogger;->this$0:Lcom/amazon/sitb/android/impl/LoggerManager;

    invoke-static {v0}, Lcom/amazon/sitb/android/impl/LoggerManager;->access$000(Lcom/amazon/sitb/android/impl/LoggerManager;)Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/sitb/android/impl/LoggerManager$SamplingLogger;->tag:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/amazon/sitb/android/impl/LoggerManager$SamplingLogger;->this$0:Lcom/amazon/sitb/android/impl/LoggerManager;

    invoke-static {v0}, Lcom/amazon/sitb/android/impl/LoggerManager;->access$000(Lcom/amazon/sitb/android/impl/LoggerManager;)Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/sitb/android/impl/LoggerManager$SamplingLogger;->tag:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/sitb/android/impl/LoggerManager$SamplingLogger;->this$0:Lcom/amazon/sitb/android/impl/LoggerManager;

    invoke-static {v0}, Lcom/amazon/sitb/android/impl/LoggerManager;->access$000(Lcom/amazon/sitb/android/impl/LoggerManager;)Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/logging/ILogger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public warning(Ljava/lang/String;)V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/amazon/sitb/android/impl/LoggerManager$SamplingLogger;->this$0:Lcom/amazon/sitb/android/impl/LoggerManager;

    invoke-static {v0}, Lcom/amazon/sitb/android/impl/LoggerManager;->access$000(Lcom/amazon/sitb/android/impl/LoggerManager;)Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/sitb/android/impl/LoggerManager$SamplingLogger;->tag:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/amazon/sitb/android/impl/LoggerManager$SamplingLogger;->this$0:Lcom/amazon/sitb/android/impl/LoggerManager;

    invoke-static {v0}, Lcom/amazon/sitb/android/impl/LoggerManager;->access$000(Lcom/amazon/sitb/android/impl/LoggerManager;)Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/sitb/android/impl/LoggerManager$SamplingLogger;->tag:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/amazon/kindle/krx/logging/ILogger;->warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
