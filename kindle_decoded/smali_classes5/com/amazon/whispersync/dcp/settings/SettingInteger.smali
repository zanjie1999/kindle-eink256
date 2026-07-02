.class public final Lcom/amazon/whispersync/dcp/settings/SettingInteger;
.super Ljava/lang/Object;
.source "SettingInteger.java"


# instance fields
.field private final mCache:Lcom/amazon/whispersync/dcp/settings/SettingsCache;

.field private final mDefaultValue:I

.field private final mKey:Ljava/lang/String;

.field private final mNamespace:Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;I)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/settings/SettingInteger;->mNamespace:Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;

    .line 23
    iput-object p2, p0, Lcom/amazon/whispersync/dcp/settings/SettingInteger;->mKey:Ljava/lang/String;

    .line 24
    iput p3, p0, Lcom/amazon/whispersync/dcp/settings/SettingInteger;->mDefaultValue:I

    .line 25
    invoke-static {}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->getInstance()Lcom/amazon/whispersync/dcp/settings/SettingsCache;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/settings/SettingInteger;->mCache:Lcom/amazon/whispersync/dcp/settings/SettingsCache;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 17
    sget-object v0, Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;->Default:Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;

    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;-><init>(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/settings/SettingInteger;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 4

    .line 35
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/settings/SettingInteger;->mCache:Lcom/amazon/whispersync/dcp/settings/SettingsCache;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/settings/SettingInteger;->mNamespace:Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/settings/SettingInteger;->mKey:Ljava/lang/String;

    iget v3, p0, Lcom/amazon/whispersync/dcp/settings/SettingInteger;->mDefaultValue:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->getIntValue(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
