.class Lcom/amazon/appmanager/lib/DefaultPreloadManager;
.super Lcom/amazon/appmanager/lib/PreloadManager;
.source "DefaultPreloadManager.java"


# static fields
.field public static final SIGNATURE_AMAZON:Landroid/content/pm/Signature;


# instance fields
.field private preloadId:Ljava/lang/String;

.field private signaturesAccepted:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private triedGettingPreloadId:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "3082056130820349020601200123ab56300d06092a864886f70d01010b05003074311430120603550408130b4e657661646120433d5553313e303c060355040b13354a617661204f626a656374205369676e696e67204f3d416d617a6f6e205365727669636573204c4c43204c3d4c6173205665676173311c301a06035504031313416d617a6f6e2053656c662d5369676e204341301e170d3039303331333138343132365a170d3333313032333030303030305a3074311430120603550408130b4e657661646120433d5553313e303c060355040b13354a617661204f626a656374205369676e696e67204f3d416d617a6f6e205365727669636573204c4c43204c3d4c6173205665676173311c301a06035504031313416d617a6f6e205365727669636573204c4c4330820222300d06092a864886f70d01010105000382020f003082020a0282020100ac60dafe1c962683e46a6e5b5c2945f0f1a75ef8f268f67994c3841a9366aec784ab1baf7ef8c90e95616272fbc71535a478812f872163e0c07a562c6e5acda475f12ec78212ba395ff90b21bc8c0e4ffc927cbdcec695d91c9c369481a7a230956ff3150f43e5ba307c345558095f52c8d830bfd3b29e0f4c81e7e2cf7154dc1a4ae7b6647a983079256fa507eefada8cab1c59c8220e65feee0c0f46f0c2010df8749d4011508f2ae92d73d4b16247e5f068ce826897ff6fe1986a5f296910ab402f8c9625dedd7acf40ea15f11b012f6fde1569527d7604139d3d7f072a71747c6bf0de03e4fe84fa246a9ce581f483d0922e10225e732e632e98861644bf3b5919927086a2ace441daec6bfa237d9a61ea4a529126f7d55dde74039bad8dbfa1d5c51b9c845f504b24893a2857202b1b6e9cb9f1d0746140b58c4aff193446cd20b1d0346258b33dc8ed6fc454d872e255e8cc6d357cc4483b1473adf20bba5243979b63374ae989d8c11b46a136c698c52558593bd5bbcbbad3b5c42a74a2b91387d03d952dd84090aa033cc36b20b8781713544b2a7049725f745d9d2849c9e0199ff6c27bb002831dbe4183b87caf311852bc4709134417a8f4f4887f02f2c550cfd1bcdf6bfba151aef437e4bb67aa48315224c2052bd6e2d5c2daf533e00e73816885dd30ec16f6b0c5eb5876bb2f619986ba30fbad68139c4c08c70203010001300d06092a864886f70d01010b0500038202010050c9ccc6a3ea540ba5e7a0e9723e1e92d4e250edd32b33b56b3400b9b3a9648c2a830df99040226dd223d64f68088192188f790e0a44db321f487774f119ce9f72528e57b38456b17def3a59353211fa3e3510500359e787e075007f52edf39a45cd376a7b8988910ebefb9b09c2a6ace54526a540ab50bac457e5a45e3f17acc27c2ff7beed697c403fdca64396057e4c3780e21ff47cdba1cb7579ef72ac6c0917d8dad13083d6648ba42a1af8dc5176258ea265f7aa255738a429ea6a4363ca93185fb8ae1774684c3633a6762b22f0582f844fcf4cb6fe266eb986a2ac028e5f7fc8cf99d91ac36a556a4be9ea250fa440a958e2c4f9a05387b333b947ae7a40e107a8d9dd28b327c5645f5e5fbdd114f03770970f6c288bb7c4ce690209b1c44e6839c433c2c3cceb9b2a32c98a33144ed3d323a749dec1d0ecd73e0f1bdc37fffcb89ee2c19b413f8442aeaf2aaaa2272f54ce88653bdcd5c81073f32d07907750ee75b09244c3bbb1653021574289107fb39abe22227b8825cb4fbe469b7aca007b49e3f57716cc96f0f89770254233cb4ef86b3c9d76a79e0401816ed9695c5b4728be2df38455050091a3182968bf02a7cd7a7d16995a2463116c2b76ea722cb550864146c52bebeaa39d9ad32a2da1556dc54e79d7c6a3d16756bf26c7eb499e6e369170b732c67d2ee2377d38e157f440e7c63642d581ea65dd1e"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/appmanager/lib/DefaultPreloadManager;->SIGNATURE_AMAZON:Landroid/content/pm/Signature;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/amazon/appmanager/lib/PreloadManager;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/amazon/appmanager/lib/DefaultPreloadManager;->preloadId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/amazon/appmanager/lib/DefaultPreloadManager;->triedGettingPreloadId:Z

    return-void
