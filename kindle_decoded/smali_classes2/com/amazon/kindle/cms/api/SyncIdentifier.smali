.class public final Lcom/amazon/kindle/cms/api/SyncIdentifier;
.super Ljava/lang/Object;
.source "SyncIdentifier.java"


# static fields
.field private static final AMZN_SCHEME:Ljava/lang/String; = "amzn"

.field private static final LOCAL_SCHEME:Ljava/lang/String; = "local"

.field private static final SEPERATOR:Ljava/lang/String; = "+"


# instance fields
.field private m_extendedId:Ljava/lang/String;

.field private m_id:Ljava/lang/String;

.field private m_isLocal:Z

.field private m_type:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUri()Landroid/net/Uri;
    .locals 3

    .line 153
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 155
    iget-boolean v1, p0, Lcom/amazon/kindle/cms/api/SyncIdentifier;->m_isLocal:Z

    if-eqz v1, :cond_0

    const-string v1, "local"

    goto :goto_0

    :cond_0
    const-string v1, "amzn"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 156
    iget-object v1, p0, Lcom/amazon/kindle/cms/api/SyncIdentifier;->m_extendedId:Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/ebook/util/text/StringUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/kindle/cms/api/SyncIdentifier;->m_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/cms/api/SyncIdentifier;->m_extendedId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/cms/api/SyncIdentifier;->m_id:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 157
    iget-object v1, p0, Lcom/amazon/kindle/cms/api/SyncIdentifier;->m_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 159
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
