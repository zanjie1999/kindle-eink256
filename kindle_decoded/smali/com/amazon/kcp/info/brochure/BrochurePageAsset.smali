.class public Lcom/amazon/kcp/info/brochure/BrochurePageAsset;
.super Ljava/lang/Object;
.source "BrochurePageAsset.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private brochureImageAsset:Lcom/amazon/kcp/info/brochure/BrochureCachedAsset;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "images"
    .end annotation
.end field

.field private final brochureSlideMetadata:Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "metadata"
    .end annotation
.end field

.field private final text:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "text"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/amazon/kcp/info/brochure/BrochurePageAsset;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/info/brochure/BrochurePageAsset;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/amazon/kcp/info/brochure/BrochurePageAsset;->text:Ljava/lang/String;

    .line 43
    invoke-direct {p0, p3}, Lcom/amazon/kcp/info/brochure/BrochurePageAsset;->constructShareableContent(Ljava/util/Map;)Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/info/brochure/BrochurePageAsset;->brochureSlideMetadata:Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;

    .line 45
    invoke-direct {p0}, Lcom/amazon/kcp/info/brochure/BrochurePageAsset;->findDpi()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/info/brochure/BrochurePageAsset;->findImageUrl(Ljava/lang/Integer;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 46
    new-instance p2, Lcom/amazon/kcp/info/brochure/BrochureCachedAsset;

    invoke-direct {p2, p1}, Lcom/amazon/kcp/info/brochure/BrochureCachedAsset;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/amazon/kcp/info/brochure/BrochurePageAsset;->brochureImageAsset:Lcom/amazon/kcp/info/brochure/BrochureCachedAsset;

    return-void
.end method

.method private constructShareableContent(Ljava/util/Map;)Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;"
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 52
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 54
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;

    return-object p1
.end method

.method private findDpi()I
    .locals 1

    .line 90
    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/AndroidDeviceInformationProvider;

    .line 91
    invoke-virtual {v0}, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->getDisplayDPI()I

    move-result v0

    return v0
.end method

.method private findImageUrl(Ljava/lang/Integer;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 65
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 66
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 67
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_2

    .line 71
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-nez p2, :cond_1

    .line 73
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 75
    :cond_1
    sget-object v1, Lcom/amazon/kcp/info/brochure/BrochurePageAsset;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Supplied asset doesn\'t include image for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " dpi. Using "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " dpi instead."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0, p2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    :cond_2
    return-object p2
.end method


# virtual methods
.method public getBrochureImageAsset()Lcom/amazon/kcp/info/brochure/BrochureCachedAsset;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/kcp/info/brochure/BrochurePageAsset;->brochureImageAsset:Lcom/amazon/kcp/info/brochure/BrochureCachedAsset;

    return-object v0
.end method

.method public getBrochureSlideMetadata()Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/amazon/kcp/info/brochure/BrochurePageAsset;->brochureSlideMetadata:Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/amazon/kcp/info/brochure/BrochurePageAsset;->text:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BrochurePageAsset{brochureImageAsset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/info/brochure/BrochurePageAsset;->brochureImageAsset:Lcom/amazon/kcp/info/brochure/BrochureCachedAsset;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", text=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/info/brochure/BrochurePageAsset;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", brochureSlideMetadata=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {p0}, Lcom/amazon/kcp/info/brochure/BrochurePageAsset;->getBrochureSlideMetadata()Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
