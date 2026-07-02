.class public final Lcom/amazon/dcp/settings/SettingsMap;
.super Ljava/lang/Object;
.source "SettingsMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/dcp/settings/SettingsMap$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.dcp.settings.SettingsMap"


# instance fields
.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/dcp/settings/SettingsNamespace;",
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

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/amazon/dcp/settings/SettingsMap;->mMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Ljava/util/Map;Lcom/amazon/dcp/settings/SettingsNamespace;)Ljava/util/Map;
    .locals 0

    .line 14
    invoke-static {p0, p1}, Lcom/amazon/dcp/settings/SettingsMap;->getNamespaceSettings(Ljava/util/Map;Lcom/amazon/dcp/settings/SettingsNamespace;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/dcp/settings/SettingsMap;)Ljava/util/Map;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/amazon/dcp/settings/SettingsMap;->mMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$102(Lcom/amazon/dcp/settings/SettingsMap;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/amazon/dcp/settings/SettingsMap;->mMap:Ljava/util/Map;

    return-object p1
.end method

.method private static getNamespaceSettings(Ljava/util/Map;Lcom/amazon/dcp/settings/SettingsNamespace;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/amazon/dcp/settings/SettingsNamespace;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/amazon/dcp/settings/SettingsNamespace;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 129
    sget-object v0, Lcom/amazon/dcp/settings/SettingsNamespace;->Default:Lcom/amazon/dcp/settings/SettingsNamespace;

    if-ne p1, v0, :cond_0

    .line 131
    sget-object p1, Lcom/amazon/dcp/settings/SettingsNamespace;->AppLocal:Lcom/amazon/dcp/settings/SettingsNamespace;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0

    .line 135
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public getValue(Lcom/amazon/dcp/settings/SettingsNamespace;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/amazon/dcp/settings/SettingsMap;->mMap:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/amazon/dcp/settings/SettingsMap;->getNamespaceSettings(Ljava/util/Map;Lcom/amazon/dcp/settings/SettingsNamespace;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 118
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    :goto_0
    return-object p3
.end method
