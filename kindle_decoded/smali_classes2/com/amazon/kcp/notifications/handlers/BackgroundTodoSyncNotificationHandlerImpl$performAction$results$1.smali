.class final Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl$performAction$results$1;
.super Ljava/lang/Object;
.source "BackgroundTodoSyncNotificationHandler.kt"

# interfaces
.implements Lcom/amazon/foundation/internal/IBooleanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl;->performAction(Landroid/content/Context;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl$performAction$results$1;->this$0:Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Z)V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl$performAction$results$1;->this$0:Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl;

    invoke-virtual {v0}, Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl;->getMetricsManager()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl$performAction$results$1;->this$0:Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl;

    invoke-static {v1}, Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl;->access$getMETRICS_PREFIX$p(Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl;)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    const-string p1, "Success"

    goto :goto_0

    :cond_0
    const-string p1, "FailedProcessing"

    :goto_0
    invoke-virtual {v0, v1, p1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl$performAction$results$1;->this$0:Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl;

    invoke-virtual {p1}, Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl;->getMetricsManager()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl$performAction$results$1;->this$0:Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl;

    invoke-static {v0}, Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl;->access$getMETRICS_PREFIX$p(Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl$performAction$results$1;->this$0:Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl;

    invoke-static {v1}, Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl;->access$getMETRICS_PREFIX$p(Lcom/amazon/kcp/notifications/handlers/BackgroundTodoSyncNotificationHandlerImpl;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ElapsedTime"

    invoke-virtual {p1, v0, v2, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->stopMetricTimerIfExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
