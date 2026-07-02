.class final Lcom/amazon/discovery/Discovery;
.super Ljava/lang/Object;
.source "Discovery.java"


# static fields
.field private static discoveryProvider:Lcom/amazon/discovery/DiscoveryProvider;


# direct methods
.method static createDefaultDiscoveryProvider()Lcom/amazon/discovery/DiscoveryProvider;
    .locals 3

    .line 73
    invoke-static {}, Lcom/amazon/discovery/DiscoveryLoader;->getInputStreamProvider()Lcom/amazon/discovery/DiscoveryLoader$InputStreamProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/discovery/DiscoveryLoader$InputStreamProvider;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :try_start_1
    invoke-static {v1}, Lcom/amazon/discovery/DiscoveryProvider;->loadMappings(Ljava/io/Reader;)Lcom/amazon/discovery/DiscoveryProvider;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 75
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    .line 77
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    .line 78
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Error loading default discovery mappings"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static declared-synchronized getDiscoveryProvider()Lcom/amazon/discovery/DiscoveryProvider;
    .locals 3

    const-class v0, Lcom/amazon/discovery/Discovery;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lcom/amazon/discovery/Discovery;->discoveryProvider:Lcom/amazon/discovery/DiscoveryProvider;

    if-nez v1, :cond_1

    .line 57
    invoke-static {}, Lcom/amazon/discovery/Discovery;->createDefaultDiscoveryProvider()Lcom/amazon/discovery/DiscoveryProvider;

    move-result-object v1

    sput-object v1, Lcom/amazon/discovery/Discovery;->discoveryProvider:Lcom/amazon/discovery/DiscoveryProvider;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error creating default discovery provider, mappings do not exist"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_1
    :goto_0
    sget-object v1, Lcom/amazon/discovery/Discovery;->discoveryProvider:Lcom/amazon/discovery/DiscoveryProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
