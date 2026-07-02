.class public Lcom/amazon/xray/model/object/Excerpt;
.super Ljava/lang/Object;
.source "Excerpt.java"


# instance fields
.field private final goTo:I

.field private final id:I

.field private final imageId:Ljava/lang/String;

.field private final length:I

.field private final relatedEntityIds:Ljava/lang/String;

.field private final start:I


# direct methods
.method public constructor <init>(ILjava/lang/String;IIILjava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p3}, Lcom/amazon/xray/util/Validate;->notNegative(I)V

    .line 35
    invoke-static {p4}, Lcom/amazon/xray/util/Validate;->notNegative(I)V

    .line 37
    iput p1, p0, Lcom/amazon/xray/model/object/Excerpt;->id:I

    .line 38
    iput-object p2, p0, Lcom/amazon/xray/model/object/Excerpt;->imageId:Ljava/lang/String;

    .line 39
    iput p3, p0, Lcom/amazon/xray/model/object/Excerpt;->start:I

    .line 40
    iput p4, p0, Lcom/amazon/xray/model/object/Excerpt;->length:I

    .line 41
    iput p5, p0, Lcom/amazon/xray/model/object/Excerpt;->goTo:I

    .line 42
    iput-object p6, p0, Lcom/amazon/xray/model/object/Excerpt;->relatedEntityIds:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getGoTo()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/amazon/xray/model/object/Excerpt;->goTo:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/amazon/xray/model/object/Excerpt;->id:I

    return v0
.end method

.method public getImageId()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/xray/model/object/Excerpt;->imageId:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/amazon/xray/model/object/Excerpt;->length:I

    return v0
.end method

.method public getRelatedEntitiesIds()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/amazon/xray/model/object/Excerpt;->relatedEntityIds:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/amazon/xray/model/object/Excerpt;->start:I

    return v0
.end method
