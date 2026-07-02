.class public Lcom/amazon/kindle/config/AndroidAppConfigManager;
.super Ljava/lang/Object;
.source "AndroidAppConfigManager.java"

# interfaces
.implements Lcom/amazon/kindle/config/IAppConfigManager;


# static fields
.field private static instance:Lcom/amazon/kindle/config/AndroidAppConfigManager;


# instance fields
.field private res:Landroid/content/res/Resources;


# direct methods
.method private constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/amazon/kindle/config/AndroidAppConfigManager;->res:Landroid/content/res/Resources;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/amazon/kindle/config/AndroidAppConfigManager;
    .locals 1

    .line 13
    sget-object v0, Lcom/amazon/kindle/config/AndroidAppConfigManager;->instance:Lcom/amazon/kindle/config/AndroidAppConfigManager;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/amazon/kindle/config/AndroidAppConfigManager;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/kindle/config/AndroidAppConfigManager;-><init>(Landroid/content/res/Resources;)V

    sput-object v0, Lcom/amazon/kindle/config/AndroidAppConfigManager;->instance:Lcom/amazon/kindle/config/AndroidAppConfigManager;

    .line 16
    :cond_0
    sget-object p0, Lcom/amazon/kindle/config/AndroidAppConfigManager;->instance:Lcom/amazon/kindle/config/AndroidAppConfigManager;

    return-object p0
.end method


# virtual methods
.method public getBool(Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;)Z
    .locals 1

    .line 28
    sget-object v0, Lcom/amazon/kindle/config/AndroidAppConfigManager$1;->$SwitchMap$com$amazon$kindle$config$IAppConfigManager$AppBooleanProperty:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 45
    :pswitch_0
    sget p1, Lcom/amazon/kindle/rs/R$bool;->supported_voucher_versions_manifest:I

    goto :goto_0

    .line 42
    :pswitch_1
    sget p1, Lcom/amazon/kindle/dm/R$bool;->supports_coroutine_download_workflow:I

    goto :goto_0

    .line 39
    :pswitch_2
    sget p1, Lcom/amazon/kindle/krl/R$bool;->support_shared_executors:I

    goto :goto_0

    .line 36
    :pswitch_3
    sget p1, Lcom/amazon/kindle/krl/R$bool;->time_display_enabled_by_default:I

    goto :goto_0

    .line 33
    :pswitch_4
    sget p1, Lcom/amazon/kindle/krl/R$bool;->can_support_centralized_sso:I

    goto :goto_0

    .line 30
    :pswitch_5
    sget p1, Lcom/amazon/kindle/krl/R$bool;->support_multiple_users:I

    .line 48
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/config/AndroidAppConfigManager;->res:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
