.class public Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;
.super Ljava/lang/Object;
.source "AudiobookMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/audio/metadata/AudiobookMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private asin:Lcom/audible/mobile/domain/Asin;

.field private author:Ljava/lang/String;

.field private category:Ljava/lang/String;

.field private chapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/audible/mobile/audio/metadata/ChapterMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private contentDeliveryType:Lcom/audible/mobile/domain/ContentDeliveryType;

.field private contentType:Lcom/audible/mobile/domain/ContentType;

.field private copyright:Ljava/lang/String;

.field private coverArtUrl:Ljava/lang/String;

.field private duration:I

.field private fileName:Landroid/net/Uri;

.field private longDescription:Ljava/lang/String;

.field private narrator:Ljava/lang/String;

.field private parentProductId:Lcom/audible/mobile/domain/ProductId;

.field private parentShortTitle:Ljava/lang/String;

.field private parentTitle:Ljava/lang/String;

.field private pdfUrl:Ljava/lang/String;

.field private productId:Lcom/audible/mobile/domain/ProductId;

.field private provider:Ljava/lang/String;

.field private publishDate:Ljava/lang/String;

.field private quality:Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;

.field private shortDescription:Ljava/lang/String;

.field private shortTitle:Ljava/lang/String;

.field private subCategory:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private trackNumber:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 581
    sget-object v0, Lcom/audible/mobile/domain/Asin;->NONE:Lcom/audible/mobile/domain/Asin;

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->asin:Lcom/audible/mobile/domain/Asin;

    .line 602
    sget-object v0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;->STANDARD:Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->quality:Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;

    .line 603
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->chapters:Ljava/util/List;

    .line 604
    sget-object v0, Lcom/audible/mobile/domain/ContentType;->Other:Lcom/audible/mobile/domain/ContentType;

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->contentType:Lcom/audible/mobile/domain/ContentType;

    .line 605
    sget-object v0, Lcom/audible/mobile/domain/ContentDeliveryType;->Unknown:Lcom/audible/mobile/domain/ContentDeliveryType;

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->contentDeliveryType:Lcom/audible/mobile/domain/ContentDeliveryType;

    return-void
.end method

.method static synthetic access$000(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)Lcom/audible/mobile/domain/Asin;
    .locals 0

    .line 579
    iget-object p0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->asin:Lcom/audible/mobile/domain/Asin;

    return-object p0
.end method

.method static synthetic access$100(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)Lcom/audible/mobile/domain/ProductId;
    .locals 0

    .line 579
    iget-object p0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->productId:Lcom/audible/mobile/domain/ProductId;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)Ljava/lang/String;
    .locals 0

    .line 579
    iget-object p0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->shortDescription:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)Ljava/lang/String;
    .locals 0

    .line 579
    iget-object p0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)Ljava/lang/String;
    .locals 0

    .line 579
    iget-object p0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->shortTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)Ljava/lang/String;
    .locals 0

    .line 579
    iget-object p0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->parentTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)Ljava/lang/String;
    .locals 0

    .line 579
    iget-object p0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->parentShortTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)Ljava/lang/String;
    .locals 0

    .line 579
    iget-object p0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->provider:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)Ljava/lang/String;
    .locals 0

    .line 579
    iget-object p0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->publishDate:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)Ljava/lang/String;
    .locals 0

    .line 579
    iget-object p0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->pdfUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)Ljava/lang/String;
    .locals 0

    .line 579
    iget-object p0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->coverArtUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)I
    .locals 0

    .line 579
    iget p0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->duration:I

    return p0
.end method

.method static synthetic access$200(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)Lcom/audible/mobile/domain/ProductId;
    .locals 0

    .line 579
    iget-object p0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->parentProductId:Lcom/audible/mobile/domain/ProductId;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)I
    .locals 0

    .line 579
    iget p0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->trackNumber:I

    return p0
.end method

