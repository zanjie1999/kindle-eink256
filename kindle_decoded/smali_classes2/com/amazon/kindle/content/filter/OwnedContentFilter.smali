.class public Lcom/amazon/kindle/content/filter/OwnedContentFilter;
.super Ljava/lang/Object;
.source "OwnedContentFilter.java"

# interfaces
.implements Lcom/amazon/kindle/content/filter/ContentMetadataFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isFiltered(Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 0

    .line 14
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->isOwned()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
