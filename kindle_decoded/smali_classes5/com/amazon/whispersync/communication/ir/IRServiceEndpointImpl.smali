.class public Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;
.super Ljava/lang/Object;
.source "IRServiceEndpointImpl.java"

# interfaces
.implements Lamazon/whispersync/communication/identity/IRServiceEndpoint;


# static fields
.field private static final WHITE_LISTED_DOMAINS:[Ljava/lang/String;

.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;

.field private static sJsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;


# instance fields
.field private final mClearTextConnection:Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;

.field private final mDataCompression:Lamazon/whispersync/communication/identity/IRServiceEndpoint$DataCompression;

.field private final mDirectConnection:Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;

.field private final mDomain:Ljava/lang/String;

.field private final mHostname:Ljava/lang/String;

.field private final mPort:Ljava/lang/Integer;

.field private final mRealm:Ljava/lang/String;

.field private final mSecurePort:Ljava/lang/Integer;

.field private final mTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "TComm.IRServiceEndpointImpl"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v0, ".amazon.com"

    const-string v1, ".amazon.co.uk"

    .line 30
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->WHITE_LISTED_DOMAINS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;ILjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 10

    .line 83
    sget-object v5, Lamazon/whispersync/communication/identity/IRServiceEndpoint$DataCompression;->NOT_NEEDED:Lamazon/whispersync/communication/identity/IRServiceEndpoint$DataCompression;

    sget-object v6, Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;->ALLOWED:Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;Lamazon/whispersync/communication/identity/IRServiceEndpoint$DataCompression;Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;ILjava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;Lamazon/whispersync/communication/identity/IRServiceEndpoint$DataCompression;Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;ILjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mHostname:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mDomain:Ljava/lang/String;

    .line 97
    iput-object p3, p0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mRealm:Ljava/lang/String;

    .line 98
    iput p7, p0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mTimeout:I

    .line 99
    iput-object p4, p0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mDirectConnection:Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;

    .line 100
    iput-object p5, p0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mDataCompression:Lamazon/whispersync/communication/identity/IRServiceEndpoint$DataCompression;

    .line 101
    iput-object p6, p0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mClearTextConnection:Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;

    .line 102
    iput-object p8, p0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mPort:Ljava/lang/Integer;

    .line 103
    iput-object p9, p0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mSecurePort:Ljava/lang/Integer;

    return-void
.end method

.method private static declared-synchronized getJsonFactory()Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;
    .locals 2

    const-class v0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;

    monitor-enter v0

    .line 414
    :try_start_0
    sget-object v1, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->sJsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    if-nez v1, :cond_0

    .line 415
    new-instance v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    invoke-direct {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;-><init>()V

    sput-object v1, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->sJsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    .line 417
    :cond_0
    sget-object v1, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->sJsonFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lamazon/whispersync/communication/identity/IRServiceEndpoint;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/communication/ir/InvalidIRFileFormatException;
        }
    .end annotation

    move-object/from16 v0, p2

    const-string v11, "IOException closing JsonParser"

    .line 291
    sget-object v1, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "domain"

    const/4 v12, 0x0

    aput-object v3, v2, v12

    const/4 v13, 0x1

    aput-object p0, v2, v13

    const-string v3, "json"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const-string/jumbo v14, "parse"

    const-string v3, "getting service endpoint"

    invoke-virtual {v1, v14, v3, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_13

    .line 293
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_13

    if-eqz p1, :cond_12

    .line 297
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_12

    if-eqz v0, :cond_11

    .line 301
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_11

    .line 306
    invoke-static {}, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->getJsonFactory()Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    move-result-object v15

    .line 310
    sget-object v0, Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;->NOT_ALLOWED:Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;

    .line 311
    sget-object v1, Lamazon/whispersync/communication/identity/IRServiceEndpoint$DataCompression;->NOT_NEEDED:Lamazon/whispersync/communication/identity/IRServiceEndpoint$DataCompression;

    .line 312
    sget-object v2, Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;->NOT_ALLOWED:Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;

    .line 317
    :try_start_0
    invoke-virtual {v15}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    const/4 v3, 0x0

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v2, v3

    move-object v9, v2

    move-object v10, v9

    .line 319
    :goto_0
    invoke-virtual {v15}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v8, "port"

    if-eq v0, v1, :cond_7

    .line 320
    :try_start_1
    invoke-virtual {v15}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 321
    invoke-virtual {v15}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    const-string v1, "hostname"

    .line 322
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    invoke-virtual {v15}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "timeout"

    .line 324
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 325
    invoke-virtual {v15}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getValueAsInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_1
    const-string v1, "direct-connection"

    .line 326
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string/jumbo v16, "tmp"

    if-eqz v1, :cond_2

    .line 327
    :try_start_2
    invoke-virtual {v15}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 329
    :try_start_3
    invoke-static {v1}, Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;->parse(Ljava/lang/String;)Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 331
    :try_start_4
    new-instance v0, Lcom/amazon/whispersync/communication/ir/InvalidIRFileFormatException;

    const-string v3, "invalid direct-connection"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v16, v4, v12

    aput-object v1, v4, v13

    invoke-static {v14, v3, v4}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->toDPFormat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/amazon/whispersync/communication/ir/InvalidIRFileFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    const-string v1, "data-compression"

    .line 334
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 335
    invoke-virtual {v15}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 337
    :try_start_5
    invoke-static {v1}, Lamazon/whispersync/communication/identity/IRServiceEndpoint$DataCompression;->parse(Ljava/lang/String;)Lamazon/whispersync/communication/identity/IRServiceEndpoint$DataCompression;

    move-result-object v6
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 339
    :try_start_6
    invoke-virtual {v15}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->close()V

    .line 340
    new-instance v0, Lcom/amazon/whispersync/communication/ir/InvalidIRFileFormatException;

    const-string v3, "invalid data-compression"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v16, v4, v12

    aput-object v1, v4, v13

    invoke-static {v14, v3, v4}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->toDPFormat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/amazon/whispersync/communication/ir/InvalidIRFileFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    const-string v1, "clear-text-connection"

    .line 343
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 344
    invoke-virtual {v15}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 346
    :try_start_7
    invoke-static {v1}, Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;->parse(Ljava/lang/String;)Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;

    move-result-object v7
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 348
    :try_start_8
    new-instance v0, Lcom/amazon/whispersync/communication/ir/InvalidIRFileFormatException;

    const-string v3, "invalid clear-text-connection"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v16, v4, v12

    aput-object v1, v4, v13

    invoke-static {v14, v3, v4}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->toDPFormat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/amazon/whispersync/communication/ir/InvalidIRFileFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 351
    :cond_4
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 352
    invoke-virtual {v15}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v1, "secure-port"

    .line 353
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 354
    invoke-virtual {v15}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto/16 :goto_0

    .line 356
    :cond_6
    new-instance v1, Lcom/amazon/whispersync/communication/ir/InvalidIRFileFormatException;

    const-string v2, "invalid field"

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "fieldName"

    aput-object v4, v3, v12

    aput-object v0, v3, v13

    invoke-static {v14, v2, v3}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->toDPFormat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/amazon/whispersync/communication/ir/InvalidIRFileFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 361
    :cond_7
    sget-object v0, Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;->NOT_ALLOWED:Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;

    invoke-virtual {v5, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    if-eqz v2, :cond_e

    .line 362
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_e

    if-nez v9, :cond_9

    if-eqz v10, :cond_8

    goto :goto_1

    .line 367
    :cond_8
    new-instance v0, Lcom/amazon/whispersync/communication/ir/InvalidIRFileFormatException;

    const-string v1, "neither insecure nor secure port defined"

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {v14, v1, v2}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->toDPFormat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/communication/ir/InvalidIRFileFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_1
    if-eqz v9, :cond_b

    .line 370
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_a

    goto :goto_2

    .line 371
    :cond_a
    new-instance v0, Lcom/amazon/whispersync/communication/ir/InvalidIRFileFormatException;

    const-string v1, "insecure port must be positive"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v8, v2, v12

    aput-object v9, v2, v13

    invoke-static {v14, v1, v2}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->toDPFormat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/communication/ir/InvalidIRFileFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_2
    if-eqz v10, :cond_d

    .line 374
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_c

    goto :goto_3

    .line 375
    :cond_c
    new-instance v0, Lcom/amazon/whispersync/communication/ir/InvalidIRFileFormatException;

    const-string/jumbo v1, "secure port must be positive"

    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "securePort"

    aput-object v3, v2, v12

    aput-object v9, v2, v13

    invoke-static {v14, v1, v2}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->toDPFormat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/communication/ir/InvalidIRFileFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_d
    :goto_3
    invoke-static {v2}, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->verifyHostname(Ljava/lang/String;)V

    goto :goto_4

    .line 363
    :cond_e
    new-instance v0, Lcom/amazon/whispersync/communication/ir/InvalidIRFileFormatException;

    const-string v1, "hostname is null or empty"

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {v14, v1, v2}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->toDPFormat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/communication/ir/InvalidIRFileFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    :goto_4
    if-eqz v3, :cond_10

    .line 387
    new-instance v16, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 v1, v16

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v10}, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;Lamazon/whispersync/communication/identity/IRServiceEndpoint$DataCompression;Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;ILjava/lang/Integer;Ljava/lang/Integer;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 391
    :try_start_9
    invoke-virtual {v15}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 393
    sget-object v0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v2, v13, [Ljava/lang/Object;

    aput-object v1, v2, v12

    invoke-virtual {v0, v14, v11, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_5
    return-object v16

    .line 383
    :cond_10
    :try_start_a
    new-instance v0, Lcom/amazon/whispersync/communication/ir/InvalidIRFileFormatException;

    const-string/jumbo v1, "timeout is null"

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {v14, v1, v2}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->toDPFormat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/communication/ir/InvalidIRFileFormatException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 391
    :try_start_b
    invoke-virtual {v15}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    move-object v2, v0

    .line 393
    sget-object v0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v3, v13, [Ljava/lang/Object;

    aput-object v2, v3, v12

    invoke-virtual {v0, v14, v11, v3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    :goto_6
    throw v1

    .line 302
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v12, [Ljava/lang/Object;

    const-string v2, "json is null or empty"

    invoke-static {v14, v2, v1}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->toDPFormat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v12, [Ljava/lang/Object;

    const-string/jumbo v2, "realm is null or empty"

    invoke-static {v14, v2, v1}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->toDPFormat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v12, [Ljava/lang/Object;

    const-string v2, "domain is null or empty"

    invoke-static {v14, v2, v1}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->toDPFormat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static verifyHostname(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/communication/ir/IRConfigurationException;
        }
    .end annotation

    .line 399
    sget-object v0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->WHITE_LISTED_DOMAINS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 400
    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 405
    :cond_1
    new-instance v0, Lcom/amazon/whispersync/communication/ir/IRConfigurationException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "hostname"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string/jumbo p0, "verifyHostname"

    const-string v2, "domain is not white listed"

    invoke-static {p0, v2, v1}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->toDPFormat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/communication/ir/IRConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 167
    :cond_1
    instance-of v2, p1, Lamazon/whispersync/communication/identity/IRServiceEndpoint;

    if-eqz v2, :cond_13

    .line 168
    check-cast p1, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;

    .line 169
    iget-object v2, p0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mHostname:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 170
    iget-object v2, p1, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mHostname:Ljava/lang/String;

    if-eqz v2, :cond_3

    return v1

    .line 173
    :cond_2
    iget-object v3, p1, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mHostname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 176
    :cond_3
    iget-object v2, p0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mDomain:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 177
    iget-object v2, p1, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mDomain:Ljava/lang/String;

    if-eqz v2, :cond_5

    return v1

    .line 180
    :cond_4
    iget-object v3, p1, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mDomain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 183
    :cond_5
    iget-object v2, p0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mRealm:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 184
    iget-object v2, p1, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mRealm:Ljava/lang/String;

    if-eqz v2, :cond_7

    return v1

    .line 187
    :cond_6
    iget-object v3, p1, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mRealm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 190
    :cond_7
    iget v2, p0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mTimeout:I

    iget v3, p1, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mTimeout:I

    if-eq v2, v3, :cond_8

    return v1

    .line 193
    :cond_8
    iget-object v2, p0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mDirectConnection:Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;

    if-nez v2, :cond_9

    .line 194
    iget-object v2, p1, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mDirectConnection:Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;

    if-eqz v2, :cond_a

    return v1

    .line 197
    :cond_9
    iget-object v3, p1, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mDirectConnection:Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 200
    :cond_a
    iget-object v2, p0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mDataCompression:Lamazon/whispersync/communication/identity/IRServiceEndpoint$DataCompression;

    if-nez v2, :cond_b

    .line 201
    iget-object v2, p1, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mDataCompression:Lamazon/whispersync/communication/identity/IRServiceEndpoint$DataCompression;

    if-eqz v2, :cond_c

    return v1

    .line 204
    :cond_b
    iget-object v3, p1, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mDataCompression:Lamazon/whispersync/communication/identity/IRServiceEndpoint$DataCompression;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 207
    :cond_c
    iget-object v2, p0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mClearTextConnection:Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;

    if-nez v2, :cond_d

    .line 208
    iget-object v2, p1, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mClearTextConnection:Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;

    if-eqz v2, :cond_e

    return v1

    .line 211
    :cond_d
    iget-object v3, p1, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mClearTextConnection:Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 214
    :cond_e
    iget-object v2, p0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mPort:Ljava/lang/Integer;

    if-nez v2, :cond_f

    .line 215
    iget-object v2, p1, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mPort:Ljava/lang/Integer;

    if-eqz v2, :cond_10

    return v1

    .line 218
    :cond_f
    iget-object v3, p1, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mPort:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    return v1

    .line 221
    :cond_10
    iget-object v2, p0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mSecurePort:Ljava/lang/Integer;

    if-nez v2, :cond_11

    .line 222
    iget-object p1, p1, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mSecurePort:Ljava/lang/Integer;

    if-eqz p1, :cond_12

    return v1

    .line 225
    :cond_11
    iget-object p1, p1, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mSecurePort:Ljava/lang/Integer;

    invoke-virtual {v2, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    return v1

    :cond_12
    return v0

    :cond_13
    return v1
.end method

.method public getClearTextConnection()Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mClearTextConnection:Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;

    return-object v0
.end method

.method public getDataCompression()Lamazon/whispersync/communication/identity/IRServiceEndpoint$DataCompression;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mDataCompression:Lamazon/whispersync/communication/identity/IRServiceEndpoint$DataCompression;

    return-object v0
.end method

.method public getDirectConnection()Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mDirectConnection:Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getHostname()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mHostname:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()Ljava/lang/Integer;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mPort:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mRealm:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurePort()Ljava/lang/Integer;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mSecurePort:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mTimeout:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 239
    iget-object v0, p0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mHostname:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    .line 240
    iget-object v3, p0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mDomain:Ljava/lang/String;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x25

    .line 241
    iget-object v3, p0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mRealm:Ljava/lang/String;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x25

    .line 242
    iget v3, p0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mTimeout:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x25

    .line 243
    iget-object v3, p0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mDirectConnection:Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Enum;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x25

    .line 244
    iget-object v3, p0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mDataCompression:Lamazon/whispersync/communication/identity/IRServiceEndpoint$DataCompression;

    if-nez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Enum;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x25

    .line 245
    iget-object v3, p0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mClearTextConnection:Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;

    if-nez v3, :cond_5

    const/4 v3, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Enum;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x25

    .line 246
    iget-object v3, p0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mPort:Ljava/lang/Integer;

    if-nez v3, :cond_6

    const/4 v3, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x25

    .line 247
    iget-object v2, p0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mSecurePort:Ljava/lang/Integer;

    if-nez v2, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_7
    add-int/2addr v0, v1

    return v0
.end method

.method public toResolvedUri(Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;)Ljava/lang/String;
    .locals 5

    .line 253
    invoke-virtual {p0}, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->getHostname()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 260
    iget-object v0, p0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mClearTextConnection:Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;

    sget-object v1, Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;->NOT_ALLOWED:Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 261
    :goto_0
    sget-object v1, Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;->WSS:Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;

    if-eq p1, v1, :cond_2

    sget-object v1, Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;->HTTPS:Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-nez v0, :cond_4

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v0, 0x1

    :goto_4
    if-eqz v0, :cond_5

    .line 266
    sget-object v1, Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;->WS:Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;

    if-ne p1, v1, :cond_5

    .line 267
    sget-object v1, Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;->WSS:Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;

    goto :goto_5

    :cond_5
    move-object v1, p1

    :goto_5
    if-eqz v0, :cond_6

    .line 269
    sget-object v4, Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;->HTTP:Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;

    if-ne p1, v4, :cond_6

    .line 270
    sget-object v1, Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;->HTTPS:Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;

    :cond_6
    if-eqz v0, :cond_7

    .line 273
    invoke-virtual {p0}, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->getSecurePort()Ljava/lang/Integer;

    move-result-object p1

    goto :goto_6

    :cond_7
    invoke-virtual {p0}, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->getPort()Ljava/lang/Integer;

    move-result-object p1

    :goto_6
    if-nez p1, :cond_9

    .line 276
    new-instance p1, Lcom/amazon/whispersync/communication/ir/IRConfigurationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create URI. No "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_8

    const-string/jumbo v0, "secure "

    goto :goto_7

    :cond_8
    const-string v0, ""

    :goto_7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "port defined in IR config"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amazon/whispersync/communication/ir/IRConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 280
    invoke-virtual {v1}, Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0}, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->getHostname()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string p1, "%s://%s:%d"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 254
    :cond_a
    new-instance p1, Lcom/amazon/whispersync/communication/ir/IRConfigurationException;

    const-string v0, "Cannot create URI. No hostname defined in IR config"

    invoke-direct {p1, v0}, Lcom/amazon/whispersync/communication/ir/IRConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service Endpoint on domain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mRealm:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mHostname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - Direct connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mDirectConnection:Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", - Data compression "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mDataCompression:Lamazon/whispersync/communication/identity/IRServiceEndpoint$DataCompression;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", - Clear text connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mClearTextConnection:Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;->mTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " timeout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
