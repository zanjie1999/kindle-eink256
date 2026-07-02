.class public Lcom/amazon/kindle/module/StandaloneModuleInitializer;
.super Lcom/amazon/kindle/config/AbstractModuleInitializer;
.source "StandaloneModuleInitializer.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/amazon/kindle/module/StandaloneModuleInitializer;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/module/StandaloneModuleInitializer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/KindleReaderSDKModule;)V
    .locals 3

    .line 21
    invoke-direct {p0}, Lcom/amazon/kindle/config/AbstractModuleInitializer;-><init>()V

    .line 25
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isChinaBuild()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "com.amazon.nwstd.modules.NewsstandModule"

    .line 27
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/config/Module;

    .line 28
    iget-object v1, p0, Lcom/amazon/kindle/config/AbstractModuleInitializer;->modules:Ljava/util/Map;

    invoke-interface {v0}, Lcom/amazon/kindle/config/Module;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    :try_start_1
    const-string v0, "com.amazon.kindle.rendering.RenderingModule"

    .line 35
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/config/Module;

    .line 36
    iget-object v1, p0, Lcom/amazon/kindle/config/AbstractModuleInitializer;->modules:Ljava/util/Map;

    invoke-interface {v0}, Lcom/amazon/kindle/config/Module;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 41
    :catch_1
    new-instance v0, Lcom/amazon/kindle/modules/MangaViewerModule;

    invoke-direct {v0}, Lcom/amazon/kindle/modules/MangaViewerModule;-><init>()V

    .line 42
    iget-object v1, p0, Lcom/amazon/kindle/config/AbstractModuleInitializer;->modules:Ljava/util/Map;

    invoke-interface {v0}, Lcom/amazon/kindle/config/Module;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v0, Lcom/amazon/kindle/module/StandAloneReaderModule;

    invoke-direct {v0}, Lcom/amazon/kindle/module/StandAloneReaderModule;-><init>()V

    .line 44
    iget-object v1, p0, Lcom/amazon/kindle/config/AbstractModuleInitializer;->modules:Ljava/util/Map;

    invoke-interface {v0}, Lcom/amazon/kindle/config/Module;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance v0, Lcom/amazon/kindle/modules/KRF4ContentModule;

    invoke-direct {v0}, Lcom/amazon/kindle/modules/KRF4ContentModule;-><init>()V

    .line 46
    iget-object v1, p0, Lcom/amazon/kindle/config/AbstractModuleInitializer;->modules:Ljava/util/Map;

    invoke-interface {v0}, Lcom/amazon/kindle/config/Module;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v0, Lcom/amazon/kindle/annotation/AnnotationModule;

    invoke-direct {v0}, Lcom/amazon/kindle/annotation/AnnotationModule;-><init>()V

    .line 48
    iget-object v1, p0, Lcom/amazon/kindle/config/AbstractModuleInitializer;->modules:Ljava/util/Map;

    invoke-interface {v0}, Lcom/amazon/kindle/config/Module;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v0, Lcom/amazon/kcp/reader/ui/StandaloneDefinitionContainerModule;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/ui/StandaloneDefinitionContainerModule;-><init>()V

    .line 50
    iget-object v1, p0, Lcom/amazon/kindle/config/AbstractModuleInitializer;->modules:Ljava/util/Map;

    invoke-interface {v0}, Lcom/amazon/kindle/config/Module;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/amazon/kindle/config/AbstractModuleInitializer;->modules:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/KindleReaderSDKModule;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance p1, Lcom/amazon/kindle/attribution/AttributionModule;

    invoke-direct {p1}, Lcom/amazon/kindle/attribution/AttributionModule;-><init>()V

    .line 53
    iget-object v0, p0, Lcom/amazon/kindle/config/AbstractModuleInitializer;->modules:Ljava/util/Map;

    invoke-interface {p1}, Lcom/amazon/kindle/config/Module;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance p1, Lcom/amazon/kcp/library/StandAloneContentManagementSystemModule;

    invoke-direct {p1}, Lcom/amazon/kcp/library/StandAloneContentManagementSystemModule;-><init>()V

    .line 55
    iget-object v0, p0, Lcom/amazon/kindle/config/AbstractModuleInitializer;->modules:Ljava/util/Map;

    invoke-interface {p1}, Lcom/amazon/kindle/config/Module;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
