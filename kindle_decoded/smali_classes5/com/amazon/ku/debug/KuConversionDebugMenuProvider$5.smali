.class Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$5;
.super Ljava/lang/Object;
.source "KuConversionDebugMenuProvider.java"

# interfaces
.implements Lcom/amazon/ku/service/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;->showSubscriptionInfo(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/ku/service/ResponseListener<",
        "Lcom/amazon/ku/service/KuSubscriptionInfoDownloadRequest$KuSubscriptionInfoResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;JLandroid/content/Context;)V
    .locals 0

    .line 129
    iput-wide p2, p0, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$5;->val$startTime:J

    iput-object p4, p0, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/amazon/ku/service/KuSubscriptionInfoDownloadRequest$KuSubscriptionInfoResponse;Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V
    .locals 1

    .line 132
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$5$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$5$1;-><init>(Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$5;Lcom/amazon/ku/service/KuSubscriptionInfoDownloadRequest$KuSubscriptionInfoResponse;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V
    .locals 0

    .line 129
    check-cast p1, Lcom/amazon/ku/service/KuSubscriptionInfoDownloadRequest$KuSubscriptionInfoResponse;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$5;->onResponse(Lcom/amazon/ku/service/KuSubscriptionInfoDownloadRequest$KuSubscriptionInfoResponse;Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V

    return-void
.end method
