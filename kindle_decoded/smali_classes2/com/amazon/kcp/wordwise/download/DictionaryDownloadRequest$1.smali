.class Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest$1;
.super Ljava/lang/Object;
.source "DictionaryDownloadRequest.java"

# interfaces
.implements Lcom/amazon/kindle/krx/download/IKRXResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->getResponseHandler()Lcom/amazon/kindle/krx/download/IKRXResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest$1;->this$0:Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadComplete(ILcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V
    .locals 6

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest$1;->this$0:Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;

    invoke-static {v2}, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->access$100(Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 127
    iget-object v2, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest$1;->this$0:Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;

    invoke-static {v2}, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->access$300(Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v2

    invoke-static {}, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Gloss dictionary download complete: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    sget-object v2, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->COMPLETED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    invoke-virtual {p2, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 132
    iget-object p2, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest$1;->this$0:Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;

    invoke-static {p2}, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->access$300(Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/application/IUserAccount;->getUserId()Ljava/lang/String;

    move-result-object p2

    .line 133
    iget-object v2, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest$1;->this$0:Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;

    invoke-static {v2}, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->access$400(Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isEnabled()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getInstance()Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;

    move-result-object p2

    iget-object v2, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest$1;->this$0:Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;

    .line 140
    invoke-static {v2}, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->access$500(Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;)Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getGlossDictionaryFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 142
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 143
    iget-object v2, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest$1;->this$0:Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;

    invoke-virtual {v2}, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->access$600(Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    goto :goto_1

    .line 134
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest$1;->this$0:Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;

    invoke-static {p2}, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->access$300(Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p2

    invoke-static {}, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Abort unzipping as userId has changed / feature turned off"

    invoke-interface {p2, v2, v3}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    new-instance p2, Ljava/io/File;

    iget-object v2, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest$1;->this$0:Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;

    invoke-virtual {v2}, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p2

    if-nez p2, :cond_2

    .line 136
    iget-object p2, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest$1;->this$0:Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;

    invoke-static {p2}, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->access$300(Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p2

    invoke-static {}, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Could not delete gzip file"

    invoke-interface {p2, v2, v3}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_3

    .line 149
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 150
    iget-object v3, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest$1;->this$0:Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;

    invoke-static {v3}, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->access$700(Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;)Z

    move-result v3

    const-string v4, "isChinaUser"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 151
    iget-object v3, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest$1;->this$0:Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;

    invoke-static {v3}, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->access$400(Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "userId"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 152
    iget-object v3, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest$1;->this$0:Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;

    invoke-static {v3}, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->access$500(Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;)Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->getVersionKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest$1;->this$0:Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;

    invoke-static {v4}, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->access$800(Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 153
    iget-object v3, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest$1;->this$0:Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;

    invoke-static {v3}, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->access$500(Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;)Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->getLastPollTimeKey()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 154
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 157
    invoke-static {}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->getInstance()Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->refreshLineSpacingIfPossible()V

    :cond_3
    if-eqz p2, :cond_4

    .line 160
    sget-object v2, Lcom/amazon/kcp/wordwise/download/DownloadStatusType;->DICTIONARY_COMPLETED:Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    goto :goto_2

    :cond_4
    sget-object v2, Lcom/amazon/kcp/wordwise/download/DownloadStatusType;->DICTIONARY_FAILED:Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    .line 163
    :goto_2
    iget-object v3, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest$1;->this$0:Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;

    invoke-static {v3, v2}, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->access$900(Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;Lcom/amazon/kcp/wordwise/download/DownloadStatusType;)V

    .line 165
    iget-object v2, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest$1;->this$0:Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;

    invoke-static {v2}, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->access$500(Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;)Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

    move-result-object v2

    if-eqz p2, :cond_5

    const-string v3, "WordWiseDictionarySuccess"

    goto :goto_3

    :cond_5
    const-string v3, "WordWiseDictionaryFailed"

    :goto_3
    invoke-static {v2, v3}, Lcom/amazon/kcp/wordwise/metrics/WordWiseMetricsHelper;->reportActionByDictionaryType(Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;Ljava/lang/String;)V

    .line 170
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 171
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "WordWiseDictionaryDownloadSuccessRate"

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 173
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "WordWiseDictionaryDownloadTime"

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest$1;->this$0:Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;

    invoke-static {v0}, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->access$500(Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;)Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

    move-result-object v0

    const-string v1, "WordWiseDictionaryDownload"

    invoke-static {v0, v1, v2, v4}, Lcom/amazon/kcp/wordwise/metrics/WordWiseMetricsHelper;->reportEventToPmetByDictionaryType(Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 176
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest$1;->this$0:Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;

    invoke-static {v0}, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->access$000(Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;)Lcom/amazon/kindle/krx/download/IKRXResponseHandler;

    move-result-object v0

    if-eqz v0, :cond_7

    if-eqz p2, :cond_6

    .line 178
    sget-object p2, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->COMPLETED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    goto :goto_4

    :cond_6
    sget-object p2, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->FAILED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    .line 179
    :goto_4
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest$1;->this$0:Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;

    invoke-static {v0}, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->access$000(Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;)Lcom/amazon/kindle/krx/download/IKRXResponseHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/krx/download/IKRXResponseHandler;->onDownloadComplete(ILcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V

    :cond_7
    return-void
.end method

.method public onResponseHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest$1;->this$0:Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;

    invoke-static {v0}, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->access$000(Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;)Lcom/amazon/kindle/krx/download/IKRXResponseHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest$1;->this$0:Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;

    invoke-static {v0}, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;->access$000(Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;)Lcom/amazon/kindle/krx/download/IKRXResponseHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/krx/download/IKRXResponseHandler;->onResponseHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
