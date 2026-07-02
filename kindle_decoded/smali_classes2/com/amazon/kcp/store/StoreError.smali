.class public final enum Lcom/amazon/kcp/store/StoreError;
.super Ljava/lang/Enum;
.source "StoreError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/store/StoreError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/store/StoreError;

.field public static final enum ACCESS_NOT_ALLOWED:Lcom/amazon/kcp/store/StoreError;

.field public static final enum ACCESS_NOT_ALLOWED_BOOKS_NEWSSTAND_BLOCKED:Lcom/amazon/kcp/store/StoreError;

.field public static final enum ACCESS_NOT_ALLOWED_BOOKS_NEWSSTAND_STORES_BLOCKED:Lcom/amazon/kcp/store/StoreError;

.field public static final enum ACCESS_NOT_ALLOWED_STORES_BLOCKED:Lcom/amazon/kcp/store/StoreError;

.field public static final enum BAD_URL:Lcom/amazon/kcp/store/StoreError;

.field public static final enum BROWSERHOST_INIT_FAILURE:Lcom/amazon/kcp/store/StoreError;

.field public static final enum CREDENTIAL_UPDATE_FAILURE:Lcom/amazon/kcp/store/StoreError;

.field public static final enum NO_NETWORK_CONNECTION:Lcom/amazon/kcp/store/StoreError;

.field public static final enum UNKNOWN:Lcom/amazon/kcp/store/StoreError;


# instance fields
.field private final errorMessageResId:I

