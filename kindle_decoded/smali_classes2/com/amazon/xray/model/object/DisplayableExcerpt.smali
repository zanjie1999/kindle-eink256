.class public Lcom/amazon/xray/model/object/DisplayableExcerpt;
.super Ljava/lang/Object;
.source "DisplayableExcerpt.java"


# instance fields
.field private final image:Landroid/graphics/Bitmap;

.field private final pageLabel:Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;

.field private final relatedEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/object/Entity;",
            ">;"
        }
    .end annotation
.end field

.field private final text:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Landroid/graphics/Bitmap;",
            "Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;",
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/object/Entity;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p3}, Lcom/amazon/xray/util/Validate;->notNull(Ljava/lang/Object;)V

    .line 35
    iput-object p1, p0, Lcom/amazon/xray/model/object/DisplayableExcerpt;->text:Ljava/lang/CharSequence;

    .line 36
    iput-object p3, p0, Lcom/amazon/xray/model/object/DisplayableExcerpt;->pageLabel:Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;

    .line 37
    iput-object p2, p0, Lcom/amazon/xray/model/object/DisplayableExcerpt;->image:Landroid/graphics/Bitmap;

    .line 38
    iput-object p4, p0, Lcom/amazon/xray/model/object/DisplayableExcerpt;->relatedEntities:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/xray/model/object/DisplayableExcerpt;->image:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPageLabel()Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/xray/model/object/DisplayableExcerpt;->pageLabel:Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;

    return-object v0
.end method

.method public getRelatedEntities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/object/Entity;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/amazon/xray/model/object/DisplayableExcerpt;->relatedEntities:Ljava/util/List;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/xray/model/object/DisplayableExcerpt;->text:Ljava/lang/CharSequence;

    return-object v0
.end method
