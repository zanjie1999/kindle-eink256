.class public Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;
.super Ljava/lang/Object;
.source "DataMap.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 262
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->mDataMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->putDataMapValue(Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;)V

    return-void
.end method

.method private getDataMapValue(Ljava/lang/String;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;
    .locals 3

    if-eqz p1, :cond_1

    .line 170
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->mDataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;

    if-eqz v0, :cond_0

    return-object v0

    .line 172
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No DataMapValue for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "key can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private putDataMapValue(Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;)V
    .locals 1

    const/4 v0, 0x0

    .line 143
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->putDataMapValue(Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;Z)V

    return-void
.end method

.method private putDataMapValue(Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;Z)V
    .locals 1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-nez p3, :cond_1

    .line 155
    iget-object p3, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->mDataMap:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Value already exists for key: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 159
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->mDataMap:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 152
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "value can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 148
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->mDataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 125
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "key can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 208
    const-class v2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 209
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;

    .line 211
    iget-object v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->mDataMap:Ljava/util/Map;

    .line 212
    iget-object p1, p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->mDataMap:Ljava/util/Map;

    .line 215
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 216
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    return v1

    .line 221
    :cond_3
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 222
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_4

    return v1

    :cond_5
    return v0

    :catch_0
    :cond_6
    :goto_0
    return v1
.end method

.method public getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->getDataMapValue(Ljava/lang/String;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->getBooleanValue()Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public getDataMapForRequest()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/devicesetup/common/DataMapValue;",
            ">;"
        }
    .end annotation

    .line 182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 183
    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->mDataMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 184
    iget-object v3, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->mDataMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;

    .line 185
    new-instance v4, Lcom/amazon/devicesetup/common/DataMapValue;

    invoke-direct {v4}, Lcom/amazon/devicesetup/common/DataMapValue;-><init>()V

    .line 186
    invoke-virtual {v3}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->getStringValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 187
    invoke-virtual {v3}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->getStringValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/amazon/devicesetup/common/DataMapValue;->setStringValue(Ljava/lang/String;)V

    goto :goto_1

    .line 188
    :cond_0
    invoke-virtual {v3}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->getBooleanValue()Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 189
    invoke-virtual {v3}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->getBooleanValue()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/amazon/devicesetup/common/DataMapValue;->setBoolValue(Z)V

    goto :goto_1

    .line 190
    :cond_1
    invoke-virtual {v3}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->getIntegerValue()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 191
    invoke-virtual {v3}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->getIntegerValue()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/amazon/devicesetup/common/DataMapValue;->setIntegerValue(I)V

    goto :goto_1

    .line 192
    :cond_2
    invoke-virtual {v3}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->getBytesValue()[B

    move-result-object v5

    if-eqz v5, :cond_3

    .line 193
    invoke-virtual {v3}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->getBytesValue()[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/amazon/devicesetup/common/DataMapValue;->setBytesValue(Ljava/nio/ByteBuffer;)V

    .line 196
    :cond_3
    :goto_1
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public getMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->mDataMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->getDataMapValue(Ljava/lang/String;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->getStringValue()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 235
    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->mDataMap:Ljava/util/Map;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->mDataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public putAllValuesOverwrite(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;)V
    .locals 3

    .line 111
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->getMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 112
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->putDataMapValue(Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public putBooleanValue(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    .line 95
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;

    invoke-direct {v0, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->putDataMapValue(Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;)V

    return-void
.end method

.method public putIntegerValue(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    .line 79
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;

    invoke-direct {v0, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;-><init>(Ljava/lang/Integer;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->putDataMapValue(Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;)V

    return-void
.end method

.method public putStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 67
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;

    invoke-direct {v0, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->putDataMapValue(Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;)V

    return-void
.end method

.method public putStringValueOverwrite(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 63
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;

    invoke-direct {v0, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->putDataMapValue(Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;Z)V

    return-void
.end method

.method public putValue(Ljava/lang/String;[B)V
    .locals 1

    .line 49
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;

    invoke-direct {v0, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;-><init>([B)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->putDataMapValue(Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 240
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->mDataMap:Ljava/util/Map;

    const-string v2, "mDataMap"

    .line 241
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 242
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    if-eqz p1, :cond_1

    .line 255
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->mDataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->mDataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 257
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 258
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;

    invoke-virtual {v1, p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    return-void

    .line 253
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "dest cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
