.class public Lcom/amazon/reader/ebookdownloadplugin/EbookDownloadPlugin;
.super Ljava/lang/Object;
.source "EbookDownloadPlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/plugin/IReaderPlugin;


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    name = "com.amazon.reader.EbookDownloadPlugin"
    roles = {
        .enum Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;
    }
    scope = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Scope;->application:Lcom/amazon/kindle/krx/plugin/Plugin$Scope;
.end annotation


# static fields
.field private static kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDependecies()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 55
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 42
    sput-object p1, Lcom/amazon/reader/ebookdownloadplugin/EbookDownloadPlugin;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v0, "com.amazon.reader.EbookDownloadPlugin"

    if-eqz p1, :cond_0

    const-string p1, "Initializing hushpuppy plugin for EbookDownloadPlugin"

    .line 45
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "Initializing hushpuppy plugin for EbookDownloadPlugin failed, kindleReaderSDK is null!"

    .line 47
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
