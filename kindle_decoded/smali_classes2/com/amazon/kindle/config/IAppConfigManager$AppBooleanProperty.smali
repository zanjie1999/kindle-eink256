.class public final enum Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;
.super Ljava/lang/Enum;
.source "IAppConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/config/IAppConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppBooleanProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;

.field public static final enum SUPPORTED_VOUCHER_VERSIONS_MANIFEST_ALLOWED:Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;

.field public static final enum SUPPORTS_CENTRALIZED_SSO:Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;

.field public static final enum SUPPORTS_COROUTINE_DOWNLOAD_WORKFLOW:Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;

.field public static final enum SUPPORTS_MULTIPLE_USERS:Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;

.field public static final enum SUPPORTS_SHARED_EXECUTORS:Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;

.field public static final enum TIME_DISPLAY_ENABLED_BY_DEFAULT:Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 15
    new-instance v0, Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;

    const/4 v1, 0x0

    const-string v2, "SUPPORTS_MULTIPLE_USERS"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;->SUPPORTS_MULTIPLE_USERS:Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;

    .line 16
    new-instance v0, Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;

    const/4 v2, 0x1

    const-string v3, "SUPPORTS_CENTRALIZED_SSO"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;->SUPPORTS_CENTRALIZED_SSO:Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;

    .line 17
    new-instance v0, Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;

    const/4 v3, 0x2

    const-string v4, "TIME_DISPLAY_ENABLED_BY_DEFAULT"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;->TIME_DISPLAY_ENABLED_BY_DEFAULT:Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;

    .line 18
    new-instance v0, Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;

    const/4 v4, 0x3

    const-string v5, "SUPPORTS_SHARED_EXECUTORS"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;->SUPPORTS_SHARED_EXECUTORS:Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;

    .line 19
    new-instance v0, Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;

    const/4 v5, 0x4

    const-string v6, "SUPPORTED_VOUCHER_VERSIONS_MANIFEST_ALLOWED"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;->SUPPORTED_VOUCHER_VERSIONS_MANIFEST_ALLOWED:Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;

    .line 20
    new-instance v0, Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;

    const/4 v6, 0x5

    const-string v7, "SUPPORTS_COROUTINE_DOWNLOAD_WORKFLOW"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;->SUPPORTS_COROUTINE_DOWNLOAD_WORKFLOW:Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;

    .line 14
    sget-object v8, Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;->SUPPORTS_MULTIPLE_USERS:Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;

    aput-object v8, v7, v1

    sget-object v1, Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;->SUPPORTS_CENTRALIZED_SSO:Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;

    aput-object v1, v7, v2

    sget-object v1, Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;->TIME_DISPLAY_ENABLED_BY_DEFAULT:Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;

    aput-object v1, v7, v3

    sget-object v1, Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;->SUPPORTS_SHARED_EXECUTORS:Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;

    aput-object v1, v7, v4

    sget-object v1, Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;->SUPPORTED_VOUCHER_VERSIONS_MANIFEST_ALLOWED:Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;->$VALUES:[Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;
    .locals 1

    .line 14
    const-class v0, Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;
    .locals 1

    .line 14
    sget-object v0, Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;->$VALUES:[Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;

    invoke-virtual {v0}, [Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;

    return-object v0
.end method
