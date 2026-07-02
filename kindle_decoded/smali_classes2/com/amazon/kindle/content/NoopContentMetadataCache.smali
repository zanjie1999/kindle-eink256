.class public Lcom/amazon/kindle/content/NoopContentMetadataCache;
.super Ljava/lang/Object;
.source "NoopContentMetadataCache.java"

# interfaces
.implements Lcom/amazon/kindle/content/IContentMetadataCache;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetadata(Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getMetadata(Ljava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public putMetadata(Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 0

    return-void
.end method
