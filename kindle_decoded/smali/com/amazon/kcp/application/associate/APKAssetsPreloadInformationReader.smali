.class Lcom/amazon/kcp/application/associate/APKAssetsPreloadInformationReader;
.super Ljava/lang/Object;
.source "APKAssetsPreloadInformationReader.java"

# interfaces
.implements Lcom/amazon/kcp/application/associate/PreloadInformationReader;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final result:Lcom/amazon/kcp/application/associate/PreloadInformationResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/amazon/kcp/application/associate/APKAssetsPreloadInformationReader;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/associate/APKAssetsPreloadInformationReader;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1, p2}, Lcom/amazon/kcp/application/associate/APKAssetsPreloadInformationReader;->readPreloadInformation(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kcp/application/associate/PreloadInformationResult;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/application/associate/APKAssetsPreloadInformationReader;->result:Lcom/amazon/kcp/application/associate/PreloadInformationResult;

    return-void
.end method

.method private static readPreloadInformation(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kcp/application/associate/PreloadInformationResult;
    .locals 2

    .line 38
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :try_start_1
    invoke-static {p0}, Lcom/amazon/kcp/application/associate/InputStreamPreloadInformationReader;->read(Ljava/io/InputStream;)Lcom/amazon/kcp/application/associate/PreloadInformationResult;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 40
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    .line 38
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_1

    .line 40
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    :try_start_5
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    nop

    .line 41
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 42
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to open APK asset: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getPreloadInformation()Lcom/amazon/kcp/application/associate/PreloadInformationResult;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/kcp/application/associate/APKAssetsPreloadInformationReader;->result:Lcom/amazon/kcp/application/associate/PreloadInformationResult;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/kcp/application/associate/PreloadInformationResult;

    invoke-direct {v0}, Lcom/amazon/kcp/application/associate/PreloadInformationResult;-><init>()V

    :goto_0
    return-object v0
.end method

.method public getPreloadType()Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/kcp/application/associate/APKAssetsPreloadInformationReader;->result:Lcom/amazon/kcp/application/associate/PreloadInformationResult;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;->APK:Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;->NONE:Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;

    :goto_0
    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/amazon/kcp/application/associate/APKAssetsPreloadInformationReader;->result:Lcom/amazon/kcp/application/associate/PreloadInformationResult;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
