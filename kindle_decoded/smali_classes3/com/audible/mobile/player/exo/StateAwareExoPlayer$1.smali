.class Lcom/audible/mobile/player/exo/StateAwareExoPlayer$1;
.super Ljava/lang/Object;
.source "StateAwareExoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->doReAuthenticateAsync(Lcom/audible/mobile/player/exo/sources/AuthenticationProvider;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

.field final synthetic val$acr:Lcom/audible/mobile/domain/ACR;

.field final synthetic val$asin:Lcom/audible/mobile/domain/Asin;

.field final synthetic val$authenticationProvider:Lcom/audible/mobile/player/exo/sources/AuthenticationProvider;


# direct methods
.method constructor <init>(Lcom/audible/mobile/player/exo/StateAwareExoPlayer;Lcom/audible/mobile/player/exo/sources/AuthenticationProvider;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$1;->this$0:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    iput-object p2, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$1;->val$authenticationProvider:Lcom/audible/mobile/player/exo/sources/AuthenticationProvider;

    iput-object p3, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$1;->val$asin:Lcom/audible/mobile/domain/Asin;

    iput-object p4, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$1;->val$acr:Lcom/audible/mobile/domain/ACR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 381
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$1;->val$authenticationProvider:Lcom/audible/mobile/player/exo/sources/AuthenticationProvider;

    iget-object v1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$1;->val$asin:Lcom/audible/mobile/domain/Asin;

    iget-object v2, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$1;->val$acr:Lcom/audible/mobile/domain/ACR;

    invoke-interface {v0, v1, v2}, Lcom/audible/mobile/player/exo/sources/AuthenticationProvider;->validateLocal(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$1;->this$0:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    invoke-static {v0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->access$000(Lcom/audible/mobile/player/exo/StateAwareExoPlayer;)Lorg/slf4j/Logger;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$1;->val$asin:Lcom/audible/mobile/domain/Asin;

    const-string v2, "Local authentication failed for {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 384
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$1;->val$authenticationProvider:Lcom/audible/mobile/player/exo/sources/AuthenticationProvider;

    iget-object v1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$1;->val$asin:Lcom/audible/mobile/domain/Asin;

    iget-object v2, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$1;->val$acr:Lcom/audible/mobile/domain/ACR;

    invoke-interface {v0, v1, v2}, Lcom/audible/mobile/player/exo/sources/AuthenticationProvider;->authenticate(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$1;->this$0:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    invoke-static {v0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->access$100(Lcom/audible/mobile/player/exo/StateAwareExoPlayer;)Lorg/slf4j/Logger;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$1;->val$asin:Lcom/audible/mobile/domain/Asin;

    const-string v2, "Re-authentication failed for {}."

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 386
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$1;->this$0:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    sget-object v1, Lcom/audible/mobile/player/Error;->LICENSE_FAILED:Lcom/audible/mobile/player/Error;

    invoke-interface {v1}, Lcom/audible/mobile/player/Error;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Authentication failed on start playback."

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->access$200(Lcom/audible/mobile/player/exo/StateAwareExoPlayer;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 387
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$1;->this$0:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    invoke-static {v0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->access$400(Lcom/audible/mobile/player/exo/StateAwareExoPlayer;)Lcom/audible/mobile/player/LocalPlayerEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$1;->this$0:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    invoke-static {v1}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->access$300(Lcom/audible/mobile/player/exo/StateAwareExoPlayer;)Lcom/audible/mobile/player/AudioDataSource;

    move-result-object v1

    sget-object v2, Lcom/audible/mobile/player/AuthorizationErrorSource;->RENEWED_VOUCHER_EXPIRED:Lcom/audible/mobile/player/AuthorizationErrorSource;

    invoke-virtual {v0, v1, v2}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onLicenseFailure(Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/player/AuthorizationErrorSource;)V

    .line 389
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$1;->this$0:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    sget-object v1, Lcom/audible/mobile/player/State;->ERROR:Lcom/audible/mobile/player/State;

    invoke-virtual {v0, v1}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->makeStateTransition(Lcom/audible/mobile/player/State;)V

    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$1;->this$0:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    invoke-static {v0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->access$500(Lcom/audible/mobile/player/exo/StateAwareExoPlayer;)V

    return-void
.end method
