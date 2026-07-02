.class public Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;
.super Ljava/lang/Object;
.source "RemoteConfigurationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final mManagers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppConfigId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDefaultConfiguration:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 130
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->mManagers:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->mDefaultConfiguration:Lorg/json/JSONObject;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 172
    invoke-static {p2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->access$000(Ljava/lang/String;)V

    .line 173
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->mContext:Landroid/content/Context;

    .line 174
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->mAppConfigId:Ljava/lang/String;

    return-void

    .line 170
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The App Configuration ID may not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 167
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The Context may not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$200(Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;)Landroid/content/Context;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;)Ljava/lang/String;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->mAppConfigId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;)Lorg/json/JSONObject;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->mDefaultConfiguration:Lorg/json/JSONObject;

    return-object p0
.end method

.method private ensureBuilderReady()V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 242
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->mAppConfigId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->mDefaultConfiguration:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    return-void

    .line 246
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The default configuration may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The App Configuration ID may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The Context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public createOrGet()Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;
    .locals 4

    .line 218
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->mAppConfigId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 222
    sget-object v1, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->mManagers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->ensureBuilderReady()V

    .line 224
    sget-object v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->mManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->mAppConfigId:Ljava/lang/String;

    new-instance v2, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;-><init>(Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_0
    sget-object v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->mManagers:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->mAppConfigId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;

    return-object v0

    .line 219
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "An App Configuration ID must be specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withDefaultConfiguration(Lorg/json/JSONObject;)Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 190
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->mDefaultConfiguration:Lorg/json/JSONObject;

    return-object p0

    .line 187
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "The default configuration may not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
