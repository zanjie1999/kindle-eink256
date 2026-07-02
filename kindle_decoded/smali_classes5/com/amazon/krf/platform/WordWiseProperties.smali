.class public Lcom/amazon/krf/platform/WordWiseProperties;
.super Ljava/lang/Object;
.source "WordWiseProperties.java"


# instance fields
.field private m_Country:Ljava/lang/String;

.field private m_Lang:Ljava/lang/String;

.field private m_RenderLowConfidenceIcon:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/amazon/krf/platform/WordWiseProperties;->m_Country:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/amazon/krf/platform/WordWiseProperties;->m_Lang:Ljava/lang/String;

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/amazon/krf/platform/WordWiseProperties;->m_RenderLowConfidenceIcon:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/amazon/krf/platform/WordWiseProperties;->m_Country:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/amazon/krf/platform/WordWiseProperties;->m_Lang:Ljava/lang/String;

    .line 14
    iput-boolean p3, p0, Lcom/amazon/krf/platform/WordWiseProperties;->m_RenderLowConfidenceIcon:Z

    return-void
.end method


# virtual methods
.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/krf/platform/WordWiseProperties;->m_Country:Ljava/lang/String;

    return-object v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/krf/platform/WordWiseProperties;->m_Lang:Ljava/lang/String;

    return-object v0
.end method

.method public getRenderLowConfidenceIcon()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/amazon/krf/platform/WordWiseProperties;->m_RenderLowConfidenceIcon:Z

    return v0
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/amazon/krf/platform/WordWiseProperties;->m_Country:Ljava/lang/String;

    return-void
.end method

.method public setLang(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/amazon/krf/platform/WordWiseProperties;->m_Lang:Ljava/lang/String;

    return-void
.end method

.method public setRenderLowConfidenceIcon(Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/amazon/krf/platform/WordWiseProperties;->m_RenderLowConfidenceIcon:Z

    return-void
.end method
