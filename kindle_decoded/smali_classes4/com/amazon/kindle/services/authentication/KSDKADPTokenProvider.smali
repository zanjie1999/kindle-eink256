.class public final Lcom/amazon/kindle/services/authentication/KSDKADPTokenProvider;
.super Lcom/amazon/ksdk/adpauthentication/AdpTokenProvider;
.source "KSDKADPTokenProvider.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKSDKADPTokenProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KSDKADPTokenProvider.kt\ncom/amazon/kindle/services/authentication/KSDKADPTokenProvider\n+ 2 Retry.kt\ncom/amazon/kindle/util/RetryKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,70:1\n94#2,16:71\n1819#3,2:87\n*E\n*S KotlinDebug\n*F\n+ 1 KSDKADPTokenProvider.kt\ncom/amazon/kindle/services/authentication/KSDKADPTokenProvider\n*L\n45#1,16:71\n60#1,2:87\n*E\n"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final mapRetryConfig:Lcom/amazon/kindle/util/RetryConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/util/RetryConfig<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/util/RetryConfig;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazon/kindle/util/RetryConfig<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mapRetryConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Lcom/amazon/ksdk/adpauthentication/AdpTokenProvider;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/services/authentication/KSDKADPTokenProvider;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/amazon/kindle/services/authentication/KSDKADPTokenProvider;->mapRetryConfig:Lcom/amazon/kindle/util/RetryConfig;

    .line 21
    const-class p1, Lcom/amazon/kindle/services/authentication/KSDKADPTokenProvider;

    invoke-static {p1}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/services/authentication/KSDKADPTokenProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/util/RetryConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 19
    new-instance p2, Lcom/amazon/kindle/util/RetryConfig;

    const/4 v1, 0x3

    const-wide/16 v2, 0x14

    sget-object v4, Lcom/amazon/kindle/util/RetryConfig$BackOff;->NONE:Lcom/amazon/kindle/util/RetryConfig$BackOff;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x18

    const/4 v9, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v9}, Lcom/amazon/kindle/util/RetryConfig;-><init>(IJLcom/amazon/kindle/util/RetryConfig$BackOff;JLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/services/authentication/KSDKADPTokenProvider;-><init>(Landroid/content/Context;Lcom/amazon/kindle/util/RetryConfig;)V

    return-void
.end method


# virtual methods
.method public getAdpHeaders(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;[B)Ljava/util/HashMap;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 32
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 34
    invoke-static/range {p1 .. p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    :goto_1
    if-nez v5, :cond_b

    if-eqz p2, :cond_2

    invoke-static/range {p2 .. p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_4

    goto/16 :goto_8

    .line 38
    :cond_4
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    iget-object v5, v1, Lcom/amazon/kindle/services/authentication/KSDKADPTokenProvider;->context:Landroid/content/Context;

    invoke-direct {v0, v5}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v5, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;

    .line 40
    iget-object v6, v1, Lcom/amazon/kindle/services/authentication/KSDKADPTokenProvider;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->getAccount()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-direct {v5, v6, v0}, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    sget-object v0, Lcom/amazon/identity/auth/device/api/AuthenticationType;->ADPAuthenticator:Lcom/amazon/identity/auth/device/api/AuthenticationType;

    invoke-virtual {v5, v0}, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->newAuthenticationMethod(Lcom/amazon/identity/auth/device/api/AuthenticationType;)Lcom/amazon/identity/auth/device/api/AuthenticationMethod;

    move-result-object v5

    const/4 v12, 0x0

    .line 45
    :try_start_0
    iget-object v13, v1, Lcom/amazon/kindle/services/authentication/KSDKADPTokenProvider;->mapRetryConfig:Lcom/amazon/kindle/util/RetryConfig;

    .line 71
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-virtual {v13}, Lcom/amazon/kindle/util/RetryConfig;->getMaxAttempts()I

    move-result v15
    :try_end_0
    .catch Lcom/amazon/kindle/util/RetriesExceededException; {:try_start_0 .. :try_end_0} :catch_1

    if-gt v4, v15, :cond_6

    .line 47
    :goto_2
    :try_start_1
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v11, 0x0

    move-object v6, v5

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    .line 46
    invoke-virtual/range {v6 .. v11}, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->getAuthenticationHeadersForRequest(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;[BLcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object v0

    .line 49
    invoke-interface {v0}, Lcom/amazon/identity/auth/device/api/MAPFuture;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v6, "future.get()"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/os/Bundle;

    .line 75
    invoke-virtual {v13}, Lcom/amazon/kindle/util/RetryConfig;->getAcceptancePredicate()Lkotlin/jvm/functions/Function1;

    move-result-object v6

    invoke-interface {v6, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v6, :cond_5

    move-object v12, v0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    .line 79
    :try_start_2
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_5
    invoke-virtual {v13, v4}, Lcom/amazon/kindle/util/RetryConfig;->getDelay(I)J

    move-result-wide v6

    .line 83
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    if-eq v4, v15, :cond_6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 86
    :cond_6
    new-instance v0, Lcom/amazon/kindle/util/RetriesExceededException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "All "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/amazon/kindle/util/RetryConfig;->getMaxAttempts()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " attempts failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v14}, Lcom/amazon/kindle/util/RetriesExceededException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw v0
    :try_end_2
    .catch Lcom/amazon/kindle/util/RetriesExceededException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    .line 52
    invoke-virtual {v0}, Lcom/amazon/kindle/util/RetriesExceededException;->getExceptionsCaught()Ljava/util/List;

    move-result-object v0

    .line 53
    const-class v4, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;

    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->filterIsInstance(Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_3

    :cond_7
    move-object v0, v12

    :goto_3
    if-eqz v0, :cond_8

    const-string v4, "error_code_key"

    .line 54
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_4

    :cond_8
    move-object v4, v12

    :goto_4
    if-eqz v0, :cond_9

    const-string v5, "error_message_key"

    .line 55
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_9
    move-object v0, v12

    .line 56
    :goto_5
    iget-object v5, v1, Lcom/amazon/kindle/services/authentication/KSDKADPTokenProvider;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to get ADP headers for request: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", with error: {code: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", message: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " }"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    if-eqz v12, :cond_b

    const-string v0, "auth.headers"

    .line 59
    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 60
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    const-string v4, "it.keySet()"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 61
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    const-string v6, "key"

    .line 62
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "value"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_b
    :goto_8
    return-object v3
.end method
