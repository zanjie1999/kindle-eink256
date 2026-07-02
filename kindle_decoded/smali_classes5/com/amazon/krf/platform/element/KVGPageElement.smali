.class public Lcom/amazon/krf/platform/element/KVGPageElement;
.super Lcom/amazon/krf/platform/element/TextPageElement;
.source "KVGPageElement.java"


# instance fields
.field private m_mathML:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/krf/platform/PositionRange;[Landroid/graphics/RectF;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/krf/platform/element/TextPageElement;-><init>(Lcom/amazon/krf/platform/PositionRange;[Landroid/graphics/RectF;Ljava/lang/String;)V

    .line 20
    iput-object p4, p0, Lcom/amazon/krf/platform/element/KVGPageElement;->m_mathML:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMathML()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/krf/platform/element/KVGPageElement;->m_mathML:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method
