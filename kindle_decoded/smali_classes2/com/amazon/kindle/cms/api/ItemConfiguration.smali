.class public final Lcom/amazon/kindle/cms/api/ItemConfiguration;
.super Ljava/lang/Object;
.source "ItemConfiguration.java"


# static fields
.field public static final DEFAULT_CONFIG:Lcom/amazon/kindle/cms/api/ItemConfiguration;


# instance fields
.field deliveryDate:Ljava/util/Date;

.field downloadId:Ljava/lang/Long;

.field final itemFlags:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/amazon/kindle/cms/api/Item$ItemFlag;",
            ">;"
        }
    .end annotation
.end field

.field localContentPath:Landroid/net/Uri;

.field private m_readOnly:Z

.field final originFlags:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/amazon/kindle/cms/api/Item$OriginFlag;",
            ">;"
        }
    .end annotation
.end field

.field ownerOriginId:Ljava/lang/String;

.field secondaryDisplayName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lcom/amazon/kindle/cms/api/ItemConfiguration;

    invoke-direct {v0}, Lcom/amazon/kindle/cms/api/ItemConfiguration;-><init>()V

    sput-object v0, Lcom/amazon/kindle/cms/api/ItemConfiguration;->DEFAULT_CONFIG:Lcom/amazon/kindle/cms/api/ItemConfiguration;

    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/cms/api/ItemConfiguration;->setOwned(Z)Lcom/amazon/kindle/cms/api/ItemConfiguration;

    .line 20
    sget-object v0, Lcom/amazon/kindle/cms/api/ItemConfiguration;->DEFAULT_CONFIG:Lcom/amazon/kindle/cms/api/ItemConfiguration;

    iput-boolean v1, v0, Lcom/amazon/kindle/cms/api/ItemConfiguration;->m_readOnly:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-class v0, Lcom/amazon/kindle/cms/api/Item$ItemFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/cms/api/ItemConfiguration;->itemFlags:Ljava/util/EnumSet;

    .line 26
    const-class v0, Lcom/amazon/kindle/cms/api/Item$OriginFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/cms/api/ItemConfiguration;->originFlags:Ljava/util/EnumSet;

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/amazon/kindle/cms/api/ItemConfiguration;->downloadId:Ljava/lang/Long;

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/amazon/kindle/cms/api/ItemConfiguration;->m_readOnly:Z

    return-void
.end method

.method private checkMutability()V
    .locals 2

    .line 207
    iget-boolean v0, p0, Lcom/amazon/kindle/cms/api/ItemConfiguration;->m_readOnly:Z

    if-nez v0, :cond_0

    return-void

    .line 208
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform operation on the default configuration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static doSetFlag(Ljava/util/EnumSet;Ljava/lang/Enum;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/util/EnumSet<",
            "TE;>;TE;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 200
    invoke-virtual {p0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public setOwned(Z)Lcom/amazon/kindle/cms/api/ItemConfiguration;
    .locals 2

    .line 105
    invoke-direct {p0}, Lcom/amazon/kindle/cms/api/ItemConfiguration;->checkMutability()V

    .line 106
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/ItemConfiguration;->originFlags:Ljava/util/EnumSet;

    sget-object v1, Lcom/amazon/kindle/cms/api/Item$OriginFlag;->Owned:Lcom/amazon/kindle/cms/api/Item$OriginFlag;

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/cms/api/ItemConfiguration;->doSetFlag(Ljava/util/EnumSet;Ljava/lang/Enum;Z)V

    return-object p0
.end method
