.class public Lcom/amazon/nwstd/krx/LibraryPlugin;
.super Ljava/lang/Object;
.source "LibraryPlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/plugin/IReaderPlugin;


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    name = "com.amazon.nwstd.krx.LibraryPlugin"
    role = .enum Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;->both:Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;
    scope = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Scope;->application:Lcom/amazon/kindle/krx/plugin/Plugin$Scope;
    target = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Target;->Tablet:Lcom/amazon/kindle/krx/plugin/Plugin$Target;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

    .line 22
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 31
    new-instance v0, Lcom/amazon/nwstd/krx/LibraryCEBannerProvider;

    invoke-direct {v0, p1}, Lcom/amazon/nwstd/krx/LibraryCEBannerProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 32
    invoke-virtual {v0}, Lcom/amazon/nwstd/krx/LibraryCEBannerProvider;->register()V

    return-void
.end method
