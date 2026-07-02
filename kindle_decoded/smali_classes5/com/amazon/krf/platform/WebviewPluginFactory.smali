.class public Lcom/amazon/krf/platform/WebviewPluginFactory;
.super Ljava/lang/Object;
.source "WebviewPluginFactory.java"

# interfaces
.implements Lcom/amazon/krf/platform/KRFPluginFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createPlugin()Lcom/amazon/krf/platform/KRFPlugin;
    .locals 1

    .line 22
    new-instance v0, Lcom/amazon/krf/platform/WebviewPlugin;

    invoke-direct {v0}, Lcom/amazon/krf/platform/WebviewPlugin;-><init>()V

    return-object v0
.end method

.method public finalizeFactory()V
    .locals 0

    return-void
.end method

.method public getMetadata()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "WebViewPlugin"

    return-object v0
.end method

.method public getVersions()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, ""

    const-string v2, "1.0"

    .line 41
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public initializeFactory()V
    .locals 0

    return-void
.end method
