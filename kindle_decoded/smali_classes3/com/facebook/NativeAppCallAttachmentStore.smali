.class public final Lcom/facebook/NativeAppCallAttachmentStore;
.super Ljava/lang/Object;
.source "NativeAppCallAttachmentStore.java"

# interfaces
.implements Lcom/facebook/NativeAppCallContentProvider$AttachmentDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/NativeAppCallAttachmentStore$ProcessAttachment;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.facebook.NativeAppCallAttachmentStore"

.field private static attachmentsDirectory:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addAttachments(Landroid/content/Context;Ljava/util/UUID;Ljava/util/Map;Lcom/facebook/NativeAppCallAttachmentStore$ProcessAttachment;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/util/UUID;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;",
            "Lcom/facebook/NativeAppCallAttachmentStore$ProcessAttachment<",
            "TT;>;)V"
        }
    .end annotation

    .line 117
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 122
    :cond_0
    sget-object v0, Lcom/facebook/NativeAppCallAttachmentStore;->attachmentsDirectory:Ljava/io/File;

    if-nez v0, :cond_1

    .line 123
    invoke-virtual {p0, p1}, Lcom/facebook/NativeAppCallAttachmentStore;->cleanupAllAttachments(Landroid/content/Context;)V

    .line 126
    :cond_1
    invoke-virtual {p0, p1}, Lcom/facebook/NativeAppCallAttachmentStore;->ensureAttachmentsDirectoryExists(Landroid/content/Context;)Ljava/io/File;

    .line 128
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 131
    :try_start_0
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 132
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 133
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    .line 135
    invoke-virtual {p0, p2, v1, v2}, Lcom/facebook/NativeAppCallAttachmentStore;->getAttachmentFile(Ljava/util/UUID;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    .line 136
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-interface {p4, v0, v1}, Lcom/facebook/NativeAppCallAttachmentStore$ProcessAttachment;->processAttachment(Ljava/lang/Object;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-void

    :catch_0
    move-exception p2

    .line 141
    sget-object p3, Lcom/facebook/NativeAppCallAttachmentStore;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Got unexpected exception:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/io/File;

    .line 144
    :try_start_1
    invoke-virtual {p3}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    goto :goto_1

    .line 149
    :cond_3
    new-instance p1, Lcom/facebook/FacebookException;

    invoke-direct {p1, p2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method static declared-synchronized getAttachmentsDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    const-class v0, Lcom/facebook/NativeAppCallAttachmentStore;

    monitor-enter v0

    .line 186
    :try_start_0
    sget-object v1, Lcom/facebook/NativeAppCallAttachmentStore;->attachmentsDirectory:Ljava/io/File;

    if-nez v1, :cond_0

    .line 187
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v2, "com.facebook.NativeAppCallAttachmentStore.files"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/facebook/NativeAppCallAttachmentStore;->attachmentsDirectory:Ljava/io/File;

    .line 189
    :cond_0
    sget-object p0, Lcom/facebook/NativeAppCallAttachmentStore;->attachmentsDirectory:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public addAttachmentFilesForCall(Landroid/content/Context;Ljava/util/UUID;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/UUID;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    .line 89
    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callId"

    .line 90
    invoke-static {p2, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "imageAttachmentFiles"

    invoke-static {v0, v1}, Lcom/facebook/internal/Validate;->containsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V

    .line 92
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/facebook/internal/Validate;->containsNoNullOrEmpty(Ljava/util/Collection;Ljava/lang/String;)V

    .line 94
    new-instance v0, Lcom/facebook/NativeAppCallAttachmentStore$2;

    invoke-direct {v0, p0}, Lcom/facebook/NativeAppCallAttachmentStore$2;-><init>(Lcom/facebook/NativeAppCallAttachmentStore;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/NativeAppCallAttachmentStore;->addAttachments(Landroid/content/Context;Ljava/util/UUID;Ljava/util/Map;Lcom/facebook/NativeAppCallAttachmentStore$ProcessAttachment;)V

    return-void
.end method

.method public addAttachmentsForCall(Landroid/content/Context;Ljava/util/UUID;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/UUID;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    .line 60
    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callId"

    .line 61
    invoke-static {p2, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "imageAttachments"

    invoke-static {v0, v1}, Lcom/facebook/internal/Validate;->containsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V

    .line 63
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/facebook/internal/Validate;->containsNoNullOrEmpty(Ljava/util/Collection;Ljava/lang/String;)V

    .line 65
    new-instance v0, Lcom/facebook/NativeAppCallAttachmentStore$1;

    invoke-direct {v0, p0}, Lcom/facebook/NativeAppCallAttachmentStore$1;-><init>(Lcom/facebook/NativeAppCallAttachmentStore;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/NativeAppCallAttachmentStore;->addAttachments(Landroid/content/Context;Ljava/util/UUID;Ljava/util/Map;Lcom/facebook/NativeAppCallAttachmentStore$ProcessAttachment;)V

    return-void
.end method

.method cleanupAllAttachments(Landroid/content/Context;)V
    .locals 0

    .line 225
    invoke-static {p1}, Lcom/facebook/NativeAppCallAttachmentStore;->getAttachmentsDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    .line 226
    invoke-static {p1}, Lcom/facebook/internal/Utility;->deleteDirectory(Ljava/io/File;)V

    return-void
.end method

.method public cleanupAttachmentsForCall(Landroid/content/Context;Ljava/util/UUID;)V
    .locals 0

    const/4 p1, 0x0

    .line 165
    invoke-virtual {p0, p2, p1}, Lcom/facebook/NativeAppCallAttachmentStore;->getAttachmentsDirectoryForCall(Ljava/util/UUID;Z)Ljava/io/File;

    move-result-object p1

    .line 166
    invoke-static {p1}, Lcom/facebook/internal/Utility;->deleteDirectory(Ljava/io/File;)V

    return-void
.end method

.method ensureAttachmentsDirectoryExists(Landroid/content/Context;)Ljava/io/File;
    .locals 0

    .line 193
    invoke-static {p1}, Lcom/facebook/NativeAppCallAttachmentStore;->getAttachmentsDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    .line 194
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    return-object p1
.end method

.method getAttachmentFile(Ljava/util/UUID;Ljava/lang/String;Z)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    invoke-virtual {p0, p1, p3}, Lcom/facebook/NativeAppCallAttachmentStore;->getAttachmentsDirectoryForCall(Ljava/util/UUID;Z)Ljava/io/File;

    move-result-object p1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    return-object p3

    .line 217
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "UTF-8"

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object p3
.end method

.method getAttachmentsDirectoryForCall(Ljava/util/UUID;Z)Ljava/io/File;
    .locals 2

    .line 199
    sget-object v0, Lcom/facebook/NativeAppCallAttachmentStore;->attachmentsDirectory:Ljava/io/File;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 203
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/facebook/NativeAppCallAttachmentStore;->attachmentsDirectory:Ljava/io/File;

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 204
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 205
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    return-object v0
.end method

.method public openAttachment(Ljava/util/UUID;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 171
    invoke-static {p2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 177
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/NativeAppCallAttachmentStore;->getAttachmentFile(Ljava/util/UUID;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 181
    :catch_0
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    throw p1

    .line 173
    :cond_0
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    throw p1
.end method
