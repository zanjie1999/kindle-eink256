.class public Lcom/amazon/kindle/reportcontenterror/RcePlugin;
.super Ljava/lang/Object;
.source "RcePlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/plugin/IReaderPlugin;


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    build = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Build;->both:Lcom/amazon/kindle/krx/plugin/Plugin$Build;
    entry = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Entry;->application:Lcom/amazon/kindle/krx/plugin/Plugin$Entry;
    minApi = 0x13
    name = "Report Content Error Plugin"
    roles = {
        .enum Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.kindle.reportcontenterror.RcePlugin"

.field private static readerSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 1

    .line 22
    sget-object v0, Lcom/amazon/kindle/reportcontenterror/RcePlugin;->readerSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object v0
.end method

.method private static declared-synchronized setReaderSDK(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    const-class v0, Lcom/amazon/kindle/reportcontenterror/RcePlugin;

    monitor-enter v0

    .line 42
    :try_start_0
    sput-object p0, Lcom/amazon/kindle/reportcontenterror/RcePlugin;->readerSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getDependecies()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 51
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 2

    monitor-enter p0

    .line 31
    :try_start_0
    invoke-static {p1}, Lcom/amazon/kindle/reportcontenterror/RcePlugin;->setReaderSDK(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 32
    new-instance v0, Lcom/amazon/kindle/reportcontenterror/RceWidgetItem;

    sget-object v1, Lcom/amazon/kindle/reportcontenterror/RcePlugin;->readerSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/reportcontenterror/RceWidgetItem;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 33
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerSelectionWidgetItemProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
