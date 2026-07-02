.class public final Lcom/amazon/kcp/store/StoreReturnBookUrlBuilder;
.super Ljava/lang/Object;
.source "StoreReturnBookUrlBuilder.kt"


# static fields
.field private static final BASE_PATH:Ljava/lang/String; = "kindle-dbs/hz/return"

.field public static final INSTANCE:Lcom/amazon/kcp/store/StoreReturnBookUrlBuilder;

.field private static final PARAM_ASIN_KEY:Ljava/lang/String; = "ASIN"

.field private static final PARAM_CHANNEL_KEY:Ljava/lang/String; = "channel"

.field private static final PARAM_CONTINUE_ACTION:Ljava/lang/String; = "borrow"

.field private static final PARAM_CONTINUE_ACTION_KEY:Ljava/lang/String; = "continueAction"

.field private static final PARAM_PROGRAM_KEY:Ljava/lang/String; = "program"

.field private static final PARAM_REF_KEY:Ljava/lang/String; = "_ref"

.field private static final SCHEME_HTTPS:Ljava/lang/String; = "https"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/amazon/kcp/store/StoreReturnBookUrlBuilder;

    invoke-direct {v0}, Lcom/amazon/kcp/store/StoreReturnBookUrlBuilder;-><init>()V

    sput-object v0, Lcom/amazon/kcp/store/StoreReturnBookUrlBuilder;->INSTANCE:Lcom/amazon/kcp/store/StoreReturnBookUrlBuilder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getCommonBookReturnUrl(Lcom/amazon/kindle/krx/glide/KRXAsinOffer;)Ljava/lang/String;
    .locals 4

    .line 44
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 45
    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPFMDomain()Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_3

    .line 47
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_4

    .line 48
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/Marketplace;->getDomain()Ljava/lang/String;

    move-result-object v1

    .line 51
    :cond_4
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "https"

    .line 52
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "www."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "kindle-dbs/hz/return"

    .line 54
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "continueAction"

    const-string v2, "borrow"

    .line 55
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getAsin()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ASIN"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getActionProgram()Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    move-result-object v1

    const-string v2, "borrowOffer.actionProgram"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;->getProgramCode()Ljava/lang/String;

    move-result-object v1

    const-string v3, "program"

    invoke-virtual {v0, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getActionProgram()Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;->getChannel()Ljava/lang/String;

    move-result-object p1

    const-string v1, "channel"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "_ref"

    const-string v1, ""

    .line 59
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Uri.Builder()\n          \u2026              .toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final getBookReturnUrl(Lcom/amazon/kindle/krx/glide/KRXAsinOffer;)Ljava/lang/String;
    .locals 2

    const-string v0, "borrowOffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getActionProgram()Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/amazon/kcp/store/StoreReturnBookUrlBuilder$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    :goto_0
    const/4 p1, 0x0

    goto :goto_1

    .line 76
    :cond_1
    invoke-direct {p0, p1}, Lcom/amazon/kcp/store/StoreReturnBookUrlBuilder;->getCommonBookReturnUrl(Lcom/amazon/kindle/krx/glide/KRXAsinOffer;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method
