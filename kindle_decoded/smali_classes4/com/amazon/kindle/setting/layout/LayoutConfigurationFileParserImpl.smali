.class public final Lcom/amazon/kindle/setting/layout/LayoutConfigurationFileParserImpl;
.super Ljava/lang/Object;
.source "LayoutConfigurationFileParserImpl.kt"

# interfaces
.implements Lcom/amazon/kindle/setting/layout/LayoutConfigurationFileParser;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/setting/layout/LayoutConfigurationFileParserImpl;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Lcom/amazon/kindle/setting/layout/LayoutConfiguration;
    .locals 2

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/setting/layout/LayoutConfigurationFileParserImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 21
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v0}, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;-><init>()V

    .line 24
    const-class v1, Lcom/amazon/kindle/setting/layout/LayoutConfiguration;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/setting/layout/LayoutConfiguration;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
