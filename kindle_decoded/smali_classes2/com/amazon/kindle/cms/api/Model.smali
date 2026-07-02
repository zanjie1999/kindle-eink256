.class public final Lcom/amazon/kindle/cms/api/Model;
.super Ljava/lang/Object;
.source "Model.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final NO_MODEL:Lcom/amazon/kindle/cms/api/Model;


# instance fields
.field largeTextures:Ljava/lang/String;

.field final m_modelUri:Landroid/net/Uri;

.field smallTextures:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lcom/amazon/kindle/cms/api/Model;

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/cms/api/Model;-><init>(Landroid/net/Uri;)V

    sput-object v0, Lcom/amazon/kindle/cms/api/Model;->NO_MODEL:Lcom/amazon/kindle/cms/api/Model;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, v0, v0}, Lcom/amazon/kindle/cms/api/Model;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 77
    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    :cond_0
    iput-object p1, p0, Lcom/amazon/kindle/cms/api/Model;->m_modelUri:Landroid/net/Uri;

    .line 78
    iput-object p2, p0, Lcom/amazon/kindle/cms/api/Model;->largeTextures:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Lcom/amazon/kindle/cms/api/Model;->smallTextures:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getModelUri()Landroid/net/Uri;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/Model;->m_modelUri:Landroid/net/Uri;

    return-object v0
.end method
