.class Lcom/amazon/bookwizard/service/GetRecsBody$RatingsList;
.super Ljava/lang/Object;
.source "GetRecsBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/bookwizard/service/GetRecsBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RatingsList"
.end annotation


# instance fields
.field private itemInputs:[Lcom/amazon/bookwizard/service/GetRecsBody$RatingData;

.field private type:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/bookwizard/service/GetRecsBody$RatingData;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ImageContainerWidgetUserData"

    .line 58
    iput-object v0, p0, Lcom/amazon/bookwizard/service/GetRecsBody$RatingsList;->type:Ljava/lang/String;

    .line 62
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/amazon/bookwizard/service/GetRecsBody$RatingData;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/amazon/bookwizard/service/GetRecsBody$RatingData;

    iput-object p1, p0, Lcom/amazon/bookwizard/service/GetRecsBody$RatingsList;->itemInputs:[Lcom/amazon/bookwizard/service/GetRecsBody$RatingData;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/amazon/bookwizard/service/GetRecsBody$1;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/amazon/bookwizard/service/GetRecsBody$RatingsList;-><init>(Ljava/util/List;)V

    return-void
.end method
