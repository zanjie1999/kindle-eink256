.class Lcom/amazon/readingactions/ui/widget/MarkAsReadingWidget$MarkAsReadingOdotCallback$2;
.super Ljava/lang/Object;
.source "MarkAsReadingWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/ui/widget/MarkAsReadingWidget$MarkAsReadingOdotCallback;->success(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/readingactions/ui/widget/MarkAsReadingWidget$MarkAsReadingOdotCallback;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/ui/widget/MarkAsReadingWidget$MarkAsReadingOdotCallback;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/MarkAsReadingWidget$MarkAsReadingOdotCallback$2;->this$1:Lcom/amazon/readingactions/ui/widget/MarkAsReadingWidget$MarkAsReadingOdotCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 350
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/MarkAsReadingWidget$MarkAsReadingOdotCallback$2;->this$1:Lcom/amazon/readingactions/ui/widget/MarkAsReadingWidget$MarkAsReadingOdotCallback;

    iget-object v0, v0, Lcom/amazon/readingactions/ui/widget/MarkAsReadingWidget$MarkAsReadingOdotCallback;->this$0:Lcom/amazon/readingactions/ui/widget/MarkAsReadingWidget;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/MarkAsReadingWidget;->access$700(Lcom/amazon/readingactions/ui/widget/MarkAsReadingWidget;)V

    .line 352
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-nez v0, :cond_0

    .line 354
    invoke-static {}, Lcom/amazon/readingactions/ui/widget/MarkAsReadingWidget;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Current book is null; will not update stored preference"

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 359
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 361
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "startactions.gr.pending"

    .line 360
    invoke-static {v3, v2, v1}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->setStringPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "startactions.gr.shelf"

    const-string v2, "currently-reading"

    .line 364
    invoke-static {v1, v0, v2}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->setStringPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
