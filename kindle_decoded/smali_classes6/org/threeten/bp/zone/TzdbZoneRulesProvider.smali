.class public final Lorg/threeten/bp/zone/TzdbZoneRulesProvider;
.super Lorg/threeten/bp/zone/ZoneRulesProvider;
.source "TzdbZoneRulesProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;
    }
.end annotation


# instance fields
.field private loadedUrls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private regionIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final versions:Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentNavigableMap<",
            "Ljava/lang/String;",
            "Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 87
    invoke-direct {p0}, Lorg/threeten/bp/zone/ZoneRulesProvider;-><init>()V

    .line 73
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/zone/TzdbZoneRulesProvider;->versions:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 78
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/zone/TzdbZoneRulesProvider;->loadedUrls:Ljava/util/Set;

    .line 88
    const-class v0, Lorg/threeten/bp/zone/ZoneRulesProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/threeten/bp/zone/TzdbZoneRulesProvider;->load(Ljava/lang/ClassLoader;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 89
    :cond_0
    new-instance v0, Lorg/threeten/bp/zone/ZoneRulesException;

    const-string v1, "No time-zone rules found for \'TZDB\'"

    invoke-direct {v0, v1}, Lorg/threeten/bp/zone/ZoneRulesException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 121
    invoke-direct {p0}, Lorg/threeten/bp/zone/ZoneRulesProvider;-><init>()V

    .line 73
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/zone/TzdbZoneRulesProvider;->versions:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 78
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/zone/TzdbZoneRulesProvider;->loadedUrls:Ljava/util/Set;

    .line 123
    :try_start_0
    invoke-direct {p0, p1}, Lorg/threeten/bp/zone/TzdbZoneRulesProvider;->load(Ljava/io/InputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 125
    new-instance v0, Lorg/threeten/bp/zone/ZoneRulesException;

    const-string v1, "Unable to load TZDB time-zone rules"

    invoke-direct {v0, v1, p1}, Lorg/threeten/bp/zone/ZoneRulesException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private load(Ljava/io/InputStream;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    .line 213
    invoke-direct {p0, p1}, Lorg/threeten/bp/zone/TzdbZoneRulesProvider;->loadData(Ljava/io/InputStream;)Ljava/lang/Iterable;

    move-result-object p1

    .line 214
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;

    .line 217
    iget-object v1, p0, Lorg/threeten/bp/zone/TzdbZoneRulesProvider;->versions:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-static {v0}, Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;->access$000(Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;

    if-eqz v1, :cond_1

    .line 218
    invoke-static {v1}, Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;->access$000(Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;->access$000(Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 219
    :cond_0
    new-instance p1, Lorg/threeten/bp/zone/ZoneRulesException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data already loaded for TZDB time-zone rules version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;->access$000(Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/threeten/bp/zone/ZoneRulesException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private load(Ljava/lang/ClassLoader;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "org/threeten/bp/TZDB.dat"

    .line 169
    invoke-virtual {p1, v1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p1

    const/4 v1, 0x0

    .line 170
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 172
    :try_start_1
    invoke-direct {p0, v2}, Lorg/threeten/bp/zone/TzdbZoneRulesProvider;->load(Ljava/net/URL;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    or-int/2addr v1, v0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v0, v2

    goto :goto_1

    :cond_0
    return v1

    :catch_1
    move-exception p1

    .line 175
    :goto_1
    new-instance v1, Lorg/threeten/bp/zone/ZoneRulesException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load TZDB time-zone rules: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lorg/threeten/bp/zone/ZoneRulesException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private load(Ljava/net/URL;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;,
            Lorg/threeten/bp/zone/ZoneRulesException;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lorg/threeten/bp/zone/TzdbZoneRulesProvider;->loadedUrls:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 194
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 195
    invoke-direct {p0, v0}, Lorg/threeten/bp/zone/TzdbZoneRulesProvider;->load(Ljava/io/InputStream;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    or-int/2addr v1, p1

    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 200
    :cond_0
    throw p1

    :cond_1
    :goto_0
    return v1
.end method

.method private loadData(Ljava/io/InputStream;)Ljava/lang/Iterable;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/lang/Iterable<",
            "Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    .line 233
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 234
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result p1

    const-string v1, "File format not recognised"

    const/4 v2, 0x1

    if-ne p1, v2, :cond_6

    .line 238
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p1

    const-string v2, "TZDB"

    .line 239
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 243
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result p1

    .line 244
    new-array v1, p1, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_0

    .line 246
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 249
    :cond_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    .line 250
    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_1

    .line 252
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 254
    :cond_1
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/threeten/bp/zone/TzdbZoneRulesProvider;->regionIds:Ljava/util/List;

    .line 256
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    .line 257
    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v3, :cond_2

    .line 259
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v7

    new-array v7, v7, [B

    .line 260
    invoke-virtual {v0, v7}, Ljava/io/DataInputStream;->readFully([B)V

    .line 261
    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 263
    :cond_2
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v3, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>([Ljava/lang/Object;)V

    .line 265
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, p1}, Ljava/util/HashSet;-><init>(I)V

    const/4 v6, 0x0

    :goto_3
    if-ge v6, p1, :cond_4

    .line 267
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v7

    .line 268
    new-array v8, v7, [Ljava/lang/String;

    .line 269
    new-array v9, v7, [S

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v7, :cond_3

    .line 271
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v11

    aget-object v11, v4, v11

    aput-object v11, v8, v10

    .line 272
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v11

    aput-short v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 274
    :cond_3
    new-instance v7, Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;

    aget-object v10, v1, v6

    invoke-direct {v7, v10, v8, v9, v3}, Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;-><init>(Ljava/lang/String;[Ljava/lang/String;[SLjava/util/concurrent/atomic/AtomicReferenceArray;)V

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    return-object v5

    .line 240
    :cond_5
    new-instance p1, Ljava/io/StreamCorruptedException;

    invoke-direct {p1, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 235
    :cond_6
    new-instance p1, Ljava/io/StreamCorruptedException;

    invoke-direct {p1, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected provideRules(Ljava/lang/String;Z)Lorg/threeten/bp/zone/ZoneRules;
    .locals 2

    const-string p2, "zoneId"

    .line 137
    invoke-static {p1, p2}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 138
    iget-object p2, p0, Lorg/threeten/bp/zone/TzdbZoneRulesProvider;->versions:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {p2}, Ljava/util/concurrent/ConcurrentNavigableMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;

    invoke-virtual {p2, p1}, Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;->getRules(Ljava/lang/String;)Lorg/threeten/bp/zone/ZoneRules;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    .line 140
    :cond_0
    new-instance p2, Lorg/threeten/bp/zone/ZoneRulesException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown time-zone ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/threeten/bp/zone/ZoneRulesException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected provideZoneIds()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/threeten/bp/zone/TzdbZoneRulesProvider;->regionIds:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "TZDB"

    return-object v0
.end method
