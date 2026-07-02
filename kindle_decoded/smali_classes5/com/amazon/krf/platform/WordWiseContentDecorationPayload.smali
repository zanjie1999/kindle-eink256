.class public Lcom/amazon/krf/platform/WordWiseContentDecorationPayload;
.super Lcom/amazon/krf/platform/ContentDecorationPayload;
.source "WordWiseContentDecorationPayload.java"


# instance fields
.field private m_RenderLowConfidenceIcon:Z

.field private m_gloss:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/amazon/krf/platform/ContentDecorationPayload;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/amazon/krf/platform/WordWiseContentDecorationPayload;->m_gloss:Ljava/lang/String;

    .line 12
    iput-boolean p2, p0, Lcom/amazon/krf/platform/WordWiseContentDecorationPayload;->m_RenderLowConfidenceIcon:Z

    return-void
.end method


# virtual methods
.method public getGloss()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amazon/krf/platform/WordWiseContentDecorationPayload;->m_gloss:Ljava/lang/String;

    return-object v0
.end method

.method public getPayloadType()Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;
    .locals 1

    .line 25
    sget-object v0, Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;->WordWiseCotentDecorationPayload:Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;

    return-object v0
.end method

.method public getRenderLowConfidenceIcon()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/amazon/krf/platform/WordWiseContentDecorationPayload;->m_RenderLowConfidenceIcon:Z

    return v0
.end method
