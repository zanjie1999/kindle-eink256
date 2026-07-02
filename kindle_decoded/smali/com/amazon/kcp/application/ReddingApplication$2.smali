.class Lcom/amazon/kcp/application/ReddingApplication$2;
.super Ljava/lang/Object;
.source "ReddingApplication.java"

# interfaces
.implements Lcom/amazon/discovery/DiscoveryLoader$InputStreamProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/ReddingApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final DISCOVERY_ASSET_FILENAME:Ljava/lang/String; = "discovery.json"


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/ReddingApplication;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/ReddingApplication;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/amazon/kcp/application/ReddingApplication$2;->this$0:Lcom/amazon/kcp/application/ReddingApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 3

    .line 289
    iget-object v0, p0, Lcom/amazon/kcp/application/ReddingApplication$2;->this$0:Lcom/amazon/kcp/application/ReddingApplication;

    invoke-virtual {v0}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    :try_start_0
    const-string v1, "discovery.json"

    .line 291
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 293
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot load asset file: discovery.json"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->fatal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 294
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