.field private final recoverType:Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 18
    new-instance v0, Lcom/amazon/kcp/store/StoreError;

    sget v1, Lcom/amazon/kcp/store/R$string;->store_error_message_no_access:I

    sget-object v2, Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;->DISABLED:Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;

    const/4 v3, 0x0

    const-string v4, "ACCESS_NOT_ALLOWED"

    invoke-direct {v0, v4, v3, v1, v2}, Lcom/amazon/kcp/store/StoreError;-><init>(Ljava/lang/String;IILcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;)V

    sput-object v0, Lcom/amazon/kcp/store/StoreError;->ACCESS_NOT_ALLOWED:Lcom/amazon/kcp/store/StoreError;

    .line 23
    new-instance v0, Lcom/amazon/kcp/store/StoreError;

    sget v1, Lcom/amazon/kcp/store/R$string;->store_error_message_no_access_stores_blocked:I

    sget-object v2, Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;->DISABLED:Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;

    const/4 v4, 0x1

    const-string v5, "ACCESS_NOT_ALLOWED_STORES_BLOCKED"

    invoke-direct {v0, v5, v4, v1, v2}, Lcom/amazon/kcp/store/StoreError;-><init>(Ljava/lang/String;IILcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;)V

    sput-object v0, Lcom/amazon/kcp/store/StoreError;->ACCESS_NOT_ALLOWED_STORES_BLOCKED:Lcom/amazon/kcp/store/StoreError;

    .line 28
    new-instance v0, Lcom/amazon/kcp/store/StoreError;

    sget v1, Lcom/amazon/kcp/store/R$string;->store_error_message_no_access_books_newsstand_blocked:I

    sget-object v2, Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;->DISABLED:Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;

    const/4 v5, 0x2

    const-string v6, "ACCESS_NOT_ALLOWED_BOOKS_NEWSSTAND_BLOCKED"

    invoke-direct {v0, v6, v5, v1, v2}, Lcom/amazon/kcp/store/StoreError;-><init>(Ljava/lang/String;IILcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;)V

    sput-object v0, Lcom/amazon/kcp/store/StoreError;->ACCESS_NOT_ALLOWED_BOOKS_NEWSSTAND_BLOCKED:Lcom/amazon/kcp/store/StoreError;

    .line 33
    new-instance v0, Lcom/amazon/kcp/store/StoreError;

    sget v1, Lcom/amazon/kcp/store/R$string;->store_error_message_no_access_books_newsstand_stores_blocked:I

    sget-object v2, Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;->DISABLED:Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;

    const/4 v6, 0x3

    const-string v7, "ACCESS_NOT_ALLOWED_BOOKS_NEWSSTAND_STORES_BLOCKED"

    invoke-direct {v0, v7, v6, v1, v2}, Lcom/amazon/kcp/store/StoreError;-><init>(Ljava/lang/String;IILcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;)V

    sput-object v0, Lcom/amazon/kcp/store/StoreError;->ACCESS_NOT_ALLOWED_BOOKS_NEWSSTAND_STORES_BLOCKED:Lcom/amazon/kcp/store/StoreError;

    .line 38
    new-instance v0, Lcom/amazon/kcp/store/StoreError;

    invoke-static {}, Lcom/amazon/kcp/store/StoreError;->getTransientFailureErrorTextResId()I

    move-result v1

    sget-object v2, Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;->RELOAD_CURRENT_PAGE:Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;

    const/4 v7, 0x4

    const-string v8, "NO_NETWORK_CONNECTION"

    invoke-direct {v0, v8, v7, v1, v2}, Lcom/amazon/kcp/store/StoreError;-><init>(Ljava/lang/String;IILcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;)V

    sput-object v0, Lcom/amazon/kcp/store/StoreError;->NO_NETWORK_CONNECTION:Lcom/amazon/kcp/store/StoreError;

    .line 44
    new-instance v0, Lcom/amazon/kcp/store/StoreError;

    invoke-static {}, Lcom/amazon/kcp/store/StoreError;->getPersistentFailureErrorTextResId()I

    move-result v1

    sget-object v2, Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;->LOAD_STORE_FRONT:Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;

    const/4 v8, 0x5

    const-string v9, "CREDENTIAL_UPDATE_FAILURE"

    invoke-direct {v0, v9, v8, v1, v2}, Lcom/amazon/kcp/store/StoreError;-><init>(Ljava/lang/String;IILcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;)V

    sput-object v0, Lcom/amazon/kcp/store/StoreError;->CREDENTIAL_UPDATE_FAILURE:Lcom/amazon/kcp/store/StoreError;

    .line 50
    new-instance v0, Lcom/amazon/kcp/store/StoreError;

    invoke-static {}, Lcom/amazon/kcp/store/StoreError;->getPersistentFailureErrorTextResId()I

    move-result v1

    sget-object v2, Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;->LOAD_STORE_FRONT:Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;

    const/4 v9, 0x6

    const-string v10, "BROWSERHOST_INIT_FAILURE"

    invoke-direct {v0, v10, v9, v1, v2}, Lcom/amazon/kcp/store/StoreError;-><init>(Ljava/lang/String;IILcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;)V

    sput-object v0, Lcom/amazon/kcp/store/StoreError;->BROWSERHOST_INIT_FAILURE:Lcom/amazon/kcp/store/StoreError;

    .line 55
    new-instance v0, Lcom/amazon/kcp/store/StoreError;

    invoke-static {}, Lcom/amazon/kcp/store/StoreError;->getPersistentFailureErrorTextResId()I

    move-result v1

    sget-object v2, Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;->LOAD_STORE_FRONT:Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;

    const/4 v10, 0x7

    const-string v11, "BAD_URL"

    invoke-direct {v0, v11, v10, v1, v2}, Lcom/amazon/kcp/store/StoreError;-><init>(Ljava/lang/String;IILcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;)V

    sput-object v0, Lcom/amazon/kcp/store/StoreError;->BAD_URL:Lcom/amazon/kcp/store/StoreError;

    .line 60
    new-instance v0, Lcom/amazon/kcp/store/StoreError;

    invoke-static {}, Lcom/amazon/kcp/store/StoreError;->getPersistentFailureErrorTextResId()I

    move-result v1

    sget-object v2, Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;->LOAD_STORE_FRONT:Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;

    const/16 v11, 0x8

    const-string v12, "UNKNOWN"

    invoke-direct {v0, v12, v11, v1, v2}, Lcom/amazon/kcp/store/StoreError;-><init>(Ljava/lang/String;IILcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;)V

    sput-object v0, Lcom/amazon/kcp/store/StoreError;->UNKNOWN:Lcom/amazon/kcp/store/StoreError;

    const/16 v1, 0x9

    new-array v1, v1, [Lcom/amazon/kcp/store/StoreError;

    .line 14
    sget-object v2, Lcom/amazon/kcp/store/StoreError;->ACCESS_NOT_ALLOWED:Lcom/amazon/kcp/store/StoreError;

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/store/StoreError;->ACCESS_NOT_ALLOWED_STORES_BLOCKED:Lcom/amazon/kcp/store/StoreError;

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/store/StoreError;->ACCESS_NOT_ALLOWED_BOOKS_NEWSSTAND_BLOCKED:Lcom/amazon/kcp/store/StoreError;

    aput-object v2, v1, v5

    sget-object v2, Lcom/amazon/kcp/store/StoreError;->ACCESS_NOT_ALLOWED_BOOKS_NEWSSTAND_STORES_BLOCKED:Lcom/amazon/kcp/store/StoreError;

    aput-object v2, v1, v6

    sget-object v2, Lcom/amazon/kcp/store/StoreError;->NO_NETWORK_CONNECTION:Lcom/amazon/kcp/store/StoreError;

    aput-object v2, v1, v7

    sget-object v2, Lcom/amazon/kcp/store/StoreError;->CREDENTIAL_UPDATE_FAILURE:Lcom/amazon/kcp/store/StoreError;

    aput-object v2, v1, v8

    sget-object v2, Lcom/amazon/kcp/store/StoreError;->BROWSERHOST_INIT_FAILURE:Lcom/amazon/kcp/store/StoreError;

    aput-object v2, v1, v9

    sget-object v2, Lcom/amazon/kcp/store/StoreError;->BAD_URL:Lcom/amazon/kcp/store/StoreError;

    aput-object v2, v1, v10

    aput-object v0, v1, v11

    sput-object v1, Lcom/amazon/kcp/store/StoreError;->$VALUES:[Lcom/amazon/kcp/store/StoreError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;",
            ")V"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 73
    iput p3, p0, Lcom/amazon/kcp/store/StoreError;->errorMessageResId:I

    .line 74
    iput-object p4, p0, Lcom/amazon/kcp/store/StoreError;->recoverType:Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;

    return-void
.end method

.method private static getPersistentFailureErrorTextResId()I
    .locals 1

    .line 92
    invoke-static {}, Lcom/amazon/kcp/store/StoreError;->shouldUsePaymentFlows()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/amazon/kcp/store/R$string;->store_error_message_go_store_front:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/amazon/kcp/store/R$string;->store_discover_error_message_go_amazon_website:I

    :goto_0
    return v0
.end method

.method private static getTransientFailureErrorTextResId()I
    .locals 1

    .line 102
    invoke-static {}, Lcom/amazon/kcp/store/StoreError;->shouldUsePaymentFlows()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/amazon/kcp/store/R$string;->store_error_message_try_again:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/amazon/kcp/store/R$string;->store_discover_error_message_try_again:I

    :goto_0
    return v0
.end method

.method private static shouldUsePaymentFlows()Z
    .locals 1

    .line 111
    const-class v0, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;

    if-eqz v0, :cond_0

    .line 112
    invoke-interface {v0}, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;->shouldUsePaymentFlows()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/store/StoreError;
    .locals 1

    .line 14
    const-class v0, Lcom/amazon/kcp/store/StoreError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/store/StoreError;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/store/StoreError;
    .locals 1

    .line 14
    sget-object v0, Lcom/amazon/kcp/store/StoreError;->$VALUES:[Lcom/amazon/kcp/store/StoreError;

    invoke-virtual {v0}, [Lcom/amazon/kcp/store/StoreError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/store/StoreError;

    return-object v0
.end method


# virtual methods
.method public getErrorMessage()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/amazon/kcp/store/StoreError;->errorMessageResId:I

    return v0
.end method

.method public getRecoverType()Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreError;->recoverType:Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;

    return-object v0
.end method
