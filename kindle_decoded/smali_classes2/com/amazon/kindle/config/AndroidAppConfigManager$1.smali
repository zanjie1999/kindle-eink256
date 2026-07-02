.class synthetic Lcom/amazon/kindle/config/AndroidAppConfigManager$1;
.super Ljava/lang/Object;
.source "AndroidAppConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/config/AndroidAppConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kindle$config$IAppConfigManager$AppBooleanProperty:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 62
    invoke-static {}, Lcom/amazon/kindle/config/IAppConfigManager$AppStringProperty;->values()[Lcom/amazon/kindle/config/IAppConfigManager$AppStringProperty;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    .line 54
    invoke-static {}, Lcom/amazon/kindle/config/IAppConfigManager$AppIntProperty;->values()[Lcom/amazon/kindle/config/IAppConfigManager$AppIntProperty;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    .line 28
    invoke-static {}, Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;->values()[Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/config/AndroidAppConfigManager$1;->$SwitchMap$com$amazon$kindle$config$IAppConfigManager$AppBooleanProperty:[I

    :try_start_0
    sget-object v1, Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;->SUPPORTS_MULTIPLE_USERS:Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/kindle/config/AndroidAppConfigManager$1;->$SwitchMap$com$amazon$kindle$config$IAppConfigManager$AppBooleanProperty:[I

    sget-object v1, Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;->SUPPORTS_CENTRALIZED_SSO:Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/amazon/kindle/config/AndroidAppConfigManager$1;->$SwitchMap$com$amazon$kindle$config$IAppConfigManager$AppBooleanProperty:[I

    sget-object v1, Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;->TIME_DISPLAY_ENABLED_BY_DEFAULT:Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/amazon/kindle/config/AndroidAppConfigManager$1;->$SwitchMap$com$amazon$kindle$config$IAppConfigManager$AppBooleanProperty:[I

    sget-object v1, Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;->SUPPORTS_SHARED_EXECUTORS:Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/amazon/kindle/config/AndroidAppConfigManager$1;->$SwitchMap$com$amazon$kindle$config$IAppConfigManager$AppBooleanProperty:[I

    sget-object v1, Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;->SUPPORTS_COROUTINE_DOWNLOAD_WORKFLOW:Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/amazon/kindle/config/AndroidAppConfigManager$1;->$SwitchMap$com$amazon$kindle$config$IAppConfigManager$AppBooleanProperty:[I

    sget-object v1, Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;->SUPPORTED_VOUCHER_VERSIONS_MANIFEST_ALLOWED:Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
