.class public final Lcom/audible/mobile/resource/AssetInputStreamResource;
.super Ljava/lang/Object;
.source "AssetInputStreamResource.java"

# interfaces
.implements Lcom/audible/mobile/resource/InputStreamResource;


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;

.field private final file:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/resource/AssetInputStreamResource;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/audible/mobile/resource/AssetInputStreamResource;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/audible/mobile/resource/AssetInputStreamResource;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/audible/mobile/resource/AssetInputStreamResource;->assetManager:Landroid/content/res/AssetManager;

    .line 32
    iput-object p2, p0, Lcom/audible/mobile/resource/AssetInputStreamResource;->file:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 3

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/resource/AssetInputStreamResource;->assetManager:Landroid/content/res/AssetManager;

    iget-object v1, p0, Lcom/audible/mobile/resource/AssetInputStreamResource;->file:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 40
    sget-object v1, Lcom/audible/mobile/resource/AssetInputStreamResource;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method
