.class Lcom/amazon/device/ads/AdUrlLoader$2;
.super Ljava/lang/Object;
.source "AdUrlLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/AdUrlLoader;->loadUrlInThread(Ljava/lang/String;ZLcom/amazon/device/ads/PreloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/AdUrlLoader;

.field final synthetic val$body:Ljava/lang/String;

.field final synthetic val$callback:Lcom/amazon/device/ads/PreloadCallback;

.field final synthetic val$shouldPreload:Z

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdUrlLoader;Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/device/ads/PreloadCallback;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/amazon/device/ads/AdUrlLoader$2;->this$0:Lcom/amazon/device/ads/AdUrlLoader;

    iput-object p2, p0, Lcom/amazon/device/ads/AdUrlLoader$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/device/ads/AdUrlLoader$2;->val$body:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/amazon/device/ads/AdUrlLoader$2;->val$shouldPreload:Z

    iput-object p5, p0, Lcom/amazon/device/ads/AdUrlLoader$2;->val$callback:Lcom/amazon/device/ads/PreloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 112
    iget-object v0, p0, Lcom/amazon/device/ads/AdUrlLoader$2;->this$0:Lcom/amazon/device/ads/AdUrlLoader;

    invoke-static {v0}, Lcom/amazon/device/ads/AdUrlLoader;->access$100(Lcom/amazon/device/ads/AdUrlLoader;)Lcom/amazon/device/ads/AdControlAccessor;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/AdUrlLoader$2;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/device/ads/AdUrlLoader$2;->val$body:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/amazon/device/ads/AdUrlLoader$2;->val$shouldPreload:Z

    iget-object v4, p0, Lcom/amazon/device/ads/AdUrlLoader$2;->val$callback:Lcom/amazon/device/ads/PreloadCallback;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazon/device/ads/AdControlAccessor;->loadHtml(Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/device/ads/PreloadCallback;)V

    return-void
.end method
