.class public Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;
.super Ljava/lang/Object;
.source "SyncRecord.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private dataset:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->dataset:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->key:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 47
    :cond_1
    instance-of v2, p1, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;

    if-nez v2, :cond_2

    return v0

    .line 51
    :cond_2
    check-cast p1, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;

    .line 53
    iget-object v2, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->dataset:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->dataset:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->key:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->key:Ljava/lang/String;

    .line 54
    invoke-static {v2, v3}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_4

    return v2

    .line 69
    :cond_4
    :try_start_0
    iget-object v2, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->dataset:Ljava/lang/String;

    const-string v3, "CollectionEntries"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 70
    invoke-static {p0}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil;->deserializeCollection(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;)Lcom/amazon/kindle/collections/dto/CollectionDTO;

    move-result-object v0

    .line 71
    invoke-static {p1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil;->deserializeCollection(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;)Lcom/amazon/kindle/collections/dto/CollectionDTO;

    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/collections/dto/CollectionDTO;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_1

    .line 74
    :cond_5
    iget-object v2, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->key:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->key:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    .line 75
    invoke-static {p0, v2}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil;->deserializeCollectionItem(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;Lcom/amazon/kcp/library/IBookTypeFactory;)Lcom/amazon/kindle/collections/dto/CollectionItemDTO;

    move-result-object v3

    .line 76
    invoke-static {p1, v2}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil;->deserializeCollectionItem(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;Lcom/amazon/kcp/library/IBookTypeFactory;)Lcom/amazon/kindle/collections/dto/CollectionItemDTO;

    move-result-object v2

    .line 75
    invoke-virtual {v3, v2}, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Lcom/amazon/kindle/content/ContentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    :cond_6
    move p1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 84
    sget-object v1, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->TAG:Ljava/lang/String;

    const-string v2, "JSONException when performing equals on SyncRecord objects: "

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    iget-object v0, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->value:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->value:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 80
    sget-object v1, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->TAG:Ljava/lang/String;

    const-string v2, "ContentException when performing equals on SyncRecord objects: "

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    iget-object v0, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->value:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->value:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    :goto_1
    return p1
.end method

.method public getDataset()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->dataset:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->dataset:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x24d

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x13

    .line 97
    iget-object v0, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->key:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v2, v1

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[dataset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->dataset:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
