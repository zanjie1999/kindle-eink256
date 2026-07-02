.class public Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil;
.super Ljava/lang/Object;
.source "CollectionsJSONUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil$COLLECTION_TYPE;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deserializeCollection(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;)Lcom/amazon/kindle/collections/dto/CollectionDTO;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 76
    invoke-virtual {p0}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {p0}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 85
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-static {v2}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil;->isCollectionSupported(Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string/jumbo v1, "title"

    .line 95
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "sortTitle"

    .line 96
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "language"

    .line 97
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "phoneticTitle"

    .line 99
    invoke-static {v2, v5}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil;->safeGetJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "imported"

    .line 100
    invoke-static {v2, v6}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil;->safeGetJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    .line 111
    new-instance p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/amazon/kindle/collections/dto/CollectionDTO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_1

    .line 114
    invoke-virtual {p0, v5}, Lcom/amazon/kindle/collections/dto/CollectionDTO;->setTitlePronunciation(Ljava/lang/String;)V

    :cond_1
    if-eqz v2, :cond_2

    .line 117
    invoke-virtual {p0, v2}, Lcom/amazon/kindle/collections/dto/CollectionDTO;->setImportFlag(Ljava/lang/String;)V

    :cond_2
    return-object p0

    .line 108
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required fields missing; syncRecord - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecordsUtil;->toLogString(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    .line 102
    sget-object v1, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONException trying to deserialize collection; syncRecord - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-static {p0}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecordsUtil;->toLogString(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 102
    invoke-static {v1, p0, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    throw v0
.end method

.method public static deserializeCollectionItem(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;Lcom/amazon/kcp/library/IBookTypeFactory;)Lcom/amazon/kindle/collections/dto/CollectionItemDTO;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/content/ContentException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 141
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/library/sync/SyncIdentifier;->parse(Landroid/net/Uri;)Lcom/amazon/kcp/library/sync/SyncIdentifier;

    move-result-object v0
    :try_end_0
    .catch Lcom/amazon/kindle/content/ContentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 147
    invoke-static {v0}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil;->isCollectionItemSupported(Lcom/amazon/kcp/library/sync/SyncIdentifier;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 151
    :cond_0
    invoke-static {v0, p1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil;->getCollectionItemId(Lcom/amazon/kcp/library/sync/SyncIdentifier;Lcom/amazon/kcp/library/IBookTypeFactory;)Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-virtual {p0}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 157
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "order"

    .line 162
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 168
    :cond_1
    sget-object v0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sortOrder is null, setting it to default 0.0"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 169
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 176
    :goto_0
    new-instance v1, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;

    invoke-virtual {p0}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->getDataset()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p1, v2, p0, v0}, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)V

    return-object v1

    :catch_0
    move-exception p1

    .line 172
    sget-object v0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSONException trying to deserialize collection item; syncRecord - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    throw p1

    :catch_1
    move-exception p1

    .line 143
    sget-object v0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentException trying to deserialize collection item; syncRecord - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    throw p1
.end method

.method private static getCollectionItemId(Lcom/amazon/kcp/library/sync/SyncIdentifier;Lcom/amazon/kcp/library/IBookTypeFactory;)Ljava/lang/String;
    .locals 4

    .line 233
    invoke-virtual {p0}, Lcom/amazon/kcp/library/sync/SyncIdentifier;->isLocalContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/amazon/kcp/library/sync/SyncIdentifier;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/sync/SyncIdentifier;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-virtual {p0}, Lcom/amazon/kcp/library/sync/SyncIdentifier;->getId()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BOOK"

    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    new-instance p1, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {p1, p0, v0}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    invoke-virtual {p1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v1, "BOOKSAMPLE"

    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 249
    new-instance p1, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {p1, p0, v0}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    invoke-virtual {p1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v1, "DOC"

    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 257
    new-instance p1, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PDOC:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {p1, p0, v0}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    invoke-virtual {p1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v1, "PERIODICAL"

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    .line 264
    invoke-interface {p1, p0}, Lcom/amazon/kcp/library/IBookTypeFactory;->getBookType(Ljava/lang/String;)Lcom/amazon/kcp/library/models/BookType;

    move-result-object p1

    .line 265
    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 266
    new-instance p1, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {p1, p0, v0}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    invoke-virtual {p1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 267
    :cond_4
    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 268
    new-instance p1, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {p1, p0, v0}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    invoke-virtual {p1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 271
    :cond_5
    sget-object p1, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " with content type "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " doesn\'t resolve to any magazine or a newspaper."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-object v2
.end method

.method private static isCollectionItemSupported(Lcom/amazon/kcp/library/sync/SyncIdentifier;)Z
    .locals 2

    .line 209
    invoke-virtual {p0}, Lcom/amazon/kcp/library/sync/SyncIdentifier;->isLocalContent()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/sync/SyncIdentifier;->getContentType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BOOK"

    .line 222
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "BOOKSAMPLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "DOC"

    .line 223
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "PERIODICAL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "AUDIOBOOK"

    .line 224
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "AUDIOBOOKSAMPLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private static isCollectionSupported(Lorg/json/JSONObject;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    :try_start_0
    const-string/jumbo v0, "type"

    .line 193
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    sget-object v0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil$COLLECTION_TYPE;->BOOKS:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil$COLLECTION_TYPE;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 195
    sget-object v0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil;->TAG:Ljava/lang/String;

    const-string v1, "JSONException - "

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    throw p0
.end method

.method private static safeGetJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 181
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static serializeCollection(Lcom/amazon/kindle/collections/dto/ICollection;)Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 50
    invoke-interface {p0}, Lcom/amazon/kindle/collections/dto/ICollection;->getId()Ljava/lang/String;

    move-result-object v0

    .line 52
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "language"

    .line 54
    invoke-interface {p0}, Lcom/amazon/kindle/collections/dto/ICollection;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "phoneticTitle"

    .line 55
    invoke-interface {p0}, Lcom/amazon/kindle/collections/dto/ICollection;->getTitlePronunciation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "sortTitle"

    .line 56
    invoke-interface {p0}, Lcom/amazon/kindle/collections/dto/ICollection;->getSortableTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "title"

    .line 57
    invoke-interface {p0}, Lcom/amazon/kindle/collections/dto/ICollection;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "type"

    .line 58
    sget-object v3, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil$COLLECTION_TYPE;->BOOKS:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil$COLLECTION_TYPE;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "imported"

    .line 59
    invoke-interface {p0}, Lcom/amazon/kindle/collections/dto/ICollection;->getImportFlag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    new-instance p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CollectionEntries"

    invoke-direct {p0, v2, v0, v1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :catch_0
    move-exception v0

    .line 61
    sget-object v1, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONException trying to serialize collection - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    throw v0
.end method

.method public static serializeCollectionForDelete(Ljava/lang/String;)Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;
    .locals 3

    .line 72
    new-instance v0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;

    const-string v1, "CollectionEntries"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static serializeCollectionItem(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 124
    invoke-interface {p0}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getSortOrder()Ljava/lang/Double;

    move-result-object v0

    .line 125
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v2, "order"

    .line 128
    invoke-virtual {v0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    new-instance v0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;

    invoke-interface {p0}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getCollectionId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getSyncId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, p0, v1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception v0

    .line 130
    sget-object v1, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONException trying to serialize collectionItem - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-static {p0}, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->valueOf(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Lcom/amazon/kindle/collections/dto/CollectionItemDTO;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 130
    invoke-static {v1, p0, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    throw v0
.end method
