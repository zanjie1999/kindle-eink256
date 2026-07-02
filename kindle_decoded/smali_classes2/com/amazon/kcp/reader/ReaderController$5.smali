.class Lcom/amazon/kcp/reader/ReaderController$5;
.super Landroid/os/AsyncTask;
.source "ReaderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ReaderController;->updateLastReadBook(Lcom/amazon/android/docviewer/KindleDocViewer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ReaderController;

.field final synthetic val$appSettings:Lcom/amazon/system/io/IPersistentSettingsHelper;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/system/io/IPersistentSettingsHelper;)V
    .locals 0

    .line 1121
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderController$5;->this$0:Lcom/amazon/kcp/reader/ReaderController;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ReaderController$5;->val$appSettings:Lcom/amazon/system/io/IPersistentSettingsHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1121
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ReaderController$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 1125
    :try_start_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderController$5;->val$appSettings:Lcom/amazon/system/io/IPersistentSettingsHelper;

    invoke-interface {p1}, Lcom/amazon/system/io/IPersistentSettingsHelper;->save()V

    .line 1126
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderController$5;->this$0:Lcom/amazon/kcp/reader/ReaderController;

    iget-object p1, p1, Lcom/amazon/kcp/reader/ReaderController;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v0, Lcom/amazon/kcp/reader/LastReadBookEvent;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderController$5;->this$0:Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ReaderController;->getLastReadBook()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kcp/reader/LastReadBookEvent;-><init>(Lcom/amazon/kindle/content/ContentMetadata;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1128
    invoke-static {}, Lcom/amazon/kcp/reader/ReaderController;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "failed to persist application settings"

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
