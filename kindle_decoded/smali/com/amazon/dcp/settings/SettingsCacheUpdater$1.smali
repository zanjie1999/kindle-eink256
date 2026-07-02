.class Lcom/amazon/dcp/settings/SettingsCacheUpdater$1;
.super Ljava/lang/Object;
.source "SettingsCacheUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/dcp/settings/SettingsCacheUpdater;->updateMap(Lcom/amazon/dcp/settings/SettingsMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/amazon/dcp/settings/SettingsCache$IListener;


# direct methods
.method constructor <init>(Lcom/amazon/dcp/settings/SettingsCacheUpdater;Lcom/amazon/dcp/settings/SettingsCache$IListener;)V
    .locals 0

    .line 192
    iput-object p2, p0, Lcom/amazon/dcp/settings/SettingsCacheUpdater$1;->val$listener:Lcom/amazon/dcp/settings/SettingsCache$IListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/amazon/dcp/settings/SettingsCacheUpdater$1;->val$listener:Lcom/amazon/dcp/settings/SettingsCache$IListener;

    invoke-interface {v0}, Lcom/amazon/dcp/settings/SettingsCache$IListener;->onCacheUpdated()V

    return-void
.end method
