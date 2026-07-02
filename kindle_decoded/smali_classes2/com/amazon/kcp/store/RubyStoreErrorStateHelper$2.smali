.class synthetic Lcom/amazon/kcp/store/RubyStoreErrorStateHelper$2;
.super Ljava/lang/Object;
.source "RubyStoreErrorStateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/RubyStoreErrorStateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kcp$store$StoreError:[I

.field static final synthetic $SwitchMap$com$amazon$kcp$store$StoreError$StoreErrorRecoverType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 131
    invoke-static {}, Lcom/amazon/kcp/store/StoreError;->values()[Lcom/amazon/kcp/store/StoreError;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper$2;->$SwitchMap$com$amazon$kcp$store$StoreError:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/amazon/kcp/store/StoreError;->BROWSERHOST_INIT_FAILURE:Lcom/amazon/kcp/store/StoreError;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper$2;->$SwitchMap$com$amazon$kcp$store$StoreError:[I

    sget-object v3, Lcom/amazon/kcp/store/StoreError;->CREDENTIAL_UPDATE_FAILURE:Lcom/amazon/kcp/store/StoreError;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper$2;->$SwitchMap$com$amazon$kcp$store$StoreError:[I

    sget-object v4, Lcom/amazon/kcp/store/StoreError;->NO_NETWORK_CONNECTION:Lcom/amazon/kcp/store/StoreError;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v3, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper$2;->$SwitchMap$com$amazon$kcp$store$StoreError:[I

    sget-object v4, Lcom/amazon/kcp/store/StoreError;->BAD_URL:Lcom/amazon/kcp/store/StoreError;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper$2;->$SwitchMap$com$amazon$kcp$store$StoreError:[I

    sget-object v4, Lcom/amazon/kcp/store/StoreError;->UNKNOWN:Lcom/amazon/kcp/store/StoreError;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 76
    :catch_4
    invoke-static {}, Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;->values()[Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper$2;->$SwitchMap$com$amazon$kcp$store$StoreError$StoreErrorRecoverType:[I

    :try_start_5
    sget-object v4, Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;->LOAD_STORE_FRONT:Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v1, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper$2;->$SwitchMap$com$amazon$kcp$store$StoreError$StoreErrorRecoverType:[I

    sget-object v3, Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;->RELOAD_CURRENT_PAGE:Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/amazon/kcp/store/RubyStoreErrorStateHelper$2;->$SwitchMap$com$amazon$kcp$store$StoreError$StoreErrorRecoverType:[I

    sget-object v1, Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;->DISABLED:Lcom/amazon/kcp/store/StoreError$StoreErrorRecoverType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method
