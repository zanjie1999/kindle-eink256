.class Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay$1;
.super Landroid/os/AsyncTask;
.source "WordWiseDelay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;->loadGlossEntries(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/amazon/kindle/krx/reader/IPosition;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay$1;->this$0:Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 120
    check-cast p1, [Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay$1;->doInBackground([Lcom/amazon/kindle/krx/reader/IPosition;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Lcom/amazon/kindle/krx/reader/IPosition;)Ljava/lang/Void;
    .locals 6

    const/4 v0, 0x0

    .line 124
    aget-object v1, p1, v0

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    .line 126
    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay$1;->this$0:Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;

    invoke-static {v2}, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;->access$000(Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 130
    :try_start_0
    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay$1;->this$0:Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;

    invoke-static {v2}, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;->access$200(Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;)Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v2

    invoke-static {}, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading gloss entries from position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay$1;->this$0:Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;

    invoke-static {v2}, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;->access$300(Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 134
    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay$1;->this$0:Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;

    invoke-static {v2}, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;->access$400(Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 139
    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v2

    add-int/lit16 v1, v1, 0xbb8

    .line 141
    invoke-interface {v2, v1}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    .line 143
    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay$1;->this$0:Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;

    aget-object v3, p1, v0

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v3

    invoke-static {v2, v3}, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;->access$502(Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;I)I

    .line 144
    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay$1;->this$0:Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v3

    invoke-static {v2, v3}, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;->access$602(Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;I)I

    .line 146
    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay$1;->this$0:Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;

    .line 147
    invoke-static {v2}, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;->access$400(Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getPluginServicesRepository()Lcom/amazon/kindle/krx/pluginservices/IPluginServicesRepository;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/pluginservices/IPluginServicesRepository;->getWordWiseServices()Lcom/amazon/kindle/krx/pluginservices/wordwise/IWordWiseServices;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 151
    aget-object p1, p1, v0

    invoke-interface {v2, p1, v1}, Lcom/amazon/kindle/krx/pluginservices/wordwise/IWordWiseServices;->getGlossesBetween(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/krx/pluginservices/wordwise/WordWiseGlossEntries;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 153
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/pluginservices/wordwise/WordWiseGlossEntries;->getGlossEntries()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay$1;->this$0:Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;->access$200(Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;)Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Word Wise returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/pluginservices/wordwise/WordWiseGlossEntries;->getGlossEntries()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " gloss entries"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 155
    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/pluginservices/wordwise/WordWiseGlossEntries;->getGlossEntries()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 160
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay$1;->this$0:Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;

    invoke-static {v1}, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;->access$300(Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay$1;->this$0:Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;->access$200(Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;)Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    invoke-static {}, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getGlossesBetween() returned null"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 169
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay$1;->this$0:Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;->access$200(Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;)Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    invoke-static {}, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Word Wise Services is null"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 175
    :try_start_1
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay$1;->this$0:Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;->access$200(Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;)Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error loading gloss entries"

    invoke-interface {v0, v1, v2, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay$1;->this$0:Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;->access$000(Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p1, 0x0

    return-object p1

    :goto_2
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay$1;->this$0:Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;->access$000(Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 180
    throw p1
.end method
