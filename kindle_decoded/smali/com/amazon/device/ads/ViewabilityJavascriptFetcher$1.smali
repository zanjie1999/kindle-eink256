.class Lcom/amazon/device/ads/ViewabilityJavascriptFetcher$1;
.super Ljava/lang/Object;
.source "ViewabilityJavascriptFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->beginFetch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher$1;->this$0:Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher$1;->this$0:Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;

    invoke-virtual {v0}, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->fetchJavascriptFromURLOnBackgroundThread()V

    return-void
.end method
