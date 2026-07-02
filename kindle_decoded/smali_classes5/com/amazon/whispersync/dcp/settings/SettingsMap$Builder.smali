.class public final Lcom/amazon/whispersync/dcp/settings/SettingsMap$Builder;
.super Ljava/lang/Object;
.source "SettingsMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/settings/SettingsMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mBuilt:Lcom/amazon/whispersync/dcp/settings/SettingsMap;

.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/amazon/whispersync/dcp/settings/SettingsMap$Builder;->mMap:Ljava/util/Map;

    .line 21
    iput-object v0, p0, Lcom/amazon/whispersync/dcp/settings/SettingsMap$Builder;->mBuilt:Lcom/amazon/whispersync/dcp/settings/SettingsMap;

    .line 25
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/settings/SettingsMap$Builder;->clear()V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/dcp/settings/SettingsMap;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/settings/SettingsMap$Builder;-><init>()V

    .line 31
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/dcp/settings/SettingsMap$Builder;->add(Lcom/amazon/whispersync/dcp/settings/SettingsMap;)V

    return-void
.end method


# virtual methods
.method public add(Lcom/amazon/whispersync/dcp/settings/SettingsMap;)V
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/settings/SettingsMap$Builder;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;

    .line 62
    invoke-static {p1}, Lcom/amazon/whispersync/dcp/settings/SettingsMap;->access$100(Lcom/amazon/whispersync/dcp/settings/SettingsMap;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 63
    iget-object v3, p0, Lcom/amazon/whispersync/dcp/settings/SettingsMap$Builder;->mMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 67
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-static {}, Lcom/amazon/whispersync/dcp/settings/SettingsMap;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Settings mismatch -- should never happen!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public build()Lcom/amazon/whispersync/dcp/settings/SettingsMap;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/settings/SettingsMap$Builder;->mBuilt:Lcom/amazon/whispersync/dcp/settings/SettingsMap;

    .line 97
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/settings/SettingsMap$Builder;->clear()V

    return-object v0
.end method

.method public clear()V
    .locals 3

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/settings/SettingsMap$Builder;->mMap:Ljava/util/Map;

    .line 81
    sget-object v1, Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;->AppLocal:Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/settings/SettingsMap$Builder;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;->DeviceGlobal:Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    new-instance v0, Lcom/amazon/whispersync/dcp/settings/SettingsMap;

    invoke-direct {v0}, Lcom/amazon/whispersync/dcp/settings/SettingsMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/settings/SettingsMap$Builder;->mBuilt:Lcom/amazon/whispersync/dcp/settings/SettingsMap;

    .line 86
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1}, Lcom/amazon/whispersync/dcp/settings/SettingsMap;->access$102(Lcom/amazon/whispersync/dcp/settings/SettingsMap;Ljava/util/Map;)Ljava/util/Map;

    .line 87
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/settings/SettingsMap$Builder;->mBuilt:Lcom/amazon/whispersync/dcp/settings/SettingsMap;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/settings/SettingsMap;->access$100(Lcom/amazon/whispersync/dcp/settings/SettingsMap;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;->AppLocal:Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/settings/SettingsMap$Builder;->mMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/settings/SettingsMap$Builder;->mBuilt:Lcom/amazon/whispersync/dcp/settings/SettingsMap;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/settings/SettingsMap;->access$100(Lcom/amazon/whispersync/dcp/settings/SettingsMap;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;->DeviceGlobal:Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/settings/SettingsMap$Builder;->mMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/settings/SettingsMap$Builder;->mBuilt:Lcom/amazon/whispersync/dcp/settings/SettingsMap;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/settings/SettingsMap;->access$100(Lcom/amazon/whispersync/dcp/settings/SettingsMap;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whispersync/dcp/settings/SettingsMap;->access$102(Lcom/amazon/whispersync/dcp/settings/SettingsMap;Ljava/util/Map;)Ljava/util/Map;

    return-void
.end method

.method public setValue(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/settings/SettingsMap$Builder;->mMap:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/amazon/whispersync/dcp/settings/SettingsMap;->access$000(Ljava/util/Map;Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 43
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 40
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public unsetValue(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/settings/SettingsMap$Builder;->mMap:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/amazon/whispersync/dcp/settings/SettingsMap;->access$000(Ljava/util/Map;Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 55
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
