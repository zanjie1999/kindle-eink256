.class public final Lcom/amazon/whispersync/dcp/settings/SettingsContract;
.super Ljava/lang/Object;
.source "SettingsContract.java"


# static fields
.field public static final ACTION_SETTINGS_UPDATED:Ljava/lang/String; = "com.amazon.whispersync.dcp.settings.action.ACTION_SETTINGS_UPDATED"

.field public static final AUTHORITY:Ljava/lang/String; = "com.amazon.whispersync.dcp.settings"

.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final COLUMN_KEY:Ljava/lang/String; = "key"

.field public static final COLUMN_NAMESPACE:Ljava/lang/String; = "namespace"

.field public static final COLUMN_VALUE:Ljava/lang/String; = "value"

.field public static final DYNAMIC_VALUES_CONTENT_URI:Landroid/net/Uri;

.field public static final NAMESPACE_GLOBAL:Ljava/lang/String; = "-device-"

.field public static final NAMESPACE_LIST_CONTENT_URI:Landroid/net/Uri;

.field public static final PERMISSION_READ_SETTINGS:Ljava/lang/String; = "com.amazon.whispersync.dcp.settings.permission.READ_SETTINGS"

.field public static final VALUES_CONTENT_JOIN_URI:Landroid/net/Uri;

.field public static final VALUES_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.amazon.dcp.settings"

    .line 12
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/settings/SettingsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "values"

    .line 14
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/settings/SettingsContract;->VALUES_CONTENT_URI:Landroid/net/Uri;

    .line 15
    sget-object v0, Lcom/amazon/whispersync/dcp/settings/SettingsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "distinct"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/settings/SettingsContract;->NAMESPACE_LIST_CONTENT_URI:Landroid/net/Uri;

    .line 16
    sget-object v0, Lcom/amazon/whispersync/dcp/settings/SettingsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "join"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/settings/SettingsContract;->VALUES_CONTENT_JOIN_URI:Landroid/net/Uri;

    .line 17
    sget-object v0, Lcom/amazon/whispersync/dcp/settings/SettingsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "dymamic_values"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/settings/SettingsContract;->DYNAMIC_VALUES_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppLocalNamespace(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
