.class public Lcom/amazon/notebook/module/NotebookPlugin;
.super Ljava/lang/Object;
.source "NotebookPlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/plugin/IReaderPlugin;


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    build = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Build;->both:Lcom/amazon/kindle/krx/plugin/Plugin$Build;
    minApi = 0xe
    name = "Notebook Plugin"
    roles = {
        .enum Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;,
        .enum Lcom/amazon/kindle/krx/plugin/Plugin$Role;->child:Lcom/amazon/kindle/krx/plugin/Plugin$Role;
    }
    scope = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Scope;->application:Lcom/amazon/kindle/krx/plugin/Plugin$Scope;
.end annotation


# static fields
.field private static sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 1

    .line 26
    sget-object v0, Lcom/amazon/notebook/module/NotebookPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object v0
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

    .line 39
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 31
    sput-object p1, Lcom/amazon/notebook/module/NotebookPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method
