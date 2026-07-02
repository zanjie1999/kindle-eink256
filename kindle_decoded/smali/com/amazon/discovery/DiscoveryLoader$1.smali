.class final Lcom/amazon/discovery/DiscoveryLoader$1;
.super Ljava/lang/Object;
.source "DiscoveryLoader.java"

# interfaces
.implements Lcom/amazon/discovery/DiscoveryLoader$InputStreamProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/discovery/DiscoveryLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 2

    .line 44
    const-class v0, Lcom/amazon/discovery/DiscoveryLoader;

    const-string v1, "/discovery.json"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
