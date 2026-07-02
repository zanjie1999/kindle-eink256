.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;
.super Ljava/lang/Object;
.source "ObjectWriter.java"

# interfaces
.implements Lcom/amazon/whispersync/org/codehaus/jackson/Versioned;


# static fields
.field protected static final NULL_PRETTY_PRINTER:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;


# instance fields
.field protected final _config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

.field protected final _jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

.field protected final _prettyPrinter:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

.field protected final _provider:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;

.field protected final _rootType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

.field protected final _schema:Lcom/amazon/whispersync/org/codehaus/jackson/FormatSchema;

.field protected final _serializerFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/util/MinimalPrettyPrinter;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/MinimalPrettyPrinter;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->NULL_PRETTY_PRINTER:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    .line 115
    iget-object p2, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializerProvider:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;

    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_provider:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;

    .line 116
    iget-object p2, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;

    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;

    .line 117
    iget-object p1, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    const/4 p1, 0x0

    .line 119
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_rootType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    .line 120
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_prettyPrinter:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

    .line 121
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_schema:Lcom/amazon/whispersync/org/codehaus/jackson/FormatSchema;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/FormatSchema;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    .line 134
    iget-object p2, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializerProvider:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;

    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_provider:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;

    .line 135
    iget-object p2, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;

    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;

    .line 136
    iget-object p1, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    const/4 p1, 0x0

    .line 138
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_rootType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    .line 139
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_prettyPrinter:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

    .line 140
    iput-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_schema:Lcom/amazon/whispersync/org/codehaus/jackson/FormatSchema;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    .line 97
    iget-object p2, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializerProvider:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;

    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_provider:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;

    .line 98
    iget-object p2, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;

    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;

    .line 99
    iget-object p1, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    .line 101
    iput-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_rootType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    .line 102
    iput-object p4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_prettyPrinter:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

    const/4 p1, 0x0

    .line 103
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_schema:Lcom/amazon/whispersync/org/codehaus/jackson/FormatSchema;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;)V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    .line 169
    iget-object p2, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_provider:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;

    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_provider:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;

    .line 170
    iget-object p2, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;

    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;

    .line 171
    iget-object p2, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    .line 172
    iget-object p2, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_schema:Lcom/amazon/whispersync/org/codehaus/jackson/FormatSchema;

    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_schema:Lcom/amazon/whispersync/org/codehaus/jackson/FormatSchema;

    .line 174
    iget-object p2, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_rootType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_rootType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    .line 175
    iget-object p1, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_prettyPrinter:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_prettyPrinter:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;Lcom/amazon/whispersync/org/codehaus/jackson/FormatSchema;)V
    .locals 0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    .line 151
    iget-object p2, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_provider:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;

    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_provider:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;

    .line 152
    iget-object p2, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;

    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;

    .line 153
    iget-object p1, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    .line 155
    iput-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_rootType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    .line 156
    iput-object p4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_prettyPrinter:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

    .line 157
    iput-object p5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_schema:Lcom/amazon/whispersync/org/codehaus/jackson/FormatSchema;

    return-void
.end method