.end method

.method private declared-synchronized getPreloadId(Landroid/content/Context;Lcom/amazon/maft/metrics/MetricsFactory;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 97
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/appmanager/lib/DefaultPreloadManager;->triedGettingPreloadId:Z

    if-eqz v0, :cond_0

    .line 98
    iget-object p1, p0, Lcom/amazon/appmanager/lib/DefaultPreloadManager;->preloadId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    const/4 v0, 0x1

    .line 100
    :try_start_1
    iput-boolean v0, p0, Lcom/amazon/appmanager/lib/DefaultPreloadManager;->triedGettingPreloadId:Z

    const-string v1, "com.amazon.appmanager.lib.PreloadManager"

    .line 102
    invoke-interface {p2, v1}, Lcom/amazon/maft/metrics/MetricsFactory;->newPmetMetrics(Ljava/lang/String;)Lcom/amazon/maft/metrics/PmetMetrics;

    move-result-object v1

    .line 103
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    const-string/jumbo v3, "start"

    .line 104
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "com.amazon.appmanager.lib.PreloadManager"

    const/4 v4, 0x0

    .line 107
    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v5, "preload_id"

    const/4 v6, 0x0

    .line 108
    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/amazon/appmanager/lib/DefaultPreloadManager;->preloadId:Ljava/lang/String;

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const-string v4, "first"

    .line 113
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-nez v0, :cond_3

    const-string v7, ""

    .line 116
    iget-object v8, p0, Lcom/amazon/appmanager/lib/DefaultPreloadManager;->preloadId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 118
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/amazon/appmanager/lib/DefaultPreloadManager;->getPreloadIdFromAllSources(Landroid/content/Context;Lcom/amazon/maft/metrics/MetricsFactory;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/appmanager/lib/DefaultPreloadManager;->preloadId:Ljava/lang/String;

    if-nez p2, :cond_4

    .line 121
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string/jumbo v0, "preload_id"

    const-string v3, ""

    invoke-interface {p2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "/"

    .line 126
    invoke-static {p1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v4, v5}, Lcom/amazon/maft/metrics/PmetMetrics;->addCount(Ljava/lang/String;D)Lcom/amazon/maft/metrics/PmetMetrics;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/maft/metrics/PmetMetrics;->record()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    monitor-exit p0

    return-object v6

    .line 131
    :cond_4
    :try_start_2
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string/jumbo v3, "preload_id"

    iget-object v6, p0, Lcom/amazon/appmanager/lib/DefaultPreloadManager;->preloadId:Ljava/lang/String;

    invoke-interface {p2, v3, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-nez v0, :cond_5

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_5
    iget-object p1, p0, Lcom/amazon/appmanager/lib/DefaultPreloadManager;->preloadId:Ljava/lang/String;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "/"

    .line 141
    invoke-static {p1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v4, v5}, Lcom/amazon/maft/metrics/PmetMetrics;->addCount(Ljava/lang/String;D)Lcom/amazon/maft/metrics/PmetMetrics;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/maft/metrics/PmetMetrics;->record()V

    .line 143
    iget-object p1, p0, Lcom/amazon/appmanager/lib/DefaultPreloadManager;->preloadId:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getPreloadIdFromAllSources(Landroid/content/Context;Lcom/amazon/maft/metrics/MetricsFactory;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 158
    invoke-direct {p0, p1, p2}, Lcom/amazon/appmanager/lib/DefaultPreloadManager;->getPreloadIdFromContentProvider(Landroid/content/Context;Lcom/amazon/maft/metrics/MetricsFactory;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 160
    invoke-direct {p0, p1, p2}, Lcom/amazon/appmanager/lib/DefaultPreloadManager;->getPreloadIdFromEmbeddedFile(Landroid/content/Context;Lcom/amazon/maft/metrics/MetricsFactory;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getPreloadIdFromContentProvider(Landroid/content/Context;Lcom/amazon/maft/metrics/MetricsFactory;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "content://com.amazon.appmanager.preload.app_info.provider/%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 185
    :cond_0
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/appmanager/lib/DefaultPreloadManager;->isSignatureValid(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const-string v11, "com.amazon.appmanager.lib.PreloadManager.ERROR"

    if-eqz v0, :cond_3

    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 200
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-nez p2, :cond_1

    return-object v1

    .line 208
    :cond_1
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 209
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p2

    .line 195
    :cond_2
    invoke-interface {p2, v11}, Lcom/amazon/maft/metrics/MetricsFactory;->newPmetMetrics(Ljava/lang/String;)Lcom/amazon/maft/metrics/PmetMetrics;

    move-result-object p1

    const-class p2, Landroid/os/RemoteException;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v9, v10}, Lcom/amazon/maft/metrics/PmetMetrics;->addCount(Ljava/lang/String;D)Lcom/amazon/maft/metrics/PmetMetrics;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/maft/metrics/PmetMetrics;->record()V

    .line 198
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1

    .line 186
    :cond_3
    invoke-interface {p2, v11}, Lcom/amazon/maft/metrics/MetricsFactory;->newPmetMetrics(Ljava/lang/String;)Lcom/amazon/maft/metrics/PmetMetrics;

    move-result-object p1

    const-class p2, Ljava/lang/SecurityException;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v9, v10}, Lcom/amazon/maft/metrics/PmetMetrics;->addCount(Ljava/lang/String;D)Lcom/amazon/maft/metrics/PmetMetrics;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/maft/metrics/PmetMetrics;->record()V

    .line 189
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "ContentProvider package has invalid signature."

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getPreloadIdFromEmbeddedFile(Landroid/content/Context;Lcom/amazon/maft/metrics/MetricsFactory;)Ljava/lang/String;
    .locals 1

    .line 223
    sget v0, Lcom/amazon/appmanager/R$raw;->plm_associate_tag:I

    .line 224
    invoke-static {p1, p2, v0}, Lcom/amazon/appmanager/lib/DefaultPreloadManager;->readStringFromRawResourceFile(Landroid/content/Context;Lcom/amazon/maft/metrics/MetricsFactory;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static readStringFromRawResourceFile(Landroid/content/Context;Lcom/amazon/maft/metrics/MetricsFactory;I)Ljava/lang/String;
    .locals 6

    const-string v0, "com.amazon.appmanager.lib.PreloadManager.ERROR"

    const/4 v1, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 240
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    .line 241
    new-instance p2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 243
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    :goto_0
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 245
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 247
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 248
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v4, :cond_1

    move-object v1, p0

    .line 262
    :cond_1
    :try_start_2
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 264
    invoke-interface {p1, v0}, Lcom/amazon/maft/metrics/MetricsFactory;->newPmetMetrics(Ljava/lang/String;)Lcom/amazon/maft/metrics/PmetMetrics;

    move-result-object p1

    const-class p2, Ljava/io/IOException;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v2, v3}, Lcom/amazon/maft/metrics/PmetMetrics;->addCount(Ljava/lang/String;D)Lcom/amazon/maft/metrics/PmetMetrics;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/maft/metrics/PmetMetrics;->record()V

    .line 267
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catchall_0
    move-exception p0

    move-object v1, p2

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v1, p2

    goto :goto_1

    :catch_2
    move-exception p0

    move-object v1, p2

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_3
    move-exception p0

    .line 255
    :goto_1
    :try_start_3
    invoke-interface {p1, v0}, Lcom/amazon/maft/metrics/MetricsFactory;->newPmetMetrics(Ljava/lang/String;)Lcom/amazon/maft/metrics/PmetMetrics;

    move-result-object p2

    const-class v4, Landroid/content/res/Resources$NotFoundException;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4, v2, v3}, Lcom/amazon/maft/metrics/PmetMetrics;->addCount(Ljava/lang/String;D)Lcom/amazon/maft/metrics/PmetMetrics;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/maft/metrics/PmetMetrics;->record()V

    .line 258
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_4
    move-exception p0

    .line 250
    :goto_2
    invoke-interface {p1, v0}, Lcom/amazon/maft/metrics/MetricsFactory;->newPmetMetrics(Ljava/lang/String;)Lcom/amazon/maft/metrics/PmetMetrics;

    move-result-object p2

    const-class v4, Ljava/io/IOException;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4, v2, v3}, Lcom/amazon/maft/metrics/PmetMetrics;->addCount(Ljava/lang/String;D)Lcom/amazon/maft/metrics/PmetMetrics;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/maft/metrics/PmetMetrics;->record()V

    .line 253
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    if-eqz v1, :cond_2

    .line 262
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_4

    :catch_5
    move-exception p0

    .line 264
    invoke-interface {p1, v0}, Lcom/amazon/maft/metrics/MetricsFactory;->newPmetMetrics(Ljava/lang/String;)Lcom/amazon/maft/metrics/PmetMetrics;

    move-result-object p1

    const-class p2, Ljava/io/IOException;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v2, v3}, Lcom/amazon/maft/metrics/PmetMetrics;->addCount(Ljava/lang/String;D)Lcom/amazon/maft/metrics/PmetMetrics;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/maft/metrics/PmetMetrics;->record()V

    .line 267
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    :goto_4
    throw p0
.end method


# virtual methods
.method public getPreloadAssociateTag(Landroid/content/Context;Lcom/amazon/maft/metrics/MetricsFactory;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/amazon/appmanager/lib/UnrecognizedMarketplaceException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 63
    :try_start_0
    invoke-static {p3}, Lcom/amazon/appmanager/lib/ObfuscatedMarketplaceId;->valueOf(Ljava/lang/String;)Lcom/amazon/appmanager/lib/ObfuscatedMarketplaceId;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/amazon/appmanager/lib/DefaultPreloadManager;->getPreloadId(Landroid/content/Context;Lcom/amazon/maft/metrics/MetricsFactory;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 78
    :cond_0
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-virtual {p3}, Lcom/amazon/appmanager/lib/ObfuscatedMarketplaceId;->toRegionId()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, p1

    const-string p1, "%s-%s"

    invoke-static {p2, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "com.amazon.appmanager.lib.PreloadManager.ERROR"

    .line 66
    invoke-interface {p2, v0}, Lcom/amazon/maft/metrics/MetricsFactory;->newPmetMetrics(Ljava/lang/String;)Lcom/amazon/maft/metrics/PmetMetrics;

    move-result-object p2

    const-string/jumbo v0, "obfuscatedMarketplaceId"

    invoke-interface {p2, v0, p3}, Lcom/amazon/maft/metrics/PmetMetrics;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/maft/metrics/PmetMetrics;

    move-result-object p2

    const-class v0, Lcom/amazon/appmanager/lib/UnrecognizedMarketplaceException;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-interface {p2, v0, v1, v2}, Lcom/amazon/maft/metrics/PmetMetrics;->addCount(Ljava/lang/String;D)Lcom/amazon/maft/metrics/PmetMetrics;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/maft/metrics/PmetMetrics;->record()V

    .line 70
    new-instance p2, Lcom/amazon/appmanager/lib/UnrecognizedMarketplaceException;

    invoke-direct {p2, p3, p1}, Lcom/amazon/appmanager/lib/UnrecognizedMarketplaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected isSignatureValid(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    .line 285
    iget-object v0, p0, Lcom/amazon/appmanager/lib/DefaultPreloadManager;->signaturesAccepted:Ljava/util/Set;

    const/16 v1, 0x40

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 286
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/appmanager/lib/DefaultPreloadManager;->signaturesAccepted:Ljava/util/Set;

    .line 287
    sget-object v3, Lcom/amazon/appmanager/lib/DefaultPreloadManager;->SIGNATURE_AMAZON:Landroid/content/pm/Signature;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 289
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 290
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v0, v4

    .line 291
    iget-object v6, p0, Lcom/amazon/appmanager/lib/DefaultPreloadManager;->signaturesAccepted:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 299
    :catch_0
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 300
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_2

    aget-object v1, p1, v0

    .line 301
    iget-object v3, p0, Lcom/amazon/appmanager/lib/DefaultPreloadManager;->signaturesAccepted:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_1
    :cond_2
    return v2
.end method
