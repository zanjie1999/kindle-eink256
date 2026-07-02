.class final Lcom/amazon/kcp/library/BookOpenHelper$2;
.super Ljava/lang/Object;
.source "BookOpenHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/BookOpenHelper;->openBookOrSample(Landroid/app/Activity;Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$asin:Ljava/lang/String;

.field final synthetic val$downloadTrigger:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

.field final synthetic val$originator:Landroid/app/Activity;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/amazon/kcp/library/BookOpenHelper$2;->val$asin:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kcp/library/BookOpenHelper$2;->val$originator:Landroid/app/Activity;

    iput-object p3, p0, Lcom/amazon/kcp/library/BookOpenHelper$2;->val$downloadTrigger:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 297
    invoke-static {}, Lcom/amazon/kcp/library/BookOpenHelper;->access$000()Ljava/lang/String;

    .line 298
    const-class v0, Lcom/amazon/kcp/application/DeeplinkStoreHelper;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/DeeplinkStoreHelper;

    const/4 v1, 0x0

    const-string v2, "DeeplinkingOpenError"

    if-nez v0, :cond_0

    .line 303
    invoke-static {}, Lcom/amazon/kcp/library/BookOpenHelper;->access$100()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Lcom/amazon/kcp/application/IUIMessaging;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-static {}, Lcom/amazon/kcp/library/BookOpenHelper;->access$200()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/application/DeeplinkEvent;

    sget-object v2, Lcom/amazon/kcp/application/DeeplinkEvent$Type;->END_BOOK_OPEN:Lcom/amazon/kcp/application/DeeplinkEvent$Type;

    invoke-direct {v1, v2}, Lcom/amazon/kcp/application/DeeplinkEvent;-><init>(Lcom/amazon/kcp/application/DeeplinkEvent$Type;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void

    .line 308
    :cond_0
    iget-object v3, p0, Lcom/amazon/kcp/library/BookOpenHelper$2;->val$asin:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/amazon/kcp/application/DeeplinkStoreHelper;->getOfferResource(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;

    move-result-object v3

    .line 309
    invoke-static {}, Lcom/amazon/kcp/library/BookOpenHelper;->access$000()Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 312
    iget-object v1, p0, Lcom/amazon/kcp/library/BookOpenHelper$2;->val$originator:Landroid/app/Activity;

    invoke-interface {v0, v1, v3}, Lcom/amazon/kcp/application/DeeplinkStoreHelper;->attemptToBorrow(Landroid/app/Activity;Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 315
    invoke-static {}, Lcom/amazon/kcp/library/BookOpenHelper;->access$000()Ljava/lang/String;

    .line 316
    iget-object v0, p0, Lcom/amazon/kcp/library/BookOpenHelper$2;->val$originator:Landroid/app/Activity;

    iget-object v1, p0, Lcom/amazon/kcp/library/BookOpenHelper$2;->val$asin:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kcp/library/BookOpenHelper$2;->val$downloadTrigger:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/library/BookOpenHelper;->access$300(Landroid/app/Activity;Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)V

    .line 317
    invoke-static {}, Lcom/amazon/kcp/library/BookOpenHelper;->access$200()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/application/DeeplinkEvent;

    sget-object v2, Lcom/amazon/kcp/application/DeeplinkEvent$Type;->END_BOOK_OPEN:Lcom/amazon/kcp/application/DeeplinkEvent$Type;

    invoke-direct {v1, v2}, Lcom/amazon/kcp/application/DeeplinkEvent;-><init>(Lcom/amazon/kcp/application/DeeplinkEvent$Type;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    goto :goto_0

    .line 321
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/library/BookOpenHelper;->access$100()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Lcom/amazon/kcp/application/IUIMessaging;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-static {}, Lcom/amazon/kcp/library/BookOpenHelper;->access$200()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/application/DeeplinkEvent;

    sget-object v2, Lcom/amazon/kcp/application/DeeplinkEvent$Type;->END_BOOK_OPEN:Lcom/amazon/kcp/application/DeeplinkEvent$Type;

    invoke-direct {v1, v2}, Lcom/amazon/kcp/application/DeeplinkEvent;-><init>(Lcom/amazon/kcp/application/DeeplinkEvent$Type;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_2
    :goto_0
    return-void
.end method
