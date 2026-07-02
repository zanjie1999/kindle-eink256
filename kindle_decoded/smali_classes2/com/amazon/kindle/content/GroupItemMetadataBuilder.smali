.class public Lcom/amazon/kindle/content/GroupItemMetadataBuilder;
.super Ljava/lang/Object;
.source "GroupItemMetadataBuilder.java"


# static fields
.field private static final DEFAULT_ITEM_TYPE:Ljava/lang/String; = "VOLUME"


# instance fields
.field private itemAsin:Ljava/lang/String;

.field private itemType:Ljava/lang/String;

.field private position:F

.field private positionLabel:Ljava/lang/String;

.field private positionLabelPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0}, Lcom/amazon/kindle/content/GroupItemMetadataBuilder;->clear()Lcom/amazon/kindle/content/GroupItemMetadataBuilder;

    return-void
.end method


# virtual methods
.method public build()Lcom/amazon/kindle/content/GroupItemMetadata;
    .locals 7

    .line 34
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupItemMetadataBuilder;->itemAsin:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 37
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupItemMetadataBuilder;->itemType:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "VOLUME"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v3, v0

    .line 38
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupItemMetadataBuilder;->positionLabel:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_1

    move-object v5, v1

    goto :goto_1

    :cond_1
    move-object v5, v0

    .line 39
    :goto_1
    new-instance v2, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    iget-object v0, p0, Lcom/amazon/kindle/content/GroupItemMetadataBuilder;->itemAsin:Ljava/lang/String;

    sget-object v4, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {v2, v0, v4}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    .line 40
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupItemMetadataBuilder;->positionLabelPrefix:Ljava/lang/String;

    if-nez v0, :cond_2

    move-object v6, v1

    goto :goto_2

    :cond_2
    move-object v6, v0

    .line 41
    :goto_2
    new-instance v0, Lcom/amazon/kindle/content/GroupItemMetadata;

    iget v4, p0, Lcom/amazon/kindle/content/GroupItemMetadataBuilder;->position:F

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/content/GroupItemMetadata;-><init>(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 35
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must have called setItemAsin before you can call build"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()Lcom/amazon/kindle/content/GroupItemMetadataBuilder;
    .locals 2

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/amazon/kindle/content/GroupItemMetadataBuilder;->itemAsin:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/amazon/kindle/content/GroupItemMetadataBuilder;->itemType:Ljava/lang/String;

    const/high16 v1, -0x40800000    # -1.0f

    .line 48
    iput v1, p0, Lcom/amazon/kindle/content/GroupItemMetadataBuilder;->position:F

    .line 49
    iput-object v0, p0, Lcom/amazon/kindle/content/GroupItemMetadataBuilder;->positionLabel:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/amazon/kindle/content/GroupItemMetadataBuilder;->positionLabelPrefix:Ljava/lang/String;

    return-object p0
.end method

.method public isValid()Z
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupItemMetadataBuilder;->itemAsin:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setItemAsin(Ljava/lang/String;)Lcom/amazon/kindle/content/GroupItemMetadataBuilder;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/amazon/kindle/content/GroupItemMetadataBuilder;->itemAsin:Ljava/lang/String;

    return-object p0
.end method

.method public setItemType(Ljava/lang/String;)Lcom/amazon/kindle/content/GroupItemMetadataBuilder;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/amazon/kindle/content/GroupItemMetadataBuilder;->itemType:Ljava/lang/String;

    return-object p0
.end method

.method public setPosition(F)Lcom/amazon/kindle/content/GroupItemMetadataBuilder;
    .locals 0

    .line 68
    iput p1, p0, Lcom/amazon/kindle/content/GroupItemMetadataBuilder;->position:F

    return-object p0
.end method

.method public setPositionLabel(Ljava/lang/String;)Lcom/amazon/kindle/content/GroupItemMetadataBuilder;
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/amazon/kindle/content/GroupItemMetadataBuilder;->positionLabel:Ljava/lang/String;

    return-object p0
.end method

.method public setPositionLabelPrefix(Ljava/lang/String;)Lcom/amazon/kindle/content/GroupItemMetadataBuilder;
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/amazon/kindle/content/GroupItemMetadataBuilder;->positionLabelPrefix:Ljava/lang/String;

    return-object p0
.end method
