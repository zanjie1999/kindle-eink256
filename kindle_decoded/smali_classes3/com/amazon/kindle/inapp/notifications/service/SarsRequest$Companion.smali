.class public final Lcom/amazon/kindle/inapp/notifications/service/SarsRequest$Companion;
.super Ljava/lang/Object;
.source "SarsRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSarsRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SarsRequest.kt\ncom/amazon/kindle/inapp/notifications/service/SarsRequest$Companion\n*L\n1#1,286:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 184
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getRes$p(Lcom/amazon/kindle/inapp/notifications/service/SarsRequest$Companion;)Landroid/content/res/Resources;
    .locals 0

    .line 184
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest$Companion;->getRes()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSdk$p(Lcom/amazon/kindle/inapp/notifications/service/SarsRequest$Companion;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 184
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest$Companion;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p0

    return-object p0
.end method

.method private final formatParameters(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 272
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, ""

    const/4 v2, 0x1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 273
    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v6, 0x1

    :goto_2
    if-nez v6, :cond_0

    if-eqz v3, :cond_4

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v6, 0x1

    :goto_4
    if-eqz v6, :cond_5

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    goto :goto_5

    .line 278
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 280
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_7
    return-object v1
.end method

.method private final getEndpoint()Ljava/lang/String;
    .locals 2

    .line 209
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;->getUseGamma()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://star-actions-relay-service-gamma.amazon.com/kinapps/%s"

    return-object v0

    .line 211
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest$Companion;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 213
    :goto_0
    sget-object v1, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;->AU:Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 214
    :cond_2
    sget-object v1, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;->RU:Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 215
    :cond_3
    sget-object v1, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;->JP:Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_1
    const-string v0, "https://sars-fe.amazon.com/kinapps/%s"

    return-object v0

    .line 218
    :cond_4
    sget-object v1, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;->CN:Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 219
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest$Companion;->isNewCNEndpointEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "https://sars-cn.amazon.cn/kinapps/%s"

    goto :goto_2

    :cond_5
    const-string v0, "https://sars-cn.amazon.com/kinapps/%s"

    :goto_2
    return-object v0

    .line 221
    :cond_6
    sget-object v1, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;->IN:Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_3

    .line 222
    :cond_7
    sget-object v1, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;->IT:Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_3

    .line 223
    :cond_8
    sget-object v1, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;->DE:Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_3

    .line 224
    :cond_9
    sget-object v1, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;->ES:Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_3

    .line 225
    :cond_a
    sget-object v1, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;->FR:Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_3

    .line 226
    :cond_b
    sget-object v1, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;->NL:Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_3

    .line 227
    :cond_c
    sget-object v1, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;->UK:Lcom/amazon/kindle/inapp/notifications/util/Marketplace;

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/util/Marketplace;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_3
    const-string v0, "https://sars-eu.amazon.com/kinapps/%s"

    return-object v0

    :cond_d
    const-string v0, "https://sars.amazon.com/kinapps/%s"

    return-object v0
.end method

.method private final getPLATFORM_QUERY_PARAM()Ljava/lang/String;
    .locals 1

    .line 204
    invoke-static {}, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->access$getPLATFORM_QUERY_PARAM$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getRes()Landroid/content/res/Resources;
    .locals 1

    .line 206
    invoke-static {}, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->access$getRes$cp()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method private final getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 1

    .line 205
    invoke-static {}, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->access$getSdk$cp()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    return-object v0
.end method

.method private final isNewCNEndpointEnabled()Z
    .locals 3

    .line 240
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest$Companion;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "KINDLE_NOTIFICATIONS_SARS_CHINA_WEBLAB_306311"

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 241
    invoke-interface {v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAndRecordTrigger()Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string v0, "T1"

    .line 242
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final getOP_DELETE_ALL_NOTIFICATIONS()Ljava/lang/String;
    .locals 1

    .line 191
    invoke-static {}, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->access$getOP_DELETE_ALL_NOTIFICATIONS$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOP_DELETE_NOTIFICATIONS()Ljava/lang/String;
    .locals 1

    .line 190
    invoke-static {}, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->access$getOP_DELETE_NOTIFICATIONS$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOP_GET_NEW_NOTIFICATIONS_COUNT()Ljava/lang/String;
    .locals 1

    .line 186
    invoke-static {}, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->access$getOP_GET_NEW_NOTIFICATIONS_COUNT$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOP_GET_NOTIFICATIONS()Ljava/lang/String;
    .locals 1

    .line 187
    invoke-static {}, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->access$getOP_GET_NOTIFICATIONS$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOP_POST_NOT_NEW_ALL()Ljava/lang/String;
    .locals 1

    .line 188
    invoke-static {}, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->access$getOP_POST_NOT_NEW_ALL$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOP_POST_NOT_NEW_MULTIPLE()Ljava/lang/String;
    .locals 1

    .line 189
    invoke-static {}, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest;->access$getOP_POST_NOT_NEW_MULTIPLE$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUrl(Ljava/lang/String;Ljava/util/Map;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameterMap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/build/BuildInfo;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/build/BuildInfo;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/amazon/kindle/inapp/notifications/R$string;->platform_1p:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/amazon/kindle/inapp/notifications/R$string;->platform_3p:I

    .line 256
    :goto_0
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest$Companion;->getPLATFORM_QUERY_PARAM()Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_1

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "res!!.getString(platformStringId)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object p3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 p3, 0x1

    new-array v0, p3, [Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest$Companion;->formatParameters(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "java.lang.String.format(format, *args)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/service/SarsRequest$Companion;->getEndpoint()Ljava/lang/String;

    move-result-object v0

    new-array v2, p3, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v2, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 256
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1
.end method
