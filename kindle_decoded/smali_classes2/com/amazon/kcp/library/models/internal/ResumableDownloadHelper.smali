.class public Lcom/amazon/kcp/library/models/internal/ResumableDownloadHelper;
.super Ljava/lang/Object;
.source "ResumableDownloadHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/amazon/kcp/library/models/internal/ResumableDownloadHelper;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/models/internal/ResumableDownloadHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getToken(Lcom/amazon/system/io/IPersistentSettingsHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 36
    sget-object p0, Lcom/amazon/kcp/library/models/internal/ResumableDownloadHelper;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "trying to get a resumable token when settings is null!"

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 39
    :cond_0
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    sget-object p0, Lcom/amazon/kcp/library/models/internal/ResumableDownloadHelper;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "trying to get a resumable token when filename is null or empty!"

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 44
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "token."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Lcom/amazon/system/io/IPersistentSettingsHelper;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static removeAllPartialDownloadFiles(Lcom/amazon/kindle/io/IFileConnectionFactory;)I
    .locals 3

    .line 91
    new-instance v0, Lcom/amazon/kcp/library/models/BookFileEnumerator;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/models/BookFileEnumerator;-><init>(Lcom/amazon/kindle/io/IFileConnectionFactory;)V

    .line 92
    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/BookFileEnumerator;->listPartialEBooks()Ljava/util/List;

    move-result-object v0

    .line 95
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 96
    invoke-static {p0, v2}, Lcom/amazon/kindle/io/FileSystemHelper;->deleteFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static removeAllTokens(Lcom/amazon/system/io/IPersistentSettingsHelper;)I
    .locals 1

    const-string v0, "token."

    .line 77
    invoke-interface {p0, v0}, Lcom/amazon/system/io/IPersistentSettingsHelper;->removeSettingStartingWith(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static setToken(Lcom/amazon/system/io/IPersistentSettingsHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    .line 59
    sget-object p0, Lcom/amazon/kcp/library/models/internal/ResumableDownloadHelper;->TAG:Ljava/lang/String;

    const-string p1, "Cannot set a resumable download token with a null PersistentSettingsHelper!  Not persisting the token."

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "token."

    if-nez p2, :cond_1

    .line 64
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/amazon/system/io/IPersistentSettingsHelper;->remove(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 66
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/amazon/system/io/IPersistentSettingsHelper;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
