.class public Lcom/amazon/whispersync/communication/serialize/IonObjectMapper;
.super Ljava/lang/Object;
.source "IonObjectMapper.java"


# static fields
.field private static final IGNORABLE_FIELDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ION_MAPPER:Lcom/amazon/whispersync/jacksonion/JoiObjectMapper;

.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;

.field private static volatile sRegisteredModule:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "TComm.IonObjectMapper"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/communication/serialize/IonObjectMapper;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v0, "__type"

    .line 50
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/communication/serialize/IonObjectMapper;->IGNORABLE_FIELDS:Ljava/util/List;

    .line 57
    new-instance v0, Lcom/amazon/whispersync/jacksonion/JoiObjectMapper;

    invoke-direct {v0}, Lcom/amazon/whispersync/jacksonion/JoiObjectMapper;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/communication/serialize/IonObjectMapper;->ION_MAPPER:Lcom/amazon/whispersync/jacksonion/JoiObjectMapper;

    const/4 v0, 0x0

    .line 58
    sput-boolean v0, Lcom/amazon/whispersync/communication/serialize/IonObjectMapper;->sRegisteredModule:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-object v0, Lcom/amazon/whispersync/communication/serialize/IonObjectMapper;->ION_MAPPER:Lcom/amazon/whispersync/jacksonion/JoiObjectMapper;

    monitor-enter v0

    .line 62
    :try_start_0
    sget-object v1, Lcom/amazon/whispersync/communication/serialize/IonObjectMapper;->ION_MAPPER:Lcom/amazon/whispersync/jacksonion/JoiObjectMapper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/jacksonion/JoiObjectMapper;->setCreateBinaryWriters(Z)V

    .line 63
    sget-boolean v1, Lcom/amazon/whispersync/communication/serialize/IonObjectMapper;->sRegisteredModule:Z

    if-nez v1, :cond_0

    .line 64
    new-instance v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/module/SimpleModule;

    const-string v3, "CoralExtension"

    new-instance v4, Lcom/amazon/whispersync/org/codehaus/jackson/Version;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v2, v6, v6, v5}, Lcom/amazon/whispersync/org/codehaus/jackson/Version;-><init>(IIILjava/lang/String;)V

    invoke-direct {v1, v3, v4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/module/SimpleModule;-><init>(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/Version;)V

    .line 68
    const-class v3, Ljava/nio/ByteBuffer;

    new-instance v4, Lcom/amazon/whispersync/communication/serialize/ByteBufferJsonSerializer;

    invoke-direct {v4}, Lcom/amazon/whispersync/communication/serialize/ByteBufferJsonSerializer;-><init>()V

    invoke-virtual {v1, v3, v4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/module/SimpleModule;->addSerializer(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/whispersync/org/codehaus/jackson/map/module/SimpleModule;

    .line 69
    const-class v3, Ljava/nio/ByteBuffer;

    new-instance v4, Lcom/amazon/whispersync/communication/serialize/ByteBufferIonDeserializer;

    invoke-direct {v4}, Lcom/amazon/whispersync/communication/serialize/ByteBufferIonDeserializer;-><init>()V

    invoke-virtual {v1, v3, v4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/module/SimpleModule;->addDeserializer(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/whispersync/org/codehaus/jackson/map/module/SimpleModule;

    .line 71
    sget-object v3, Lcom/amazon/whispersync/communication/serialize/IonObjectMapper;->ION_MAPPER:Lcom/amazon/whispersync/jacksonion/JoiObjectMapper;

    invoke-virtual {v3, v1}, Lcom/amazon/whispersync/jacksonion/JoiObjectMapper;->registerModule(Lcom/amazon/whispersync/org/codehaus/jackson/map/Module;)V

    .line 73
    sget-object v1, Lcom/amazon/whispersync/communication/serialize/IonObjectMapper;->ION_MAPPER:Lcom/amazon/whispersync/jacksonion/JoiObjectMapper;

    invoke-virtual {v1}, Lcom/amazon/whispersync/jacksonion/JoiObjectMapper;->getDeserializationConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v1

    new-instance v3, Lcom/amazon/whispersync/communication/serialize/IonObjectMapper$1;

    invoke-direct {v3, p0}, Lcom/amazon/whispersync/communication/serialize/IonObjectMapper$1;-><init>(Lcom/amazon/whispersync/communication/serialize/IonObjectMapper;)V

    invoke-virtual {v1, v3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->addHandler(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationProblemHandler;)V

    .line 90
    sput-boolean v2, Lcom/amazon/whispersync/communication/serialize/IonObjectMapper;->sRegisteredModule:Z

    .line 92
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .line 45
    sget-object v0, Lcom/amazon/whispersync/communication/serialize/IonObjectMapper;->IGNORABLE_FIELDS:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100()Lcom/amazon/whispersync/dp/logger/DPLogger;
    .locals 1

    .line 45
    sget-object v0, Lcom/amazon/whispersync/communication/serialize/IonObjectMapper;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-object v0
.end method


# virtual methods
.method public deserialize(Ljava/io/InputStream;Lamazon/whispersync/communication/serialize/TypeReference;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Lamazon/whispersync/communication/serialize/TypeReference<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    :try_start_0
    sget-object v0, Lcom/amazon/whispersync/communication/serialize/IonObjectMapper;->ION_MAPPER:Lcom/amazon/whispersync/jacksonion/JoiObjectMapper;

    new-instance v1, Lcom/amazon/whispersync/communication/serialize/IonObjectMapper$2;

    invoke-direct {v1, p0, p2}, Lcom/amazon/whispersync/communication/serialize/IonObjectMapper$2;-><init>(Lcom/amazon/whispersync/communication/serialize/IonObjectMapper;Lamazon/whispersync/communication/serialize/TypeReference;)V

    invoke-virtual {v0, p1, v1}, Lcom/amazon/whispersync/jacksonion/JoiObjectMapper;->readValue(Ljava/io/InputStream;Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 151
    throw p1

    :catch_1
    move-exception p1

    .line 149
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 147
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public deserialize(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    :try_start_0
    sget-object v0, Lcom/amazon/whispersync/communication/serialize/IonObjectMapper;->ION_MAPPER:Lcom/amazon/whispersync/jacksonion/JoiObjectMapper;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/jacksonion/JoiObjectMapper;->readValue(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 128
    throw p1

    :catch_1
    move-exception p1

    .line 126
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 124
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public serialize(Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .line 101
    :try_start_0
    sget-object v0, Lcom/amazon/whispersync/communication/serialize/IonObjectMapper;->ION_MAPPER:Lcom/amazon/whispersync/jacksonion/JoiObjectMapper;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/jacksonion/JoiObjectMapper;->writeValueAsBytes(Ljava/lang/Object;)[B

    move-result-object p1

    .line 103
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1
    :try_end_0
    .catch Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
