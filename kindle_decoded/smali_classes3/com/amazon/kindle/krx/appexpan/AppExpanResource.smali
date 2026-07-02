.class public Lcom/amazon/kindle/krx/appexpan/AppExpanResource;
.super Ljava/lang/Object;
.source "AppExpanResource.java"

# interfaces
.implements Lcom/amazon/kindle/krx/appexpan/IAppExpanResource;


# instance fields
.field private final resource:Lcom/amazon/appexpan/client/Resource;


# direct methods
.method public constructor <init>(Lcom/amazon/appexpan/client/Resource;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/amazon/kindle/krx/appexpan/AppExpanResource;->resource:Lcom/amazon/appexpan/client/Resource;

    return-void
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/kindle/krx/appexpan/AppExpanResource;->resource:Lcom/amazon/appexpan/client/Resource;

    invoke-virtual {v0}, Lcom/amazon/appexpan/client/Resource;->getFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/kindle/krx/appexpan/AppExpanResource;->resource:Lcom/amazon/appexpan/client/Resource;

    invoke-virtual {v0}, Lcom/amazon/appexpan/client/Resource;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/kindle/krx/appexpan/AppExpanResource;->resource:Lcom/amazon/appexpan/client/Resource;

    invoke-virtual {v0}, Lcom/amazon/appexpan/client/Resource;->getVersion()I

    move-result v0

    return v0
.end method
