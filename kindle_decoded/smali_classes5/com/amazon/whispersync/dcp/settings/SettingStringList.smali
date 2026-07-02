.class public final Lcom/amazon/whispersync/dcp/settings/SettingStringList;
.super Ljava/lang/Object;
.source "SettingStringList.java"


# instance fields
.field private final mCache:Lcom/amazon/whispersync/dcp/settings/SettingsCache;

.field private final mDefaultValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mKey:Ljava/lang/String;

.field private final mNamespace:Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/settings/SettingStringList;->mNamespace:Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;

    .line 27
    iput-object p2, p0, Lcom/amazon/whispersync/dcp/settings/SettingStringList;->mKey:Ljava/lang/String;

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/settings/SettingStringList;->mDefaultValue:Ljava/util/List;

    .line 29
    invoke-static {}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->getInstance()Lcom/amazon/whispersync/dcp/settings/SettingsCache;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/settings/SettingStringList;->mCache:Lcom/amazon/whispersync/dcp/settings/SettingsCache;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 21
    sget-object v0, Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;->Default:Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;

    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/whispersync/dcp/settings/SettingStringList;-><init>(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/settings/SettingStringList;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/settings/SettingStringList;->mCache:Lcom/amazon/whispersync/dcp/settings/SettingsCache;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/settings/SettingStringList;->mNamespace:Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/settings/SettingStringList;->mKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/whispersync/dcp/settings/SettingStringList;->mDefaultValue:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->getStringListValue(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
