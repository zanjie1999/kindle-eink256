.class public Lcom/amazon/kindle/cms/ipc/VerbExtrasInfo;
.super Ljava/lang/Object;
.source "VerbExtrasInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/amazon/kindle/cms/api/VerbExtrasInterface;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/kindle/cms/ipc/VerbExtrasInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CmsApi.VerbExtrasInfo"


# instance fields
.field private final m_extrasInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final m_sourceName:Ljava/lang/String;

.field private final m_startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/amazon/kindle/cms/ipc/VerbExtrasInfo$1;

    invoke-direct {v0}, Lcom/amazon/kindle/cms/ipc/VerbExtrasInfo$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/cms/ipc/VerbExtrasInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-wide p1, p0, Lcom/amazon/kindle/cms/ipc/VerbExtrasInfo;->m_startTime:J

    .line 42
    iput-object p3, p0, Lcom/amazon/kindle/cms/ipc/VerbExtrasInfo;->m_sourceName:Ljava/lang/String;

    .line 43
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/cms/ipc/VerbExtrasInfo;->m_extrasInfo:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kindle/cms/ipc/VerbExtrasInfo;->m_startTime:J

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/cms/ipc/VerbExtrasInfo;->m_sourceName:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 93
    invoke-static {p1}, Lcom/amazon/kindle/cms/ipc/VerbExtrasInfo;->deserializeExtrasInfo(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/cms/ipc/VerbExtrasInfo;->m_extrasInfo:Ljava/util/Map;

    return-void
.end method

.method private static deserializeExtrasInfo(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 143
    invoke-static {p0}, Lcom/amazon/ebook/util/text/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 145
    new-instance v1, Landroid/util/JsonReader;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 148
    :try_start_0
    invoke-virtual {v1}, Landroid/util/JsonReader;->beginObject()V

    .line 149
    :goto_0
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 151
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p0

    .line 152
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {v1}, Landroid/util/JsonReader;->endObject()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    invoke-static {v1}, Lcom/amazon/kindle/cms/ipc/VerbExtrasInfo;->quietlyClose(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string v0, "CmsApi.VerbExtrasInfo"

    const-string v2, "Unable to convert json to verb extras"

    .line 159
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    invoke-static {v1}, Lcom/amazon/kindle/cms/ipc/VerbExtrasInfo;->quietlyClose(Ljava/io/Closeable;)V

    return-object p0

    :goto_1
    invoke-static {v1}, Lcom/amazon/kindle/cms/ipc/VerbExtrasInfo;->quietlyClose(Ljava/io/Closeable;)V

    throw p0

    :cond_1
    :goto_2
    return-object v0
.end method

.method private static quietlyClose(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 177
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static serializeExtrasInfo(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 98
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 108
    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 111
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v5, v4

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    goto :goto_0

    .line 116
    :cond_1
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3, v2}, Ljava/io/StringWriter;-><init>(I)V

    .line 117
    new-instance v2, Landroid/util/JsonWriter;

    invoke-direct {v2, v3}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 119
    :try_start_1
    invoke-virtual {v2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 120
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 122
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_1

    .line 124
    :cond_2
    invoke-virtual {v2}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 126
    invoke-virtual {v2}, Landroid/util/JsonWriter;->flush()V

    .line 127
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    invoke-static {v2}, Lcom/amazon/kindle/cms/ipc/VerbExtrasInfo;->quietlyClose(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_3

    :catch_0
    move-exception p0

    move-object v0, v2

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    :goto_2
    :try_start_2
    const-string v2, "CmsApi.VerbExtrasInfo"

    const-string v3, "Unable to convert verb extras into json"

    .line 131
    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 136
    invoke-static {v0}, Lcom/amazon/kindle/cms/ipc/VerbExtrasInfo;->quietlyClose(Ljava/io/Closeable;)V

    return-object v1

    :goto_3
    invoke-static {v0}, Lcom/amazon/kindle/cms/ipc/VerbExtrasInfo;->quietlyClose(Ljava/io/Closeable;)V

    throw p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getStartTime()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/amazon/kindle/cms/ipc/VerbExtrasInfo;->m_startTime:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 82
    iget-wide v0, p0, Lcom/amazon/kindle/cms/ipc/VerbExtrasInfo;->m_startTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 83
    iget-object p2, p0, Lcom/amazon/kindle/cms/ipc/VerbExtrasInfo;->m_sourceName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object p2, p0, Lcom/amazon/kindle/cms/ipc/VerbExtrasInfo;->m_extrasInfo:Ljava/util/Map;

    invoke-static {p2}, Lcom/amazon/kindle/cms/ipc/VerbExtrasInfo;->serializeExtrasInfo(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
