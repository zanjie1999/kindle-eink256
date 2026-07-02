.class public Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;
.super Ljava/lang/Object;
.source "IdentityResolverBase.java"

# interfaces
.implements Lamazon/whispersync/communication/identity/IdentityResolver;


# static fields
.field protected static final ALLOWED_DOMAINS:[Ljava/lang/String;

.field protected static final IR_FILE_SUFFIX:Ljava/lang/String; = ".txt"

.field public static final IR_MASTER_FILE_NAME:Ljava/lang/String; = "ir-master.txt"

.field public static final OVERRIDE_FILE_NAME:Ljava/lang/String; = "override.txt"

.field private static final SERVICE_ENDPOINT_KEY_DELIMITER:Ljava/lang/String; = "."

.field protected static final WILDCARD:Ljava/lang/String; = "*"

.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# instance fields
.field private mDomain:Ljava/lang/String;

.field protected mJFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

.field private mPath:Ljava/lang/String;

.field private mRealm:Ljava/lang/String;

.field protected mServiceEndpointCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lamazon/whispersync/communication/identity/IRServiceEndpoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "TComm.IdentityResolver"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v0, ".amazon.com"

    .line 47
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->ALLOWED_DOMAINS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->mJFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->mServiceEndpointCache:Ljava/util/Map;

    .line 72
    iput-object p1, p0, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->mPath:Ljava/lang/String;

    return-void
.end method

.method private static buildServiceEndpointKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    .line 328
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getEndpointForServiceNameDomainAndRealm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lamazon/whispersync/communication/identity/IRServiceEndpoint;
    .locals 5

    if-nez p2, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->getDomain()Ljava/lang/String;

    move-result-object p2

    :cond_0
    if-nez p3, :cond_1

    .line 183
    invoke-virtual {p0}, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->getRealm()Ljava/lang/String;

    move-result-object p3

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->mServiceEndpointCache:Ljava/util/Map;

    invoke-static {p1, p2, p3}, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->buildServiceEndpointKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamazon/whispersync/communication/identity/IRServiceEndpoint;

    const-string/jumbo v1, "prod"

    const-string v2, "master"

    if-nez v0, :cond_2

    .line 185
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 187
    iget-object v0, p0, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->mServiceEndpointCache:Ljava/util/Map;

    invoke-static {p1, v1, p3}, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->buildServiceEndpointKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamazon/whispersync/communication/identity/IRServiceEndpoint;

    :cond_2
    const-string v3, "*"

    if-nez v0, :cond_3

    .line 191
    iget-object v0, p0, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->mServiceEndpointCache:Ljava/util/Map;

    invoke-static {p1, p2, v3}, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->buildServiceEndpointKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamazon/whispersync/communication/identity/IRServiceEndpoint;

    :cond_3
    if-nez v0, :cond_4

    .line 193
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 195
    iget-object p2, p0, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->mServiceEndpointCache:Ljava/util/Map;

    invoke-static {p1, v1, v3}, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->buildServiceEndpointKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lamazon/whispersync/communication/identity/IRServiceEndpoint;

    :cond_4
    if-nez v0, :cond_5

    .line 199
    iget-object p2, p0, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->mServiceEndpointCache:Ljava/util/Map;

    invoke-static {p1, v3, p3}, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->buildServiceEndpointKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lamazon/whispersync/communication/identity/IRServiceEndpoint;

    :cond_5
    if-nez v0, :cond_6

    .line 203
    iget-object p2, p0, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->mServiceEndpointCache:Ljava/util/Map;

    invoke-static {p1, v3, v3}, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->buildServiceEndpointKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lamazon/whispersync/communication/identity/IRServiceEndpoint;

    :cond_6
    return-object v0
.end method

.method private verifyValidDomain(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/communication/ir/IRConfigurationException;
        }
    .end annotation

    .line 337
    sget-object v0, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->ALLOWED_DOMAINS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 338
    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 342
    :cond_1
    new-instance v0, Lcom/amazon/whispersync/communication/ir/IRConfigurationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hostname domain is not allowed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/communication/ir/IRConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->mDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getEndpointForServiceName(Ljava/lang/String;)Lamazon/whispersync/communication/identity/IRServiceEndpoint;
    .locals 1

    const/4 v0, 0x0

    .line 173
    invoke-direct {p0, p1, v0, v0}, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->getEndpointForServiceNameDomainAndRealm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lamazon/whispersync/communication/identity/IRServiceEndpoint;

    move-result-object p1

    return-object p1
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->mRealm:Ljava/lang/String;

    return-object v0
.end method

.method public initialize()V
    .locals 18

    move-object/from16 v1, p0

    const-string v2, "file"

    const-string v3, "error closing FileInputStream"

    const-string v4, "error closing override FileInputStream"

    .line 108
    sget-object v0, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "path"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget-object v6, v1, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->mPath:Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const-string v6, "domain"

    const/4 v9, 0x2

    aput-object v6, v5, v9

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->getDomain()Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x3

    aput-object v6, v5, v10

    const/4 v6, 0x4

    const-string/jumbo v11, "realm"

    aput-object v11, v5, v6

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->getRealm()Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x5

    aput-object v6, v5, v11

    const-string v6, "initialize"

    const-string v11, "initializing IdentityResolver map"

    invoke-virtual {v0, v6, v11, v5}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    new-instance v0, Ljava/io/File;

    iget-object v5, v1, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->mPath:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 118
    sget-object v0, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v11, v9, [Ljava/lang/Object;

    const-string v12, "fileList.length"

    aput-object v12, v11, v7

    array-length v12, v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    const-string v12, "found IdentityResolver files"

    invoke-virtual {v0, v6, v12, v11}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    invoke-static {v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 123
    :goto_0
    array-length v0, v5

    const-string/jumbo v14, "override.txt"

    const-string v15, "error parsing file"

    const-string v16, "fileName"

    if-ge v12, v0, :cond_3

    .line 124
    aget-object v0, v5, v12

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    aget-object v13, v5, v12

    .line 126
    sget-object v0, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v14, v7, [Ljava/lang/Object;

    const-string/jumbo v15, "override file found"

    invoke-virtual {v0, v6, v15, v14}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 129
    :cond_0
    aget-object v0, v5, v12

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v14, ".txt"

    invoke-virtual {v0, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    aget-object v0, v5, v12

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v14, "ir-master.txt"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 133
    :try_start_0
    new-instance v14, Ljava/io/FileInputStream;

    aget-object v0, v5, v12

    invoke-direct {v14, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/amazon/whispersync/communication/ir/InvalidIRFileFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :try_start_1
    sget-object v0, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v11, "about to parse file"

    new-array v10, v9, [Ljava/lang/Object;

    aput-object v16, v10, v7

    aget-object v17, v5, v12

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v10, v8

    invoke-virtual {v0, v6, v11, v10}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-object v0, v1, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->mServiceEndpointCache:Ljava/util/Map;

    invoke-virtual {v1, v14, v0}, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->parseConfig(Ljava/io/InputStream;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/amazon/whispersync/communication/ir/InvalidIRFileFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 142
    :try_start_2
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object v10, v0

    .line 144
    sget-object v0, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v11, 0x3

    new-array v14, v11, [Ljava/lang/Object;

    aput-object v2, v14, v7

    aget-object v11, v5, v12

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v14, v8

    aput-object v10, v14, v9

    invoke-virtual {v0, v6, v3, v14}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v4, v0

    const/4 v11, 0x0

    goto/16 :goto_3

    :catch_3
    move-exception v0

    const/4 v14, 0x0

    .line 139
    :goto_1
    :try_start_3
    sget-object v10, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v11, 0x3

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v16, v9, v7

    aget-object v11, v5, v12

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v8

    const/4 v11, 0x2

    aput-object v0, v9, v11

    invoke-virtual {v10, v6, v15, v9}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v14, :cond_2

    .line 142
    :try_start_4
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_5

    :catch_4
    move-exception v0

    move-object v9, v0

    .line 144
    sget-object v0, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v10, 0x3

    new-array v11, v10, [Ljava/lang/Object;

    aput-object v2, v11, v7

    aget-object v10, v5, v12

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v11, v8

    const/4 v10, 0x2

    aput-object v9, v11, v10

    invoke-virtual {v0, v6, v3, v11}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :catch_5
    move-exception v0

    const/4 v14, 0x0

    .line 137
    :goto_2
    :try_start_5
    sget-object v9, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v10, 0x3

    new-array v11, v10, [Ljava/lang/Object;

    aput-object v16, v11, v7

    aget-object v10, v5, v12

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v11, v8

    const/4 v10, 0x2

    aput-object v0, v11, v10

    invoke-virtual {v9, v6, v15, v11}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v14, :cond_2

    .line 142
    :try_start_6
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_5

    :catch_6
    move-exception v0

    move-object v9, v0

    .line 144
    sget-object v0, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v10, 0x3

    new-array v11, v10, [Ljava/lang/Object;

    aput-object v2, v11, v7

    aget-object v10, v5, v12

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v11, v8

    const/4 v10, 0x2

    aput-object v9, v11, v10

    invoke-virtual {v0, v6, v3, v11}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v4, v0

    move-object v11, v14

    :goto_3
    if-eqz v11, :cond_1

    .line 142
    :try_start_7
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_4

    :catch_7
    move-exception v0

    move-object v9, v0

    .line 144
    sget-object v0, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v2, v10, v7

    aget-object v2, v5, v12

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v8

    const/4 v2, 0x2

    aput-object v9, v10, v2

    invoke-virtual {v0, v6, v3, v10}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    :cond_1
    :goto_4
    throw v4

    :cond_2
    :goto_5
    add-int/lit8 v12, v12, 0x1

    const/4 v9, 0x2

    const/4 v10, 0x3

    goto/16 :goto_0

    :cond_3
    if-eqz v13, :cond_5

    .line 154
    :try_start_8
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Lcom/amazon/whispersync/communication/ir/InvalidIRFileFormatException; {:try_start_8 .. :try_end_8} :catch_b
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 155
    :try_start_9
    sget-object v0, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v3, "about to parse override file."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v6, v3, v5}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    iget-object v0, v1, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->mServiceEndpointCache:Ljava/util/Map;

    invoke-virtual {v1, v2, v0}, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->parseConfig(Ljava/io/InputStream;Ljava/util/Map;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Lcom/amazon/whispersync/communication/ir/InvalidIRFileFormatException; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 163
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto/16 :goto_b

    :catch_8
    move-exception v0

    move-object v2, v0

    .line 165
    sget-object v0, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v2, v3, v7

    invoke-virtual {v0, v6, v4, v3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_b

    :catchall_2
    move-exception v0

    move-object v11, v2

    goto :goto_8

    :catch_9
    move-exception v0

    move-object v11, v2

    goto :goto_6

    :catch_a
    move-exception v0

    move-object v11, v2

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v2, v0

    const/4 v11, 0x0

    goto :goto_9

    :catch_b
    move-exception v0

    const/4 v11, 0x0

    .line 160
    :goto_6
    :try_start_b
    sget-object v2, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v16, v3, v7

    aput-object v14, v3, v8

    const/4 v5, 0x2

    aput-object v0, v3, v5

    invoke-virtual {v2, v6, v15, v3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    if-eqz v11, :cond_5

    .line 163
    :try_start_c
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_b

    :catch_c
    move-exception v0

    move-object v2, v0

    .line 165
    sget-object v0, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v2, v3, v7

    invoke-virtual {v0, v6, v4, v3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b

    :catch_d
    move-exception v0

    const/4 v11, 0x0

    .line 158
    :goto_7
    :try_start_d
    sget-object v2, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v16, v3, v7

    aput-object v14, v3, v8

    const/4 v5, 0x2

    aput-object v0, v3, v5

    invoke-virtual {v2, v6, v15, v3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    if-eqz v11, :cond_5

    .line 163
    :try_start_e
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_b

    :catch_e
    move-exception v0

    move-object v2, v0

    .line 165
    sget-object v0, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v2, v3, v7

    invoke-virtual {v0, v6, v4, v3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b

    :catchall_4
    move-exception v0

    :goto_8
    move-object v2, v0

    :goto_9
    if-eqz v11, :cond_4

    .line 163
    :try_start_f
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_a

    :catch_f
    move-exception v0

    move-object v3, v0

    .line 165
    sget-object v0, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v3, v5, v7

    invoke-virtual {v0, v6, v4, v5}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    :cond_4
    :goto_a
    throw v2

    :cond_5
    :goto_b
    return-void

    .line 114
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expecting directory to exist at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " as part of identity resolver setup"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseConfig(Ljava/io/InputStream;Ljava/util/Map;)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lamazon/whispersync/communication/identity/IRServiceEndpoint;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/communication/ir/InvalidIRFileFormatException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "Error closing JsonParser"

    const-string/jumbo v0, "serviceName"

    const-string/jumbo v3, "parseConfig"

    .line 221
    iget-object v4, v1, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->mJFactory:Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;

    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 223
    :try_start_0
    invoke-virtual {v4}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v7

    sget-object v8, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v7, v8, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    invoke-static {v7}, Lcom/amazon/whispersync/dp/utils/FailFast;->expectTrue(Z)V

    .line 225
    invoke-virtual {v4}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v7

    .line 226
    :goto_1
    sget-object v8, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-eq v7, v8, :cond_c

    if-eqz v7, :cond_c

    .line 228
    invoke-virtual {v4}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v7

    .line 229
    sget-object v8, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string/jumbo v9, "parsing JSON for service"

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Object;

    aput-object v0, v11, v6

    aput-object v7, v11, v5

    invoke-virtual {v8, v3, v9, v11}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    invoke-virtual {v4}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    const/4 v8, -0x1

    .line 233
    sget-object v9, Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;->NOT_ALLOWED:Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;

    .line 234
    sget-object v11, Lamazon/whispersync/communication/identity/IRServiceEndpoint$DataCompression;->NOT_NEEDED:Lamazon/whispersync/communication/identity/IRServiceEndpoint$DataCompression;

    .line 235
    sget-object v12, Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;->NOT_ALLOWED:Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;

    const/4 v13, 0x0

    move-object v14, v13

    move-object v15, v14

    .line 238
    :goto_2
    invoke-virtual {v4}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v10

    sget-object v5, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-eq v10, v5, :cond_b

    .line 239
    invoke-virtual {v4}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v5

    const-string v10, "."

    .line 240
    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    move/from16 v17, v8

    .line 241
    invoke-virtual {v5, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v10, v10, 0x1

    .line 242
    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 244
    sget-object v10, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v6, "entry found"

    move-object/from16 v18, v9

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const-string v19, "domain"

    const/16 v20, 0x0

    aput-object v19, v9, v20

    const/16 v16, 0x1

    aput-object v8, v9, v16

    const-string/jumbo v19, "realm"

    const/16 v20, 0x2

    aput-object v19, v9, v20

    const/16 v19, 0x3

    aput-object v5, v9, v19

    invoke-virtual {v10, v3, v6, v9}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    invoke-virtual {v4}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move/from16 v6, v17

    move-object/from16 v9, v18

    .line 247
    :goto_3
    invoke-virtual {v4}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v27, v2

    :try_start_1
    sget-object v2, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-eq v10, v2, :cond_8

    .line 248
    invoke-virtual {v4}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 249
    invoke-virtual {v4}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    const-string v10, "hostname"

    .line 250
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 251
    invoke-virtual {v4}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v13

    .line 252
    invoke-direct {v1, v13}, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->verifyValidDomain(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1
    const-string/jumbo v10, "timeout"

    .line 253
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 254
    invoke-virtual {v4}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getValueAsInt()I

    move-result v6

    goto/16 :goto_4

    :cond_2
    const-string v10, "direct-connection"

    .line 255
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, ">."

    if-eqz v10, :cond_3

    .line 256
    :try_start_2
    invoke-virtual {v4}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 258
    :try_start_3
    invoke-static {v2}, Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;->parse(Ljava/lang/String;)Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;

    move-result-object v9
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    .line 260
    :catch_0
    :try_start_4
    new-instance v0, Lcom/amazon/whispersync/communication/ir/InvalidIRFileFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid direct-connection: <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/communication/ir/InvalidIRFileFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string v10, "data-compression"

    .line 263
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 264
    invoke-virtual {v4}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 266
    :try_start_5
    invoke-static {v2}, Lamazon/whispersync/communication/identity/IRServiceEndpoint$DataCompression;->parse(Ljava/lang/String;)Lamazon/whispersync/communication/identity/IRServiceEndpoint$DataCompression;

    move-result-object v11
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 268
    :catch_1
    :try_start_6
    new-instance v0, Lcom/amazon/whispersync/communication/ir/InvalidIRFileFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid data-compression: <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/communication/ir/InvalidIRFileFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string v10, "clear-text-connection"

    .line 271
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 272
    invoke-virtual {v4}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 274
    :try_start_7
    invoke-static {v2}, Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;->parse(Ljava/lang/String;)Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;

    move-result-object v12
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 276
    :catch_2
    :try_start_8
    new-instance v0, Lcom/amazon/whispersync/communication/ir/InvalidIRFileFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid clear-text-connection: <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/communication/ir/InvalidIRFileFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const-string/jumbo v10, "port"

    .line 279
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 280
    invoke-virtual {v4}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto :goto_4

    :cond_6
    const-string/jumbo v10, "secure-port"

    .line 281
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 282
    invoke-virtual {v4}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    :goto_4
    move-object/from16 v1, p0

    move-object/from16 v2, v27

    goto/16 :goto_3

    .line 284
    :cond_7
    new-instance v0, Lcom/amazon/whispersync/communication/ir/InvalidIRFileFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected field name: <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/communication/ir/InvalidIRFileFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_8
    sget-object v1, Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;->NOT_ALLOWED:Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;

    if-eq v9, v1, :cond_a

    if-nez v13, :cond_9

    .line 290
    sget-object v1, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v2, "no hostname for endpoint"

    const/4 v5, 0x2

    new-array v8, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v8, v5

    const/4 v5, 0x1

    aput-object v7, v8, v5

    invoke-virtual {v1, v3, v2, v8}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v5, p2

    const/4 v10, 0x2

    goto :goto_5

    :cond_9
    if-nez v14, :cond_a

    if-nez v15, :cond_a

    .line 294
    sget-object v1, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v2, "no insecure or secure port for endpoint"

    const/4 v10, 0x2

    new-array v5, v10, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v5, v8

    const/4 v8, 0x1

    aput-object v7, v5, v8

    invoke-virtual {v1, v3, v2, v5}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v5, p2

    goto :goto_5

    :cond_a
    const/4 v10, 0x2

    .line 298
    new-instance v1, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;

    move-object/from16 v17, v1

    move-object/from16 v18, v13

    move-object/from16 v19, v8

    move-object/from16 v20, v5

    move-object/from16 v21, v9

    move-object/from16 v22, v11

    move-object/from16 v23, v12

    move/from16 v24, v6

    move-object/from16 v25, v14

    move-object/from16 v26, v15

    invoke-direct/range {v17 .. v26}, Lcom/amazon/whispersync/communication/ir/IRServiceEndpointImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;Lamazon/whispersync/communication/identity/IRServiceEndpoint$DataCompression;Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;ILjava/lang/Integer;Ljava/lang/Integer;)V

    .line 302
    invoke-static {v7, v8, v5}, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->buildServiceEndpointKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v5, p2

    .line 303
    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    const/4 v5, 0x1

    move-object/from16 v1, p0

    move v8, v6

    move-object/from16 v2, v27

    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_b
    move-object/from16 v5, p2

    move-object/from16 v27, v2

    .line 226
    invoke-virtual {v4}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object/from16 v1, v27

    goto :goto_7

    :cond_c
    move-object/from16 v27, v2

    .line 308
    :try_start_9
    invoke-virtual {v4}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 310
    sget-object v0, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v1, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_6
    return-void

    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v2, v0

    .line 308
    :goto_7
    :try_start_a
    invoke-virtual {v4}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    move-object v4, v0

    .line 310
    sget-object v0, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-virtual {v0, v3, v1, v5}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    :goto_8
    throw v2
.end method

.method public resolveServiceEndpoint(Lamazon/whispersync/communication/identity/ServiceIdentity;)Lamazon/whispersync/communication/identity/IRServiceEndpoint;
    .locals 2

    .line 178
    invoke-virtual {p1}, Lamazon/whispersync/communication/identity/ServiceIdentity;->getServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lamazon/whispersync/communication/identity/ServiceIdentity;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lamazon/whispersync/communication/identity/ServiceIdentity;->getRealm()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->getEndpointForServiceNameDomainAndRealm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lamazon/whispersync/communication/identity/IRServiceEndpoint;

    move-result-object p1

    return-object p1
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->mDomain:Ljava/lang/String;

    return-void
.end method

.method public setRealm(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/amazon/whispersync/communication/ir/IdentityResolverBase;->mRealm:Ljava/lang/String;

    return-void
.end method
