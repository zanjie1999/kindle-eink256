.class final Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager$handleRegistration$2;
.super Ljava/lang/Object;
.source "KindleAuthenticationManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->handleRegistration(Ljava/util/List;Lcom/amazon/kindle/callback/ICallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $account:Ljava/lang/String;

.field final synthetic $onComplete:Lcom/amazon/kindle/callback/ICallback;

.field final synthetic $tokensToFetch:Ljava/util/List;

.field final synthetic this$0:Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;Ljava/util/List;Ljava/lang/String;Lcom/amazon/kindle/callback/ICallback;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager$handleRegistration$2;->this$0:Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;

    iput-object p2, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager$handleRegistration$2;->$tokensToFetch:Ljava/util/List;

    iput-object p3, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager$handleRegistration$2;->$account:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager$handleRegistration$2;->$onComplete:Lcom/amazon/kindle/callback/ICallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 105
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager$handleRegistration$2;->$tokensToFetch:Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager$handleRegistration$2;->this$0:Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;

    invoke-static {v0}, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->access$getTokensToPrefetch$p(Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;)Ljava/util/List;

    move-result-object v0

    .line 106
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/services/authentication/TokenKey;

    .line 107
    sget-object v3, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v2, :cond_1

    .line 111
    iget-object v2, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager$handleRegistration$2;->this$0:Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;

    iget-object v3, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager$handleRegistration$2;->$account:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->getToken(Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 110
    :cond_1
    iget-object v2, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager$handleRegistration$2;->this$0:Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;

    iget-object v3, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager$handleRegistration$2;->$account:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->fetchToken(Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 115
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->startAppSession()V

    .line 117
    new-instance v0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;

    sget-object v1, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGIN:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    iget-object v3, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager$handleRegistration$2;->$account:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;-><init>(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager$handleRegistration$2;->this$0:Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;

    invoke-static {v1}, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->access$getMessageQueue$p(Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 120
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager$handleRegistration$2;->this$0:Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;

    invoke-static {v0, v2}, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->access$setFtueStarted$p(Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;Z)V

    .line 123
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager$handleRegistration$2;->this$0:Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;

    new-instance v1, Lcom/amazon/kindle/event/Event;

    iget-object v3, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager$handleRegistration$2;->$account:Ljava/lang/String;

    new-instance v4, Lcom/amazon/kindle/event/AuthenticationEventPayload;

    iget-object v5, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager$handleRegistration$2;->this$0:Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;

    invoke-virtual {v5}, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/amazon/kindle/event/AuthenticationEventPayload;-><init>(Lcom/amazon/kindle/services/authentication/IAccountInfo;)V

    sget-object v5, Lcom/amazon/kcp/application/IAuthenticationManager;->USER_REGISTER:Lcom/amazon/kindle/event/EventType;

    const/4 v6, 0x0

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/amazon/kindle/event/Event;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/amazon/kindle/event/EventType;Z)V

    invoke-static {v0, v1}, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->access$publishEvent(Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;Lcom/amazon/kindle/event/Event;)V

    .line 124
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager$handleRegistration$2;->$onComplete:Lcom/amazon/kindle/callback/ICallback;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/amazon/kindle/callback/OperationResult;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/kindle/callback/OperationResult;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/callback/ICallback;->call(Lcom/amazon/kindle/callback/OperationResult;)V

    :cond_3
    return-void
.end method
