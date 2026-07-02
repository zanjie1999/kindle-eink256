.class public final Lcom/audible/mobile/download/networking/CCDSUrlAwareDownloadHandler;
.super Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;
.source "CCDSUrlAwareDownloadHandler.java"


# instance fields
.field private final deviceType:Lcom/audible/mobile/identity/DeviceType;

.field private final format:Lcom/audible/mobile/domain/Format;

.field private final sample:Z

.field private final urlResolutionStrategy:Lcom/audible/mobile/download/UrlResolutionStrategy;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/download/UrlResolutionStrategy;Lcom/audible/mobile/domain/Format;Lcom/audible/mobile/identity/DeviceType;Z)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;)V

    .line 38
    iput-object p3, p0, Lcom/audible/mobile/download/networking/CCDSUrlAwareDownloadHandler;->format:Lcom/audible/mobile/domain/Format;

    .line 39
    iput-object p4, p0, Lcom/audible/mobile/download/networking/CCDSUrlAwareDownloadHandler;->deviceType:Lcom/audible/mobile/identity/DeviceType;

    .line 40
    iput-boolean p5, p0, Lcom/audible/mobile/download/networking/CCDSUrlAwareDownloadHandler;->sample:Z

    .line 41
    iput-object p2, p0, Lcom/audible/mobile/download/networking/CCDSUrlAwareDownloadHandler;->urlResolutionStrategy:Lcom/audible/mobile/download/UrlResolutionStrategy;

    return-void
.end method


# virtual methods
.method public onReceivedHeaders(ILjava/util/Map;)Lcom/audible/mobile/downloader/interfaces/ServerResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/audible/mobile/downloader/interfaces/ServerResponse;"
        }
    .end annotation

    .line 47
    invoke-super {p0, p1, p2}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->onReceivedHeaders(ILjava/util/Map;)Lcom/audible/mobile/downloader/interfaces/ServerResponse;

    .line 48
    new-instance v7, Lcom/audible/mobile/download/networking/CCDSServerResponse;

    iget-object v1, p0, Lcom/audible/mobile/download/networking/CCDSUrlAwareDownloadHandler;->urlResolutionStrategy:Lcom/audible/mobile/download/UrlResolutionStrategy;

    iget-object v4, p0, Lcom/audible/mobile/download/networking/CCDSUrlAwareDownloadHandler;->format:Lcom/audible/mobile/domain/Format;

    iget-object v5, p0, Lcom/audible/mobile/download/networking/CCDSUrlAwareDownloadHandler;->deviceType:Lcom/audible/mobile/identity/DeviceType;

    iget-boolean v6, p0, Lcom/audible/mobile/download/networking/CCDSUrlAwareDownloadHandler;->sample:Z

    move-object v0, v7

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/audible/mobile/download/networking/CCDSServerResponse;-><init>(Lcom/audible/mobile/download/UrlResolutionStrategy;ILjava/util/Map;Lcom/audible/mobile/domain/Format;Lcom/audible/mobile/identity/DeviceType;Z)V

    return-object v7
.end method