.method static synthetic access$2100(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)Ljava/util/List;
    .locals 0

    .line 579
    iget-object p0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->chapters:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;
    .locals 0

    .line 579
    iget-object p0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->quality:Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)Lcom/audible/mobile/domain/ContentType;
    .locals 0

    .line 579
    iget-object p0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->contentType:Lcom/audible/mobile/domain/ContentType;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)Lcom/audible/mobile/domain/ContentDeliveryType;
    .locals 0

    .line 579
    iget-object p0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->contentDeliveryType:Lcom/audible/mobile/domain/ContentDeliveryType;

    return-object p0
.end method

.method static synthetic access$300(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)Landroid/net/Uri;
    .locals 0

    .line 579
    iget-object p0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->fileName:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$400(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)Ljava/lang/String;
    .locals 0

    .line 579
    iget-object p0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->author:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)Ljava/lang/String;
    .locals 0

    .line 579
    iget-object p0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->narrator:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)Ljava/lang/String;
    .locals 0

    .line 579
    iget-object p0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->category:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)Ljava/lang/String;
    .locals 0

    .line 579
    iget-object p0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->subCategory:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)Ljava/lang/String;
    .locals 0

    .line 579
    iget-object p0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->copyright:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)Ljava/lang/String;
    .locals 0

    .line 579
    iget-object p0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->longDescription:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public asin(Lcom/audible/mobile/domain/Asin;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;
    .locals 0

    .line 638
    iput-object p1, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->asin:Lcom/audible/mobile/domain/Asin;

    return-object p0
.end method

.method public author(Ljava/lang/String;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;
    .locals 0

    .line 662
    iput-object p1, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->author:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/audible/mobile/audio/metadata/AudiobookMetadata;
    .locals 2

    .line 789
    new-instance v0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;-><init>(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;Lcom/audible/mobile/audio/metadata/AudiobookMetadata$1;)V

    return-object v0
.end method

.method public category(Ljava/lang/String;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;
    .locals 0

    .line 674
    iput-object p1, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->category:Ljava/lang/String;

    return-object p0
.end method

.method public chapters(Ljava/util/List;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/audible/mobile/audio/metadata/ChapterMetadata;",
            ">;)",
            "Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 765
    iput-object p1, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->chapters:Ljava/util/List;

    :cond_0
    return-object p0
.end method

.method public copy(Lcom/audible/mobile/audio/metadata/AudiobookMetadata;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;
    .locals 1

    .line 608
    invoke-virtual {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->asin:Lcom/audible/mobile/domain/Asin;

    .line 609
    invoke-virtual {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getProductId()Lcom/audible/mobile/domain/ProductId;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->productId:Lcom/audible/mobile/domain/ProductId;

    .line 610
    invoke-virtual {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getParentProductId()Lcom/audible/mobile/domain/ProductId;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->parentProductId:Lcom/audible/mobile/domain/ProductId;

    .line 611
    invoke-virtual {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getFile()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->fileName:Landroid/net/Uri;

    .line 612
    invoke-virtual {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getAuthor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->author:Ljava/lang/String;

    .line 613
    invoke-virtual {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getNarrator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->narrator:Ljava/lang/String;

    .line 614
    invoke-virtual {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getCategory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->category:Ljava/lang/String;

    .line 615
    invoke-virtual {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getSubcategory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->subCategory:Ljava/lang/String;

    .line 616
    invoke-virtual {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getCopyright()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->copyright:Ljava/lang/String;

    .line 617
    invoke-virtual {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getLongDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->longDescription:Ljava/lang/String;

    .line 618
    invoke-virtual {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getShortDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->shortDescription:Ljava/lang/String;

    .line 619
    invoke-virtual {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->title:Ljava/lang/String;

    .line 620
    invoke-virtual {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getShortTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->shortTitle:Ljava/lang/String;

    .line 621
    invoke-virtual {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getParentTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->parentTitle:Ljava/lang/String;

    .line 622
    invoke-virtual {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getParentShortTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->parentShortTitle:Ljava/lang/String;

    .line 623
    invoke-virtual {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getProvider()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->provider:Ljava/lang/String;

    .line 624
    invoke-virtual {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getPublishDate()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->publishDate:Ljava/lang/String;

    .line 625
    invoke-static {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->access$2600(Lcom/audible/mobile/audio/metadata/AudiobookMetadata;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->pdfUrl:Ljava/lang/String;

    .line 626
    invoke-static {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->access$2700(Lcom/audible/mobile/audio/metadata/AudiobookMetadata;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->coverArtUrl:Ljava/lang/String;

    .line 627
    invoke-static {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->access$2800(Lcom/audible/mobile/audio/metadata/AudiobookMetadata;)I

    move-result v0

    iput v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->duration:I

    .line 628
    invoke-virtual {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getTrackNumber()I

    move-result v0

    iput v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->trackNumber:I

    .line 629
    invoke-virtual {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getAudioQuality()Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->quality:Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;

    .line 630
    invoke-virtual {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getChapters()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->chapters:Ljava/util/List;

    .line 631
    invoke-virtual {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getContentType()Lcom/audible/mobile/domain/ContentType;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->contentType:Lcom/audible/mobile/domain/ContentType;

    .line 632
    invoke-virtual {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getContentDeliveryType()Lcom/audible/mobile/domain/ContentDeliveryType;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->contentDeliveryType:Lcom/audible/mobile/domain/ContentDeliveryType;

    return-object p0
.end method

.method public copyright(Ljava/lang/String;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;
    .locals 0

    .line 686
    iput-object p1, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->copyright:Ljava/lang/String;

    return-object p0
.end method

.method public duration(I)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;
    .locals 0

    .line 752
    iput p1, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->duration:I

    return-object p0
.end method

.method public fileName(Landroid/net/Uri;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;
    .locals 0

    .line 656
    iput-object p1, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->fileName:Landroid/net/Uri;

    return-object p0
.end method

.method public longDescription(Ljava/lang/String;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;
    .locals 0

    .line 692
    iput-object p1, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->longDescription:Ljava/lang/String;

    return-object p0
.end method

.method public narrator(Ljava/lang/String;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;
    .locals 0

    .line 668
    iput-object p1, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->narrator:Ljava/lang/String;

    return-object p0
.end method

.method public parentProductId(Lcom/audible/mobile/domain/ProductId;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;
    .locals 0

    .line 650
    iput-object p1, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->parentProductId:Lcom/audible/mobile/domain/ProductId;

    return-object p0
.end method

.method public parentShortTitle(Ljava/lang/String;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;
    .locals 0

    .line 722
    iput-object p1, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->parentShortTitle:Ljava/lang/String;

    return-object p0
.end method

.method public parentTitle(Ljava/lang/String;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;
    .locals 0

    .line 716
    iput-object p1, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->parentTitle:Ljava/lang/String;

    return-object p0
.end method

.method public productId(Lcom/audible/mobile/domain/ProductId;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;
    .locals 0

    .line 644
    iput-object p1, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->productId:Lcom/audible/mobile/domain/ProductId;

    return-object p0
.end method

.method public provider(Ljava/lang/String;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;
    .locals 0

    .line 728
    iput-object p1, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->provider:Ljava/lang/String;

    return-object p0
.end method

.method public publishDate(Ljava/lang/String;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;
    .locals 0

    .line 734
    iput-object p1, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->publishDate:Ljava/lang/String;

    return-object p0
.end method

.method public quality(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;
    .locals 0

    .line 772
    iput-object p1, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->quality:Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;

    return-object p0
.end method

.method public shortDescription(Ljava/lang/String;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;
    .locals 0

    .line 698
    iput-object p1, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->shortDescription:Ljava/lang/String;

    return-object p0
.end method

.method public shortTitle(Ljava/lang/String;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;
    .locals 0

    .line 710
    iput-object p1, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->shortTitle:Ljava/lang/String;

    return-object p0
.end method

.method public subCategory(Ljava/lang/String;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;
    .locals 0

    .line 680
    iput-object p1, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->subCategory:Ljava/lang/String;

    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;
    .locals 0

    .line 704
    iput-object p1, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public trackNumber(I)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;
    .locals 0

    .line 758
    iput p1, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->trackNumber:I

    return-object p0
.end method
