.class public abstract Lcom/amazon/reader/notifications/impl/ChannelsManager;
.super Ljava/lang/Object;
.source "ChannelsManager.java"


# static fields
.field private static final CHANNELS_FILE_ETAG_KEY:Ljava/lang/String; = "channelsFileEtag"

.field private static final CHANNELS_FILE_MODIFIED_KEY:Ljava/lang/String; = "channelsFileLastModified"

.field protected static final CHANNELS_FILE_NAME:Ljava/lang/String; = "notificationChannels.json"

.field private static final ETAG_REQUEST_PROPERTY:Ljava/lang/String; = "If-None-Match"

.field private static final ETAG_RESPONSE_HEADER_KEY:Ljava/lang/String; = "ETag"

.field private static final PREFERENCES_FILE_NAME:Ljava/lang/String; = "Notifications.pref"

.field private static final TAG:Ljava/lang/String; = "ChannelsManager"

.field private static settings:Lcom/amazon/reader/notifications/channel/ChannelSettings;


# instance fields
.field public context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/amazon/reader/notifications/impl/ChannelsManager;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/reader/notifications/impl/ChannelsManager;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1}, Lcom/amazon/reader/notifications/impl/ChannelsManager;->downloadChannelSettings(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized downloadChannelSettings(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "ChannelsManager"

    const-string v1, "Download channel settings"

    .line 186
    invoke-static {v0, v1}, Lcom/amazon/reader/notifications/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/amazon/reader/notifications/impl/ChannelsManager;->context:Landroid/content/Context;

    const-string v1, "notificationChannels.json"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lcom/amazon/reader/notifications/impl/ChannelsManager;->context:Landroid/content/Context;

    const-string v2, "Notifications.pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 190
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "channelsFileLastModified"

    const-wide/16 v4, 0x0

    .line 193
    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v3, "channelsFileEtag"

    const-string v8, ""

    .line 194
    invoke-interface {v1, v3, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 196
    new-instance v3, Ljava/net/URL;

    invoke-virtual {p0, p1}, Lcom/amazon/reader/notifications/impl/ChannelsManager;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 200
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_1

    cmp-long v8, v6, v4

    if-eqz v8, :cond_0

    .line 202
    invoke-virtual {v3, v6, v7}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    .line 204
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "If-None-Match"

    .line 205
    invoke-virtual {v3, v4, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_1
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v4, 0xc8

    if-eq v1, v4, :cond_3

    const/16 v4, 0x130

    if-eq v1, v4, :cond_2

    const-string v1, "ChannelsManager"

    .line 227
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not download channel settings file; S3 returned status code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 227
    invoke-static {v1, v4}, Lcom/amazon/reader/notifications/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "ChannelsManager"

    const-string v4, "Channel settings file has not changed"

    .line 223
    invoke-static {v1, v4}, Lcom/amazon/reader/notifications/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "ChannelsManager"

    const-string v4, "HTTP request was successful; downloading data..."

    .line 211
    invoke-static {v1, v4}, Lcom/amazon/reader/notifications/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 214
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/amazon/reader/notifications/impl/ChannelsManager;->writeToChannelsFile(Ljava/io/InputStream;)V

    const-string v4, "channelsFileLastModified"

    .line 215
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v5

    invoke-interface {v2, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v4, "channelsFileEtag"

    const-string v5, "ETag"

    .line 216
    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 232
    :goto_0
    :try_start_4
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 233
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 234
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 235
    invoke-virtual {p0, p1}, Lcom/amazon/reader/notifications/impl/ChannelsManager;->loadDefaultChannelsFile(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 238
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v4

    .line 218
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 219
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    .line 232
    :try_start_6
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 233
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 234
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    .line 235
    invoke-virtual {p0, p1}, Lcom/amazon/reader/notifications/impl/ChannelsManager;->loadDefaultChannelsFile(Ljava/lang/String;)V

    .line 237
    :cond_5
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private openChannelsFileForReading()Ljava/io/FileInputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/amazon/reader/notifications/impl/ChannelsManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/reader/notifications/debug/ReaderNotificationsDebugMenu;->isGammaEnabled(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "notificationChannels.json"

    const-string v2, "ChannelsManager"

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/amazon/reader/notifications/impl/ChannelsManager;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Looking for channel settings override file at "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/amazon/reader/notifications/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reading channel settings override from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/amazon/reader/notifications/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0

    :cond_0
    const-string v0, "External files dir is unavailable; Was SD card removed??"

    .line 141
    invoke-static {v2, v0}, Lcom/amazon/reader/notifications/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/amazon/reader/notifications/impl/ChannelsManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reading channel settings from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amazon/reader/notifications/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    new-instance v1, Landroidx/core/util/AtomicFile;

    invoke-direct {v1, v0}, Landroidx/core/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 148
    invoke-virtual {v1}, Landroidx/core/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0
.end method

.method private readChannelsFile()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Lcom/amazon/reader/notifications/impl/ChannelsManager;->openChannelsFileForReading()Ljava/io/FileInputStream;

    move-result-object v0

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 104
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 106
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v2, v3

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_1
    if-eqz v2, :cond_1

    .line 111
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 113
    :cond_1
    throw v0
.end method


# virtual methods
.method public downloadChannelSettingsAsynchronously(Ljava/lang/String;)V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/amazon/reader/notifications/impl/ChannelsManager;->context:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "ChannelsManager"

    .line 162
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 165
    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/amazon/reader/notifications/impl/ChannelsManager$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/amazon/reader/notifications/impl/ChannelsManager$1;-><init>(Lcom/amazon/reader/notifications/impl/ChannelsManager;Ljava/lang/String;Landroid/os/PowerManager$WakeLock;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected abstract getUrl(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public declared-synchronized invalidateChannelSettings()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "ChannelsManager"

    const-string v1, "Deleting channel descriptions file..."

    .line 241
    invoke-static {v0, v1}, Lcom/amazon/reader/notifications/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 243
    sput-object v0, Lcom/amazon/reader/notifications/impl/ChannelsManager;->settings:Lcom/amazon/reader/notifications/channel/ChannelSettings;

    .line 245
    iget-object v0, p0, Lcom/amazon/reader/notifications/impl/ChannelsManager;->context:Landroid/content/Context;

    const-string v1, "notificationChannels.json"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ChannelsManager"

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/reader/notifications/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/amazon/reader/notifications/impl/ChannelsManager;->context:Landroid/content/Context;

    const-string v1, "Notifications.pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 253
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "channelsFileLastModified"

    .line 254
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "channelsFileEtag"

    .line 255
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 256
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadChannelSettings()Lcom/amazon/reader/notifications/channel/ChannelSettings;
    .locals 3

    const-string v0, "ChannelsManager"

    .line 78
    sget-object v1, Lcom/amazon/reader/notifications/impl/ChannelsManager;->settings:Lcom/amazon/reader/notifications/channel/ChannelSettings;

    if-nez v1, :cond_0

    .line 80
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/reader/notifications/impl/ChannelsManager;->readChannelsFile()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/reader/notifications/impl/ChannelsParser;->parse(Ljava/lang/String;)Lcom/amazon/reader/notifications/channel/ChannelSettings;

    move-result-object v1

    sput-object v1, Lcom/amazon/reader/notifications/impl/ChannelsManager;->settings:Lcom/amazon/reader/notifications/channel/ChannelSettings;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Generic error while reading channel descriptions file"

    .line 85
    invoke-static {v0, v2, v1}, Lcom/amazon/reader/notifications/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    const-string v1, "Channel descriptions file does not exist or has not been downloaded yet"

    .line 83
    invoke-static {v0, v1}, Lcom/amazon/reader/notifications/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_0
    :goto_0
    sget-object v0, Lcom/amazon/reader/notifications/impl/ChannelsManager;->settings:Lcom/amazon/reader/notifications/channel/ChannelSettings;

    return-object v0
.end method

.method protected abstract loadDefaultChannelsFile(Ljava/lang/String;)V
.end method

.method protected writeToChannelsFile(Ljava/io/InputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/amazon/reader/notifications/impl/ChannelsManager;->context:Landroid/content/Context;

    const-string v1, "notificationChannels.json"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 270
    new-instance v1, Landroidx/core/util/AtomicFile;

    invoke-direct {v1, v0}, Landroidx/core/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 271
    invoke-virtual {v1}, Landroidx/core/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    const/16 v2, 0x2000

    :try_start_0
    new-array v2, v2, [B

    .line 276
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_0

    const/4 v4, 0x0

    .line 277
    invoke-virtual {v0, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 279
    :cond_0
    invoke-virtual {v1, v0}, Landroidx/core/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    const/4 p1, 0x0

    .line 281
    sput-object p1, Lcom/amazon/reader/notifications/impl/ChannelsManager;->settings:Lcom/amazon/reader/notifications/channel/ChannelSettings;

    const-string p1, "ChannelsManager"

    const-string v2, "Channel settings file successfully downloaded"

    .line 282
    invoke-static {p1, v2}, Lcom/amazon/reader/notifications/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 284
    invoke-virtual {v1, v0}, Landroidx/core/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 285
    throw p1
.end method
