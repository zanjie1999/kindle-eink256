.class public final Lcom/audible/hushpuppy/common/system/IntentUtils;
.super Ljava/lang/Object;
.source "IntentUtils.java"


# static fields
.field private static final ACTION_AUDIBLE_SHOW_STORE:Ljava/lang/String; = "com.audible.application.kindle.SHOW_STORE"

.field private static final ATOS_MATCHMAKER_PAGE:Ljava/lang/String; = "matchmaker"

.field private static final ATOS_PRODUCT_DETAIL_PAGE:Ljava/lang/String; = "detail"

.field private static final AUDIBLE_PACKAGE_NAME:Ljava/lang/String; = "com.audible.application.kindle"

.field private static final AUDIBLE_STORE_AUTHORITY:Ljava/lang/String; = "store"

.field private static final AUDIBLE_STORE_REF_MARKER:Ljava/lang/String; = "refMarker"

.field private static final AUDIBLE_STORE_SCHEME:Ljava/lang/String; = "audible"

.field private static final AUDIBLE_STORE_SOURCE:Ljava/lang/String; = "source"

.field private static final AUDIO_BOOK_AMAZON_ASIN:Ljava/lang/String; = "amazon_asin"

.field private static final AUDIO_BOOK_ASIN:Ljava/lang/String; = "asin"

.field private static final EBOOKS:Ljava/lang/String; = "ebooks"

.field private static final KTOS_HP_MATCHMAKER_REF_TAG:Ljava/lang/String; = "ktos_library_hushpuppy_mm"

.field private static final KTOS_HP_UPSELL_REF_TAG:Ljava/lang/String; = "aud_tos_ir_kr"

.field private static final KTOS_STORE_INTENT:Ljava/lang/String; = "com.amazon.webapp.msg.openWebApp.KINDLE_STORE"

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final STORE_ACTIVITY_NAME:Ljava/lang/String; = "com.audible.application.store.AudibleStore"

.field private static final STORE_EXTRAS_ASIN_KEY:Ljava/lang/String; = "asin"

.field private static final STORE_EXTRAS_CONTEXT_KEY:Ljava/lang/String; = "storefront-context"

.field private static final STORE_EXTRAS_DEST_KEY:Ljava/lang/String; = "destination"

.field private static final STORE_EXTRAS_DEST_VALUE:Ljava/lang/String; = "DETAIL"

.field private static final STORE_EXTRAS_METRICS_KEY:Ljava/lang/String; = "metrics"

.field private static final STORE_EXTRAS_METRICS_START_TIME_KEY:Ljava/lang/String; = "storeStartTime"

.field private static final STORE_EXTRAS_PARAMS_KEY:Ljava/lang/String; = "queryParams"

.field private static final STORE_EXTRAS_REF_KEY:Ljava/lang/String; = "ref_"

.field private static final STORE_PACKAGE_NAME:Ljava/lang/String; = "com.audible.application.store"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/common/system/IntentUtils;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/common/system/IntentUtils;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAtosUpsellIntentForMergedStore(Lcom/audible/mobile/domain/Asin;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 275
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "audible"

    .line 276
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "store"

    .line 277
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "detail"

    .line 278
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 279
    invoke-interface {p0}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p0

    const-string v1, "asin"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p0, "source"

    .line 280
    invoke-virtual {v0, p0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p0, "refMarker"

    .line 281
    invoke-virtual {v0, p0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 283
    new-instance p0, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    const-string v0, "com.audible.application.kindle.SHOW_STORE"

    invoke-direct {p0, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "android.intent.category.DEFAULT"

    .line 284
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.category.BROWSABLE"

    .line 285
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.audible.application.kindle"

    .line 286
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 287
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p0
.end method

.method private static getAtosUpsellIntentForSeparateStore(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Asin;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 251
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "audible"

    .line 252
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "store"

    .line 253
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "detail"

    .line 254
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 256
    invoke-interface {p0}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p0

    const-string v1, "asin"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    if-eqz p1, :cond_0

    .line 258
    sget-object p0, Lcom/audible/mobile/domain/Asin;->NONE:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 259
    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p0

    const-string p1, "amazon_asin"

    invoke-virtual {v0, p1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    const-string p0, "source"

    .line 261
    invoke-virtual {v0, p0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 263
    new-instance p0, Landroid/content/Intent;

    const-string p1, "android.intent.action.VIEW"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "android.intent.category.DEFAULT"

    .line 264
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.category.BROWSABLE"

    .line 265
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    new-instance p1, Landroid/content/ComponentName;

    const-string p2, "com.audible.application.store"

    const-string v1, "com.audible.application.store.AudibleStore"

    invoke-direct {p1, p2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 267
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 268
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p0
.end method

.method public static launchAtosMatchmakerIntent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 229
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "audible"

    .line 230
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "store"

    .line 231
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "matchmaker"

    .line 232
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "source"

    .line 233
    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p1, "refMarker"

    const-string v1, "ktos_library_hushpuppy_mm"

    .line 234
    invoke-virtual {v0, p1, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 236
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "com.audible.application.kindle.SHOW_STORE"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "android.intent.category.DEFAULT"

    .line 237
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.BROWSABLE"

    .line 238
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.audible.application.kindle"

    .line 239
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 240
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 243
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    :catch_0
    sget-object p0, Lcom/audible/hushpuppy/common/system/IntentUtils;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p1, "ATOS matchmaker activity not found."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static launchAtosUpsellIntent(Landroid/content/Context;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/StoreSource;)V
    .locals 2

    .line 199
    sget-object v0, Lcom/audible/hushpuppy/common/system/IntentUtils;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Opening ATOS product detail page.."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 201
    sget-object v0, Lcom/audible/mobile/domain/Asin;->NONE:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    if-eqz p3, :cond_1

    goto :goto_0

    .line 206
    :cond_1
    sget-object p3, Lcom/audible/hushpuppy/common/upsell/StoreSource;->UNKNOWN:Lcom/audible/hushpuppy/common/upsell/StoreSource;

    :goto_0
    invoke-virtual {p3}, Lcom/audible/hushpuppy/common/upsell/StoreSource;->getSourceCode()Ljava/lang/String;

    move-result-object p3

    .line 208
    invoke-static {p0}, Lcom/audible/hushpuppy/common/system/AndroidSystemUtils;->doesAudibleAppSupportStore(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    sget-object p2, Lcom/audible/hushpuppy/common/system/IntentUtils;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Device has newer Audible app. Launching new intent."

    invoke-interface {p2, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 210
    invoke-static {p1, p3}, Lcom/audible/hushpuppy/common/system/IntentUtils;->getAtosUpsellIntentForMergedStore(Lcom/audible/mobile/domain/Asin;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_1

    .line 212
    :cond_2
    sget-object v0, Lcom/audible/hushpuppy/common/system/IntentUtils;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Device has older Audible app. Launching store intent."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 213
    invoke-static {p1, p2, p3}, Lcom/audible/hushpuppy/common/system/IntentUtils;->getAtosUpsellIntentForSeparateStore(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Asin;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 217
    :goto_1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 219
    :catch_0
    sget-object p0, Lcom/audible/hushpuppy/common/system/IntentUtils;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p1, "ATOS activity not found."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    :goto_2
    return-void

    .line 202
    :cond_3
    :goto_3
    sget-object p0, Lcom/audible/hushpuppy/common/system/IntentUtils;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p1, "Cannot launch Audible store, Audiobook ASIN is null"

    invoke-interface {p0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void
.end method
