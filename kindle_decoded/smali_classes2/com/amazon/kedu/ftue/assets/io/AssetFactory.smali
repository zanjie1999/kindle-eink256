.class public final Lcom/amazon/kedu/ftue/assets/io/AssetFactory;
.super Ljava/lang/Object;
.source "AssetFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kedu/ftue/assets/io/AssetFactory$IBuilder;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/amazon/kedu/ftue/assets/io/AssetFactory;

.field private static final TAG:Ljava/lang/String; = "com.amazon.kedu.ftue.assets.io.AssetFactory"

.field private static final TYPE:Ljava/lang/String; = "__type"


# instance fields
.field private final types:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kedu/ftue/assets/io/AssetFactory$IBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/amazon/kedu/ftue/assets/io/AssetFactory;

    invoke-direct {v0}, Lcom/amazon/kedu/ftue/assets/io/AssetFactory;-><init>()V

    sput-object v0, Lcom/amazon/kedu/ftue/assets/io/AssetFactory;->INSTANCE:Lcom/amazon/kedu/ftue/assets/io/AssetFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kedu/ftue/assets/io/AssetFactory;->types:Ljava/util/Map;

    .line 26
    invoke-static {}, Lcom/amazon/kedu/ftue/assets/ExtractedAsset;->getBuilder()Lcom/amazon/kedu/ftue/assets/io/AssetFactory$IBuilder;

    move-result-object v1

    const-string v2, "extracted"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/io/AssetFactory;->types:Ljava/util/Map;

    invoke-static {}, Lcom/amazon/kedu/ftue/assets/RemoteAsset;->getBuilder()Lcom/amazon/kedu/ftue/assets/io/AssetFactory$IBuilder;

    move-result-object v1

    const-string v2, "remote"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getInstance()Lcom/amazon/kedu/ftue/assets/io/AssetFactory;
    .locals 1

    .line 57
    sget-object v0, Lcom/amazon/kedu/ftue/assets/io/AssetFactory;->INSTANCE:Lcom/amazon/kedu/ftue/assets/io/AssetFactory;

    return-object v0
.end method


# virtual methods
.method public fromJson(Lorg/json/JSONObject;)Lcom/amazon/kedu/ftue/assets/Asset;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "__type"

    .line 39
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    iget-object v2, p0, Lcom/amazon/kedu/ftue/assets/io/AssetFactory;->types:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kedu/ftue/assets/io/AssetFactory$IBuilder;

    if-nez v1, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    invoke-interface {v1, p1}, Lcom/amazon/kedu/ftue/assets/io/AssetFactory$IBuilder;->fromJSON(Lorg/json/JSONObject;)Lcom/amazon/kedu/ftue/assets/Asset;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    .line 46
    :catch_0
    sget-object p1, Lcom/amazon/kedu/ftue/assets/io/AssetFactory;->TAG:Ljava/lang/String;

    const-string v1, "failed parsing asset from JSON"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
