.class public final Lcom/amazon/kindle/cms/api/ItemSimilarities;
.super Ljava/lang/Object;
.source "ItemSimilarities.java"


# instance fields
.field private final m_info:Lcom/amazon/kindle/cms/ipc/ItemSimilaritiesInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/amazon/kindle/cms/ipc/ItemSimilaritiesInfo;

    invoke-direct {v0}, Lcom/amazon/kindle/cms/ipc/ItemSimilaritiesInfo;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/cms/api/ItemSimilarities;->m_info:Lcom/amazon/kindle/cms/ipc/ItemSimilaritiesInfo;

    return-void
.end method

.method public static getLibraryUri()Landroid/net/Uri;
    .locals 1

    const-string v0, "kindle.content.similarity"

    .line 21
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
