.class public final Lcom/amazon/kcp/util/FalkorUtils;
.super Ljava/lang/Object;
.source "FalkorUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/util/FalkorUtils;

.field private static final KINDLE_VELLA:Ljava/lang/String; = "kindle-vella"

.field private static final PARAM_DEVICE_TYPE:Ljava/lang/String; = "deviceType"

.field private static final PARAM_EID:Ljava/lang/String; = "eid"

.field private static final PARAM_REDIRECT_TO_STORY:Ljava/lang/String; = "redirectToStory"

.field private static final PARAM_THEME:Ljava/lang/String; = "theme"

.field private static final PARAM_TITLE:Ljava/lang/String; = "title"

.field private static final isFalkorDebugForceEnabled$delegate:Lkotlin/Lazy;

.field private static volatile weblabs:Lcom/amazon/kcp/util/FalkorWeblabs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/amazon/kcp/util/FalkorUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/util/FalkorUtils;-><init>()V

    sput-object v0, Lcom/amazon/kcp/util/FalkorUtils;->INSTANCE:Lcom/amazon/kcp/util/FalkorUtils;

    .line 20
    sget-object v0, Lcom/amazon/kcp/util/FalkorUtils$isFalkorDebugForceEnabled$2;->INSTANCE:Lcom/amazon/kcp/util/FalkorUtils$isFalkorDebugForceEnabled$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/util/FalkorUtils;->isFalkorDebugForceEnabled$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createFalkorProductPageUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "theme"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "https://www.amazon.com/kindle-vella/product"

    .line 84
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 85
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 86
    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v1, "eid"

    .line 87
    invoke-virtual {p1, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "deviceType"

    .line 88
    invoke-virtual {p1, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 89
    sget p2, Lcom/amazon/kindle/krl/R$string;->kindle_vella:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "title"

    invoke-virtual {p1, p2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string p1, "redirectToStory"

    const-string/jumbo p2, "true"

    .line 90
    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 91
    invoke-static {}, Lcom/amazon/kcp/store/StoreForceDarkModeUtils;->isForceDarkModeSupported()Z

    move-result p1

    if-nez p1, :cond_0

    .line 92
    invoke-virtual {p0, v0, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 94
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "builder.build().toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final createFalkorStorefrontUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "theme"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "https://www.amazon.com/kindle-vella"

    .line 108
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 109
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "eid"

    .line 110
    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v1, "deviceType"

    .line 111
    invoke-virtual {p1, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 112
    sget p2, Lcom/amazon/kindle/krl/R$string;->kindle_vella:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "title"

    invoke-virtual {p1, p2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 113
    invoke-static {}, Lcom/amazon/kcp/store/StoreForceDarkModeUtils;->isForceDarkModeSupported()Z

    move-result p1

    if-nez p1, :cond_0

    .line 114
    invoke-virtual {p0, v0, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 116
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "builder.build().toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final declared-synchronized getWeblabs()Lcom/amazon/kcp/util/FalkorWeblabs;
    .locals 2

    monitor-enter p0

    .line 121
    :try_start_0
    sget-object v0, Lcom/amazon/kcp/util/FalkorUtils;->weblabs:Lcom/amazon/kcp/util/FalkorWeblabs;

    if-nez v0, :cond_0

    .line 122
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    new-instance v1, Lcom/amazon/kcp/util/FalkorWeblabs;

    invoke-direct {v1, v0}, Lcom/amazon/kcp/util/FalkorWeblabs;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    sput-object v1, Lcom/amazon/kcp/util/FalkorUtils;->weblabs:Lcom/amazon/kcp/util/FalkorWeblabs;

    .line 127
    :cond_0
    sget-object v0, Lcom/amazon/kcp/util/FalkorUtils;->weblabs:Lcom/amazon/kcp/util/FalkorWeblabs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static final isFalkorAddToLibraryEnabled()Z
    .locals 2

    .line 46
    invoke-static {}, Lcom/amazon/kcp/util/FalkorUtils;->isFalkorEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kcp/util/FalkorUtils;->INSTANCE:Lcom/amazon/kcp/util/FalkorUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/util/FalkorUtils;->getWeblabs()Lcom/amazon/kcp/util/FalkorWeblabs;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/util/FalkorWeblabs;->getAddToLibraryWeblab()Lcom/amazon/kindle/weblab/OnOffWeblab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/weblab/OnOffWeblab;->isOn()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private final isFalkorDebugForceEnabled()Z
    .locals 1

    sget-object v0, Lcom/amazon/kcp/util/FalkorUtils;->isFalkorDebugForceEnabled$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static final isFalkorEnabled()Z
    .locals 2

    .line 40
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isFalkorEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isEarlyAccessBuild()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/amazon/kcp/util/FalkorUtils;->INSTANCE:Lcom/amazon/kcp/util/FalkorUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/util/FalkorUtils;->isFalkorDebugForceEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/amazon/kcp/util/FalkorUtils;->INSTANCE:Lcom/amazon/kcp/util/FalkorUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/util/FalkorUtils;->getWeblabs()Lcom/amazon/kcp/util/FalkorWeblabs;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/util/FalkorWeblabs;->getMasterWeblab()Lcom/amazon/kindle/weblab/OnOffWeblab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/weblab/OnOffWeblab;->isOn()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static final isFalkorLastReadEpisodeEnabled()Z
    .locals 2

    .line 58
    invoke-static {}, Lcom/amazon/kcp/util/FalkorUtils;->isFalkorEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kcp/util/FalkorUtils;->INSTANCE:Lcom/amazon/kcp/util/FalkorUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/util/FalkorUtils;->getWeblabs()Lcom/amazon/kcp/util/FalkorWeblabs;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/util/FalkorWeblabs;->getLastReadEpisodeWeblab()Lcom/amazon/kindle/weblab/OnOffWeblab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/weblab/OnOffWeblab;->isOn()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static final isFalkorURL(Ljava/lang/String;)Z
    .locals 4

    const-string/jumbo v0, "url"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kindle-vella"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 70
    invoke-static {p0, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final isVellaDeeplinkEnabled()Z
    .locals 2

    .line 64
    invoke-static {}, Lcom/amazon/kcp/util/FalkorUtils;->isFalkorEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kcp/util/FalkorUtils;->INSTANCE:Lcom/amazon/kcp/util/FalkorUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/util/FalkorUtils;->getWeblabs()Lcom/amazon/kcp/util/FalkorWeblabs;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/util/FalkorWeblabs;->getVellaDeeplinkWeblab()Lcom/amazon/kindle/weblab/OnOffWeblab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/weblab/OnOffWeblab;->isOn()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
