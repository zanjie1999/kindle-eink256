.class Lcom/amazon/kcp/application/associate/InputStreamPreloadInformationReader;
.super Ljava/lang/Object;
.source "InputStreamPreloadInformationReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/application/associate/InputStreamPreloadInformationReader$RSATagDecrypter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/amazon/kcp/application/associate/InputStreamPreloadInformationReader;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/associate/InputStreamPreloadInformationReader;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createPreloadInformationResultFromInputStream(Ljava/io/InputStream;)Lcom/amazon/kcp/application/associate/PreloadInformationResult;
    .locals 3

    .line 43
    new-instance v0, Lcom/amazon/kcp/application/associate/PreloadInformationResult;

    invoke-direct {v0}, Lcom/amazon/kcp/application/associate/PreloadInformationResult;-><init>()V

    .line 45
    :try_start_0
    invoke-static {p0}, Lcom/amazon/kcp/application/associate/InputStreamPreloadInformationReader;->extractPreloadProperties(Ljava/io/InputStream;)Ljava/util/Properties;

    move-result-object p0

    .line 46
    iput-object p0, v0, Lcom/amazon/kcp/application/associate/PreloadInformationResult;->properties:Ljava/util/Properties;

    const/4 p0, 0x1

    .line 47
    iput-boolean p0, v0, Lcom/amazon/kcp/application/associate/PreloadInformationResult;->success:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 49
    sget-object v1, Lcom/amazon/kcp/application/associate/InputStreamPreloadInformationReader;->TAG:Ljava/lang/String;

    const-string v2, "Unable to read tag file properties stream"

    invoke-static {v1, v2, p0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method private static extractPreloadProperties(Ljava/io/InputStream;)Ljava/util/Properties;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 57
    invoke-virtual {v0, p0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 58
    new-instance p0, Ljava/util/Properties;

    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    .line 59
    new-instance v1, Lcom/amazon/kcp/application/associate/InputStreamPreloadInformationReader$RSATagDecrypter;

    invoke-direct {v1}, Lcom/amazon/kcp/application/associate/InputStreamPreloadInformationReader$RSATagDecrypter;-><init>()V

    .line 60
    invoke-virtual {v0}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 61
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 62
    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/kcp/util/Utils;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazon/kcp/application/associate/InputStreamPreloadInformationReader$RSATagDecrypter;->decryptTag([B)Ljava/lang/String;

    move-result-object v4

    .line 63
    invoke-virtual {p0, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static read(Ljava/io/InputStream;)Lcom/amazon/kcp/application/associate/PreloadInformationResult;
    .locals 0

    .line 38
    invoke-static {p0}, Lcom/amazon/kcp/application/associate/InputStreamPreloadInformationReader;->createPreloadInformationResultFromInputStream(Ljava/io/InputStream;)Lcom/amazon/kcp/application/associate/PreloadInformationResult;

    move-result-object p0

    return-object p0
.end method
