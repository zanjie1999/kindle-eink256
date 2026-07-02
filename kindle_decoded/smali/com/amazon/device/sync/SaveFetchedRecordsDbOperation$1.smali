.class Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation$1;
.super Ljava/lang/Object;
.source "SaveFetchedRecordsDbOperation.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;->constructEntryFromRecord(Lcom/amazon/whispersync/Record;)Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;

.field final synthetic val$record:Lcom/amazon/whispersync/Record;


# direct methods
.method constructor <init>(Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;Lcom/amazon/whispersync/Record;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation$1;->this$0:Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;

    iput-object p2, p0, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation$1;->val$record:Lcom/amazon/whispersync/Record;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 215
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 217
    check-cast p1, Ljava/util/Map$Entry;

    .line 218
    invoke-virtual {p0}, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation$1;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation$1;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation$1;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .line 186
    invoke-virtual {p0}, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation$1;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation$1;->val$record:Lcom/amazon/whispersync/Record;

    invoke-virtual {v0}, Lcom/amazon/whispersync/Record;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 186
    invoke-virtual {p0}, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation$1;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation$1;->val$record:Lcom/amazon/whispersync/Record;

    invoke-virtual {v0}, Lcom/amazon/whispersync/Record;->isIsDeleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation$1;->val$record:Lcom/amazon/whispersync/Record;

    invoke-virtual {v0}, Lcom/amazon/whispersync/Record;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 233
    invoke-virtual {p0}, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation$1;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x3d

    mul-int/lit8 v0, v0, 0x3d

    .line 234
    invoke-virtual {p0}, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation$1;->getValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation$1;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 186
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation$1;->setValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 209
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Open the syncableStringMap to change the value."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
