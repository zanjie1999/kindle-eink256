.class Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$5$1;
.super Ljava/lang/Object;
.source "KuConversionDebugMenuProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$5;->onResponse(Lcom/amazon/ku/service/KuSubscriptionInfoDownloadRequest$KuSubscriptionInfoResponse;Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$5;

.field final synthetic val$response:Lcom/amazon/ku/service/KuSubscriptionInfoDownloadRequest$KuSubscriptionInfoResponse;


# direct methods
.method constructor <init>(Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$5;Lcom/amazon/ku/service/KuSubscriptionInfoDownloadRequest$KuSubscriptionInfoResponse;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$5$1;->this$1:Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$5;

    iput-object p2, p0, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$5$1;->val$response:Lcom/amazon/ku/service/KuSubscriptionInfoDownloadRequest$KuSubscriptionInfoResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$5$1;->this$1:Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$5;

    iget-wide v2, v2, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$5;->val$startTime:J

    sub-long/2addr v0, v2

    .line 135
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$5$1;->this$1:Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$5;

    iget-object v3, v3, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$5;->val$context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$5$1;->val$response:Lcom/amazon/ku/service/KuSubscriptionInfoDownloadRequest$KuSubscriptionInfoResponse;

    invoke-virtual {v4}, Lcom/amazon/ku/service/KuSubscriptionInfoDownloadRequest$KuSubscriptionInfoResponse;->getSubscriptions()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\nElapsed time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 137
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
