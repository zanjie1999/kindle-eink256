.class Lcom/amazon/kcp/redding/DocumentActivity$4;
.super Ljava/lang/Object;
.source "DocumentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/redding/DocumentActivity;->updateBookAccess(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/redding/DocumentActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/redding/DocumentActivity;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity$4;->this$0:Lcom/amazon/kcp/redding/DocumentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 224
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity$4;->this$0:Lcom/amazon/kcp/redding/DocumentActivity;

    iget-object v0, v0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-nez v0, :cond_0

    .line 225
    invoke-static {}, Lcom/amazon/kcp/redding/DocumentActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "docviewer is null, not updating access time"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "DocActivity report book open"

    const/4 v1, 0x1

    .line 228
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 229
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 230
    iget-object v3, p0, Lcom/amazon/kcp/redding/DocumentActivity$4;->this$0:Lcom/amazon/kcp/redding/DocumentActivity;

    iget-object v3, v3, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v3

    .line 232
    invoke-interface {v3}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v4

    .line 233
    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_ACCESSED:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->IS_IN_CAROUSEL:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    invoke-interface {v3}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookReadingProgress()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 236
    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->READING_PROGRESS:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 237
    invoke-interface {v3}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookReadingProgress()Ljava/lang/Integer;

    move-result-object v3

    .line 236
    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5, v2, v1}, Lcom/amazon/kindle/content/ILibraryService;->updateContentMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 240
    iget-object v1, p0, Lcom/amazon/kcp/redding/DocumentActivity$4;->this$0:Lcom/amazon/kcp/redding/DocumentActivity;

    iget-object v2, v1, Lcom/amazon/kcp/redding/DocumentActivity;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v3, Lcom/amazon/kcp/reader/ReaderControllerEvent;

    sget-object v4, Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;->BOOK_LIFECYCLE_ACCESSED:Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    iget-object v1, v1, Lcom/amazon/kcp/redding/DocumentActivity;->readerController:Lcom/amazon/kcp/reader/ReaderController;

    .line 241
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ReaderController;->currentBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object v5

    invoke-direct {v3, v4, v1, v5}, Lcom/amazon/kcp/reader/ReaderControllerEvent;-><init>(Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kindle/model/content/ILocalBookInfo;)V

    .line 240
    invoke-interface {v2, v3}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    const/4 v1, 0x0

    .line 242
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method