.method private final _configAndWriteCloseable(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 481
    move-object v0, p2

    check-cast v0, Ljava/io/Closeable;

    const/4 v1, 0x0

    .line 483
    :try_start_0
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_rootType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    if-nez v2, :cond_0

    .line 484
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_provider:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;

    iget-object v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v2, p3, p1, p2, v3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->serializeValue(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;)V

    goto :goto_0

    .line 486
    :cond_0
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_provider:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;

    iget-object v6, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_rootType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    iget-object v7, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->serializeValue(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;)V

    .line 489
    :goto_0
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_schema:Lcom/amazon/whispersync/org/codehaus/jackson/FormatSchema;

    if-eqz p2, :cond_1

    .line 490
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_schema:Lcom/amazon/whispersync/org/codehaus/jackson/FormatSchema;

    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->setSchema(Lcom/amazon/whispersync/org/codehaus/jackson/FormatSchema;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 494
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 497
    :try_start_2
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    move-object p1, v1

    move-object v0, p1

    goto :goto_1

    :catchall_1
    move-exception p2

    move-object p1, v1

    goto :goto_1

    :catchall_2
    move-exception p2

    :goto_1
    if-eqz p1, :cond_2

    .line 504
    :try_start_3
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    nop

    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    .line 509
    :try_start_4
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 510
    :catch_1
    :cond_3
    throw p2
.end method

.method private final _writeCloseableValue(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 522
    move-object v0, p2

    check-cast v0, Ljava/io/Closeable;

    .line 524
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_rootType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    if-nez v1, :cond_0

    .line 525
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_provider:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v1, p3, p1, p2, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->serializeValue(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;)V

    goto :goto_0

    .line 527
    :cond_0
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_provider:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;

    iget-object v5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_rootType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    iget-object v6, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->serializeValue(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;)V

    .line 529
    :goto_0
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    sget-object p3, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;->FLUSH_AFTER_WRITE_VALUE:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 530
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_1
    const/4 p1, 0x0

    .line 534
    :try_start_1
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    move-object v0, p1

    move-object p1, p2

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v0, :cond_2

    .line 538
    :try_start_2
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 539
    :catch_0
    :cond_2
    throw p1
.end method


# virtual methods
.method protected final _configAndWriteValue(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 438
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_prettyPrinter:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_1

    .line 440
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->NULL_PRETTY_PRINTER:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->setPrettyPrinter(Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;

    goto :goto_0

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;->INDENT_OUTPUT:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 442
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->useDefaultPrettyPrinter()Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;

    .line 445
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_schema:Lcom/amazon/whispersync/org/codehaus/jackson/FormatSchema;

    if-eqz v0, :cond_3

    .line 446
    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->setSchema(Lcom/amazon/whispersync/org/codehaus/jackson/FormatSchema;)V

    .line 449
    :cond_3
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;->CLOSE_CLOSEABLE:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_4

    instance-of v0, p2, Ljava/io/Closeable;

    if-eqz v0, :cond_4

    .line 450
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_configAndWriteCloseable(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;)V

    return-void

    :cond_4
    const/4 v0, 0x0

    .line 455
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_rootType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    if-nez v1, :cond_5

    .line 456
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_provider:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    iget-object v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v1, v2, p1, p2, v3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->serializeValue(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;)V

    goto :goto_1

    .line 458
    :cond_5
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_provider:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    iget-object v5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_rootType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    iget-object v6, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->serializeValue(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;)V

    :goto_1
    const/4 v0, 0x1

    .line 461
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    if-nez v0, :cond_6

    .line 468
    :try_start_1
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 469
    :catch_0
    :cond_6
    throw p2
.end method

.method public canSerialize(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 422
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_provider:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v0, v1, p1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->hasSerializerFor(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;)Z

    move-result p1

    return p1
.end method

.method public version()Lcom/amazon/whispersync/org/codehaus/jackson/Version;
    .locals 1

    .line 186
    const-class v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;

    invoke-static {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/VersionUtil;->versionFor(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/Version;

    move-result-object v0

    return-object v0
.end method

.method public withDateFormat(Ljava/text/DateFormat;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->withDateFormat(Ljava/text/DateFormat;)Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    move-result-object p1

    .line 300
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 303
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;)V

    return-object v0
.end method

.method public withDefaultPrettyPrinter()Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;
    .locals 1

    .line 262
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/DefaultPrettyPrinter;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->withPrettyPrinter(Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;

    move-result-object v0

    return-object v0
.end method

.method public withFilters(Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/FilterProvider;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->getFilterProvider()Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/FilterProvider;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 276
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->withFilters(Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/FilterProvider;)Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;)V

    return-object v0
.end method

.method public withPrettyPrinter(Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;
    .locals 6

    .line 244
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_prettyPrinter:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 249
    sget-object p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->NULL_PRETTY_PRINTER:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

    :cond_1
    move-object v4, p1

    .line 251
    new-instance p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    iget-object v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_rootType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    iget-object v5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_schema:Lcom/amazon/whispersync/org/codehaus/jackson/FormatSchema;

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;Lcom/amazon/whispersync/org/codehaus/jackson/FormatSchema;)V

    return-object p1
.end method

.method public withSchema(Lcom/amazon/whispersync/org/codehaus/jackson/FormatSchema;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;
    .locals 7

    .line 284
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_schema:Lcom/amazon/whispersync/org/codehaus/jackson/FormatSchema;

    if-ne v0, p1, :cond_0

    return-object p0

    .line 287
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;

    iget-object v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    iget-object v4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_rootType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    iget-object v5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_prettyPrinter:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

    move-object v1, v0

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;Lcom/amazon/whispersync/org/codehaus/jackson/FormatSchema;)V

    return-object v0
.end method

.method public withType(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;
    .locals 7

    .line 213
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_rootType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 215
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;

    iget-object v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    iget-object v5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_prettyPrinter:Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;

    iget-object v6, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_schema:Lcom/amazon/whispersync/org/codehaus/jackson/FormatSchema;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/PrettyPrinter;Lcom/amazon/whispersync/org/codehaus/jackson/FormatSchema;)V

    return-object v0
.end method

.method public withType(Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference<",
            "*>;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;->getTypeFactory()Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->withType(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;

    move-result-object p1

    return-object p1
.end method

.method public withType(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->withType(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;

    move-result-object p1

    return-object p1
.end method

.method public withView(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->getSerializationView()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 203
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->withView(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;)V

    return-object v0
.end method

.method public writeValue(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;->CLOSE_CLOSEABLE:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p2, Ljava/io/Closeable;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_writeCloseableValue(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;)V

    goto :goto_1

    .line 322
    :cond_0
    iget-object v5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_rootType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    if-nez v5, :cond_1

    .line 323
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_provider:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->serializeValue(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;)V

    goto :goto_0

    .line 325
    :cond_1
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_provider:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    iget-object v6, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->serializeValue(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;)V

    .line 327
    :goto_0
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;

    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;->FLUSH_AFTER_WRITE_VALUE:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 328
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->flush()V

    :cond_2
    :goto_1
    return-void
.end method

.method public writeValue(Ljava/io/File;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 346
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonEncoding;->UTF8:Lcom/amazon/whispersync/org/codehaus/jackson/JsonEncoding;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/File;Lcom/amazon/whispersync/org/codehaus/jackson/JsonEncoding;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_configAndWriteValue(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    return-void
.end method

.method public writeValue(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonEncoding;->UTF8:Lcom/amazon/whispersync/org/codehaus/jackson/JsonEncoding;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;Lcom/amazon/whispersync/org/codehaus/jackson/JsonEncoding;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_configAndWriteValue(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    return-void
.end method

.method public writeValue(Ljava/io/Writer;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/Writer;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_configAndWriteValue(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    return-void
.end method

.method public writeValueAsBytes(Ljava/lang/Object;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 407
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->_getBufferRecycler()Lcom/amazon/whispersync/org/codehaus/jackson/util/BufferRecycler;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/util/BufferRecycler;)V

    .line 408
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    sget-object v2, Lcom/amazon/whispersync/org/codehaus/jackson/JsonEncoding;->UTF8:Lcom/amazon/whispersync/org/codehaus/jackson/JsonEncoding;

    invoke-virtual {v1, v0, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;Lcom/amazon/whispersync/org/codehaus/jackson/JsonEncoding;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_configAndWriteValue(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    .line 409
    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object p1

    .line 410
    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->release()V

    return-object p1
.end method

.method public writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 392
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/io/SegmentedStringWriter;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->_getBufferRecycler()Lcom/amazon/whispersync/org/codehaus/jackson/util/BufferRecycler;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/io/SegmentedStringWriter;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/util/BufferRecycler;)V

    .line 393
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    invoke-virtual {v1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/Writer;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectWriter;->_configAndWriteValue(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    .line 394
    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/io/SegmentedStringWriter;->getAndClear()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
