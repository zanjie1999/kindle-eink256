.class public final Lcom/amazon/whispersync/dcp/settings/SettingString;
.super Ljava/lang/Object;
.source "SettingString.java"


# instance fields
.field private final mCache:Lcom/amazon/whispersync/dcp/settings/SettingsCache;

.field private final mDefaultValue:Ljava/lang/String;

.field private final mKey:Ljava/lang/String;

.field private final mNamespace:Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/settings/SettingString;->mNamespace:Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;

    .line 24
    iput-object p2, p0, Lcom/amazon/whispersync/dcp/settings/SettingString;->mKey:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/amazon/whispersync/dcp/settings/SettingString;->mDefaultValue:Ljava/lang/String;

    .line 26
    invoke-static {}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->getInstance()Lcom/amazon/whispersync/dcp/settings/SettingsCache;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/settings/SettingString;->mCache:Lcom/amazon/whispersync/dcp/settings/SettingsCache;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 18
    sget-object v0, Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;->Default:Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;

    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/whispersync/dcp/settings/SettingString;-><init>(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/settings/SettingString;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 4

    .line 36
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/settings/SettingString;->mCache:Lcom/amazon/whispersync/dcp/settings/SettingsCache;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/settings/SettingString;->mNamespace:Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/settings/SettingString;->mKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/whispersync/dcp/settings/SettingString;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->getValue(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
