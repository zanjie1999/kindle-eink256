.class Lcom/audible/mobile/activation/AudibleDeviceTokenAuthenticatedActivation$ActivationRequestHandler;
.super Lcom/audible/mobile/downloader/handler/InMemoryDownloadHandler;
.source "AudibleDeviceTokenAuthenticatedActivation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/activation/AudibleDeviceTokenAuthenticatedActivation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivationRequestHandler"
.end annotation


# static fields
.field private static final logger:Lorg/slf4j/Logger;

.field private static final parser:Lcom/audible/mobile/activation/network/parser/ActivationParser;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final activationDataRepository:Lcom/audible/mobile/activation/ActivationDataRepository;

.field private final listener:Lcom/audible/mobile/activation/ActivationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 105
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/activation/AudibleDeviceTokenAuthenticatedActivation$ActivationRequestHandler;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/audible/mobile/activation/AudibleDeviceTokenAuthenticatedActivation$ActivationRequestHandler;->logger:Lorg/slf4j/Logger;

    .line 106
    new-instance v0, Lcom/audible/mobile/activation/network/parser/ActivationParser;

    invoke-direct {v0}, Lcom/audible/mobile/activation/network/parser/ActivationParser;-><init>()V

    sput-object v0, Lcom/audible/mobile/activation/AudibleDeviceTokenAuthenticatedActivation$ActivationRequestHandler;->parser:Lcom/audible/mobile/activation/network/parser/ActivationParser;

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/activation/ActivationListener;Lcom/audible/mobile/activation/ActivationDataRepository;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Lcom/audible/mobile/downloader/handler/InMemoryDownloadHandler;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/audible/mobile/activation/AudibleDeviceTokenAuthenticatedActivation$ActivationRequestHandler;->listener:Lcom/audible/mobile/activation/ActivationListener;

    .line 114
    iput-object p2, p0, Lcom/audible/mobile/activation/AudibleDeviceTokenAuthenticatedActivation$ActivationRequestHandler;->activationDataRepository:Lcom/audible/mobile/activation/ActivationDataRepository;

    return-void
.end method


# virtual methods
.method public onError(Lcom/audible/mobile/downloader/NetworkError;Lcom/audible/mobile/downloader/NetworkErrorException;)V
    .locals 0

    .line 151
    invoke-super {p0, p1, p2}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->onError(Lcom/audible/mobile/downloader/NetworkError;Lcom/audible/mobile/downloader/NetworkErrorException;)V

    .line 152
    iget-object p2, p0, Lcom/audible/mobile/activation/AudibleDeviceTokenAuthenticatedActivation$ActivationRequestHandler;->listener:Lcom/audible/mobile/activation/ActivationListener;

    invoke-interface {p2, p1}, Lcom/audible/mobile/activation/ActivationListener;->onNetworkError(Lcom/audible/mobile/downloader/NetworkError;)V

    return-void
.end method

.method public onFinished()V
    .locals 3

    .line 121
    sget-object v0, Lcom/audible/mobile/activation/AudibleDeviceTokenAuthenticatedActivation$ActivationRequestHandler;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lcom/audible/mobile/downloader/handler/InMemoryDownloadHandler;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Response was {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    invoke-super {p0}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->onFinished()V

    .line 124
    invoke-virtual {p0}, Lcom/audible/mobile/downloader/handler/InMemoryDownloadHandler;->getBytes()[B

    move-result-object v0

    if-eqz v0, :cond_3

    .line 126
    array-length v1, v0

    if-gtz v1, :cond_0

    goto :goto_1

    .line 131
    :cond_0
    sget-object v1, Lcom/audible/mobile/activation/AudibleDeviceTokenAuthenticatedActivation$ActivationRequestHandler;->parser:Lcom/audible/mobile/activation/network/parser/ActivationParser;

    invoke-virtual {v1, v0}, Lcom/audible/mobile/activation/network/parser/ActivationParser;->checkError([B)Lcom/audible/mobile/activation/ActivationError;

    move-result-object v1

    .line 133
    sget-object v2, Lcom/audible/mobile/activation/ActivationError;->NONE:Lcom/audible/mobile/activation/ActivationError;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 134
    iget-object v0, p0, Lcom/audible/mobile/activation/AudibleDeviceTokenAuthenticatedActivation$ActivationRequestHandler;->listener:Lcom/audible/mobile/activation/ActivationListener;

    invoke-interface {v0, v1}, Lcom/audible/mobile/activation/ActivationListener;->onActivationError(Lcom/audible/mobile/activation/ActivationError;)V

    return-void

    .line 138
    :cond_1
    sget-object v1, Lcom/audible/mobile/activation/AudibleDeviceTokenAuthenticatedActivation$ActivationRequestHandler;->parser:Lcom/audible/mobile/activation/network/parser/ActivationParser;

    invoke-virtual {v1, v0}, Lcom/audible/mobile/activation/network/parser/ActivationParser;->parse([B)[B

    move-result-object v0

    .line 139
    sget-object v1, Lcom/audible/mobile/activation/AudibleDeviceTokenAuthenticatedActivation$ActivationRequestHandler;->logger:Lorg/slf4j/Logger;

    const-string v2, "Done parsing Audible activation data, saving file..."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/audible/mobile/activation/AudibleDeviceTokenAuthenticatedActivation$ActivationRequestHandler;->activationDataRepository:Lcom/audible/mobile/activation/ActivationDataRepository;

    invoke-interface {v1, v0}, Lcom/audible/mobile/activation/ActivationDataRepository;->persistActivationData([B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    iget-object v0, p0, Lcom/audible/mobile/activation/AudibleDeviceTokenAuthenticatedActivation$ActivationRequestHandler;->listener:Lcom/audible/mobile/activation/ActivationListener;

    invoke-interface {v0}, Lcom/audible/mobile/activation/ActivationListener;->onResponse()V

    goto :goto_0

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/audible/mobile/activation/AudibleDeviceTokenAuthenticatedActivation$ActivationRequestHandler;->listener:Lcom/audible/mobile/activation/ActivationListener;

    sget-object v1, Lcom/audible/mobile/activation/ActivationError;->FAILED_TO_SAVE_FILE:Lcom/audible/mobile/activation/ActivationError;

    invoke-interface {v0, v1}, Lcom/audible/mobile/activation/ActivationListener;->onActivationError(Lcom/audible/mobile/activation/ActivationError;)V

    :goto_0
    return-void

    .line 127
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/audible/mobile/activation/AudibleDeviceTokenAuthenticatedActivation$ActivationRequestHandler;->listener:Lcom/audible/mobile/activation/ActivationListener;

    sget-object v1, Lcom/audible/mobile/activation/ActivationError;->NO_RESPONSE:Lcom/audible/mobile/activation/ActivationError;

    invoke-interface {v0, v1}, Lcom/audible/mobile/activation/ActivationListener;->onActivationError(Lcom/audible/mobile/activation/ActivationError;)V

    return-void
.end method
