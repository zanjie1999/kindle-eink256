.class public final Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationProvider;
.super Ljava/lang/Object;
.source "AudibleDrmAuthenticationProvider.kt"

# interfaces
.implements Lcom/audible/mobile/player/exo/sources/AuthenticationProvider;


# instance fields
.field private audibleDrmAuthentication:Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticate(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;)Z
    .locals 2

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->SUCCESS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    iget-object v1, p0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationProvider;->audibleDrmAuthentication:Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->authenticate(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationProvider;->audibleDrmAuthentication:Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;

    return-void
.end method

.method public final setAudibleDrmAuthentication(Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;)V
    .locals 1

    const-string v0, "audibleDrmAuthentication"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationProvider;->audibleDrmAuthentication:Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;

    return-void
.end method

.method public validateLocal(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;)Z
    .locals 1

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthenticationProvider;->audibleDrmAuthentication:Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;->validateVoucher(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
