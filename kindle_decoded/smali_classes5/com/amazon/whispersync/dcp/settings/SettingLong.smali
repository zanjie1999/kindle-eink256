.class public final Lcom/amazon/whispersync/dcp/settings/SettingLong;
.super Ljava/lang/Object;
.source "SettingLong.java"


# instance fields
.field private final mCache:Lcom/amazon/whispersync/dcp/settings/SettingsCache;

.field private final mDefaultValue:J

.field private final mKey:Ljava/lang/String;

.field private final mNamespace:Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;J)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/settings/SettingLong;->mNamespace:Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;

    .line 23
    iput-object p2, p0, Lcom/amazon/whispersync/dcp/settings/SettingLong;->mKey:Ljava/lang/String;

    .line 24
    iput-wide p3, p0, Lcom/amazon/whispersync/dcp/settings/SettingLong;->mDefaultValue:J

    .line 25
    invoke-static {}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->getInstance()Lcom/amazon/whispersync/dcp/settings/SettingsCache;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/settings/SettingLong;->mCache:Lcom/amazon/whispersync/dcp/settings/SettingsCache;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    .line 17
    sget-object v0, Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;->Default:Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/amazon/whispersync/dcp/settings/SettingLong;-><init>(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/settings/SettingLong;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()J
    .locals 5

    .line 35
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/settings/SettingLong;->mCache:Lcom/amazon/whispersync/dcp/settings/SettingsCache;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/settings/SettingLong;->mNamespace:Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/settings/SettingLong;->mKey:Ljava/lang/String;

    iget-wide v3, p0, Lcom/amazon/whispersync/dcp/settings/SettingLong;->mDefaultValue:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->getLongValue(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
