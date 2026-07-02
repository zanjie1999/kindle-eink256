.class public Lcom/amazon/kcp/debug/GlideDebugMenuPage;
.super Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
.source "GlideDebugMenuPage.java"


# static fields
.field private static final TEST_REF_TAG:Ljava/lang/String; = "test_ref_tag"


# instance fields
.field private final acquisitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final offerIDToOfferMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/glide/KRXAsinOffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->offerIDToOfferMap:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "Select order to cancel..."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->acquisitions:Ljava/util/List;

    .line 49
    iput-object p1, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/debug/GlideDebugMenuPage;)Landroid/content/Context;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/debug/GlideDebugMenuPage;Ljava/lang/String;Ljava/lang/String;JLandroid/view/ViewGroup;)V
    .locals 0

    .line 40
    invoke-direct/range {p0 .. p5}, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->removeAcquiredOffer(Ljava/lang/String;Ljava/lang/String;JLandroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/amazon/kcp/debug/GlideDebugMenuPage;Ljava/util/List;Landroid/view/ViewGroup;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->populateSpinner(Ljava/util/List;Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kcp/debug/GlideDebugMenuPage;ILandroid/view/ViewGroup;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->populateOfferDetails(ILandroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/kcp/debug/GlideDebugMenuPage;Landroid/view/ViewGroup;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer;
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->getSelectedOffer(Landroid/view/ViewGroup;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/debug/GlideDebugMenuPage;)Ljava/util/Map;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->offerIDToOfferMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kcp/debug/GlideDebugMenuPage;Landroid/view/ViewGroup;)Ljava/lang/String;
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->getClientId(Landroid/view/ViewGroup;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/kcp/debug/GlideDebugMenuPage;Ljava/lang/String;Ljava/lang/String;JLandroid/view/ViewGroup;)V
    .locals 0

    .line 40
    invoke-direct/range {p0 .. p5}, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->addAcquiredOffer(Ljava/lang/String;Ljava/lang/String;JLandroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$700(Lcom/amazon/kcp/debug/GlideDebugMenuPage;Landroid/view/ViewGroup;)Ljava/util/List;
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->getAsins(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/kcp/debug/GlideDebugMenuPage;Ljava/util/List;Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->callGetOffersForAsin(Ljava/util/List;Ljava/lang/String;Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$900(Lcom/amazon/kcp/debug/GlideDebugMenuPage;Ljava/util/List;Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->callGetBatchOffersForAsins(Ljava/util/List;Ljava/lang/String;Landroid/view/ViewGroup;)V

    return-void
.end method

.method private addAcquiredOffer(Ljava/lang/String;Ljava/lang/String;JLandroid/view/ViewGroup;)V
    .locals 0

    .line 296
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->formatAcquisitionDetails(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 297
    iget-object p2, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->acquisitions:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    sget p1, Lcom/amazon/kindle/krl/R$id;->acquired_offers_spinner:I

    invoke-virtual {p5, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    if-nez p1, :cond_0

    return-void

    .line 304
    :cond_0
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p2

    check-cast p2, Landroid/widget/ArrayAdapter;

    .line 305
    invoke-virtual {p2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    const/4 p2, 0x1

    .line 307
    iget-object p3, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->acquisitions:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_1

    invoke-virtual {p1}, Landroid/widget/Spinner;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 308
    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private callGetBatchOffersForAsins(Ljava/util/List;Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    .line 403
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getStoreManager()Lcom/amazon/kindle/krx/store/IStoreManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/debug/GlideDebugMenuPage$10;

    invoke-direct {v1, p0, p1, p3}, Lcom/amazon/kcp/debug/GlideDebugMenuPage$10;-><init>(Lcom/amazon/kcp/debug/GlideDebugMenuPage;Ljava/util/List;Landroid/view/ViewGroup;)V

    const-string/jumbo p3, "test_ref_tag"

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/amazon/kindle/krx/store/IStoreManager;->getBatchOffersForAsins(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;)V

    return-void
.end method

.method private callGetOffersForAsin(Ljava/util/List;Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 378
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 379
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getStoreManager()Lcom/amazon/kindle/krx/store/IStoreManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/debug/GlideDebugMenuPage$9;

    invoke-direct {v1, p0, p1, p3}, Lcom/amazon/kcp/debug/GlideDebugMenuPage$9;-><init>(Lcom/amazon/kcp/debug/GlideDebugMenuPage;Ljava/lang/String;Landroid/view/ViewGroup;)V

    const-string/jumbo p3, "test_ref_tag"

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/amazon/kindle/krx/store/IStoreManager;->getOffersForAsin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;)V

    return-void
.end method

.method private formatAcquisitionDetails(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 340
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "ASIN:%s OrderID:%s OrderItemID:%d"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getAsins(Landroid/view/ViewGroup;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 453
    sget v0, Lcom/amazon/kindle/krl/R$id;->get_offers_asin:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ","

    .line 454
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private getClientId(Landroid/view/ViewGroup;)Ljava/lang/String;
    .locals 1

    .line 350
    sget v0, Lcom/amazon/kindle/krl/R$id;->client_id:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getIdForOffer(Lcom/amazon/kindle/krx/glide/KRXAsinOffer;)Ljava/lang/String;
    .locals 3

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getActionType()Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getOfferId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getSelectedOffer(Landroid/view/ViewGroup;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer;
    .locals 1

    .line 344
    sget v0, Lcom/amazon/kindle/krl/R$id;->offers_spinner:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    .line 345
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 346
    iget-object v0, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->offerIDToOfferMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    return-object p1
.end method

.method private initializeAcquiredOffersSpinner(Landroid/view/ViewGroup;)V
    .locals 4

    .line 140
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->acquisitions:Ljava/util/List;

    const v3, 0x1090008

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 142
    sget v1, Lcom/amazon/kindle/krl/R$id;->acquired_offers_spinner:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    if-nez v1, :cond_0

    return-void

    .line 146
    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 147
    new-instance v0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$3;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/debug/GlideDebugMenuPage$3;-><init>(Lcom/amazon/kcp/debug/GlideDebugMenuPage;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method private initializeBorrowOfferButton(Landroid/view/ViewGroup;)V
    .locals 2

    .line 222
    sget v0, Lcom/amazon/kindle/krl/R$id;->borrow_offer:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    .line 226
    :cond_0
    new-instance v1, Lcom/amazon/kcp/debug/GlideDebugMenuPage$6;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/debug/GlideDebugMenuPage$6;-><init>(Lcom/amazon/kcp/debug/GlideDebugMenuPage;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initializeBuyOfferButton(Landroid/view/ViewGroup;)V
    .locals 2

    .line 255
    sget v0, Lcom/amazon/kindle/krl/R$id;->buy_offer:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    .line 259
    :cond_0
    new-instance v1, Lcom/amazon/kcp/debug/GlideDebugMenuPage$7;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/debug/GlideDebugMenuPage$7;-><init>(Lcom/amazon/kcp/debug/GlideDebugMenuPage;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initializeCancelOfferButton(Landroid/view/ViewGroup;)V
    .locals 2

    .line 73
    sget v0, Lcom/amazon/kindle/krl/R$id;->cancel_offer:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    .line 77
    :cond_0
    new-instance v1, Lcom/amazon/kcp/debug/GlideDebugMenuPage$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/debug/GlideDebugMenuPage$1;-><init>(Lcom/amazon/kcp/debug/GlideDebugMenuPage;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initializeCorruptOfferButton(Landroid/view/ViewGroup;)V
    .locals 2

    .line 193
    sget v0, Lcom/amazon/kindle/krl/R$id;->corrupt_offer:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    .line 197
    :cond_0
    new-instance v1, Lcom/amazon/kcp/debug/GlideDebugMenuPage$5;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/debug/GlideDebugMenuPage$5;-><init>(Lcom/amazon/kcp/debug/GlideDebugMenuPage;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initializeGetOfferButton(Landroid/view/ViewGroup;)V
    .locals 2

    .line 354
    sget v0, Lcom/amazon/kindle/krl/R$id;->get_offers:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    .line 358
    :cond_0
    new-instance v1, Lcom/amazon/kcp/debug/GlideDebugMenuPage$8;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/debug/GlideDebugMenuPage$8;-><init>(Lcom/amazon/kcp/debug/GlideDebugMenuPage;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initializeReturnAsinButton(Landroid/view/ViewGroup;)V
    .locals 2

    .line 112
    sget v0, Lcom/amazon/kindle/krl/R$id;->return_asin:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    .line 116
    :cond_0
    new-instance v1, Lcom/amazon/kcp/debug/GlideDebugMenuPage$2;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/debug/GlideDebugMenuPage$2;-><init>(Lcom/amazon/kcp/debug/GlideDebugMenuPage;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initializeShowOfferButton(Landroid/view/ViewGroup;)V
    .locals 2

    .line 176
    sget v0, Lcom/amazon/kindle/krl/R$id;->show_offer:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    .line 180
    :cond_0
    new-instance v1, Lcom/amazon/kcp/debug/GlideDebugMenuPage$4;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/debug/GlideDebugMenuPage$4;-><init>(Lcom/amazon/kcp/debug/GlideDebugMenuPage;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private populateOfferDetails(ILandroid/view/ViewGroup;)V
    .locals 2

    const/4 v0, 0x1

    if-gt v0, p1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->acquisitions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, ":|\\s"

    .line 164
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 169
    sget v1, Lcom/amazon/kindle/krl/R$id;->get_offers_asin:I

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    aget-object v0, p1, v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 170
    sget v0, Lcom/amazon/kindle/krl/R$id;->order_id:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/4 v1, 0x3

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 171
    sget v0, Lcom/amazon/kindle/krl/R$id;->order_item_id:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    const/4 v0, 0x5

    aget-object p1, p1, v0

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private populateSpinner(Ljava/util/List;Landroid/view/ViewGroup;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/glide/KRXAsinOffer;",
            ">;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    .line 433
    iget-object v0, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->context:Landroid/content/Context;

    const-string v1, "Populating offers."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 435
    sget v0, Lcom/amazon/kindle/krl/R$id;->offers_spinner:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    .line 436
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 437
    iget-object v1, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->offerIDToOfferMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 438
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    .line 439
    invoke-direct {p0, v1}, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->getIdForOffer(Lcom/amazon/kindle/krx/glide/KRXAsinOffer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    iget-object v2, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->offerIDToOfferMap:Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->getIdForOffer(Lcom/amazon/kindle/krx/glide/KRXAsinOffer;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 442
    :cond_0
    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->context:Landroid/content/Context;

    const v2, 0x1090008

    invoke-direct {p1, v1, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    if-eqz p2, :cond_1

    .line 444
    invoke-virtual {p2, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_1
    return-void
.end method

.method private removeAcquiredOffer(Ljava/lang/String;Ljava/lang/String;JLandroid/view/ViewGroup;)V
    .locals 0

    .line 314
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->formatAcquisitionDetails(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 315
    iget-object p2, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->acquisitions:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 p2, 0x1

    if-gt p2, p1, :cond_1

    .line 319
    iget-object p3, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->acquisitions:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 322
    sget p1, Lcom/amazon/kindle/krl/R$id;->acquired_offers_spinner:I

    invoke-virtual {p5, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    if-nez p1, :cond_0

    return-void

    .line 326
    :cond_0
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p3

    check-cast p3, Landroid/widget/ArrayAdapter;

    .line 327
    invoke-virtual {p3}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    const/4 p3, 0x0

    .line 330
    invoke-virtual {p1, p3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 333
    iget-object p3, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->acquisitions:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lt p2, p3, :cond_1

    invoke-virtual {p1}, Landroid/widget/Spinner;->getVisibility()I

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x4

    .line 334
    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Glide Debug page"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 4

    .line 59
    iget-object v0, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 60
    sget v1, Lcom/amazon/kindle/krl/R$layout;->debug_glide:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 61
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->initializeGetOfferButton(Landroid/view/ViewGroup;)V

    .line 62
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->initializeBorrowOfferButton(Landroid/view/ViewGroup;)V

    .line 63
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->initializeBuyOfferButton(Landroid/view/ViewGroup;)V

    .line 64
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->initializeShowOfferButton(Landroid/view/ViewGroup;)V

    .line 65
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->initializeCorruptOfferButton(Landroid/view/ViewGroup;)V

    .line 66
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->initializeAcquiredOffersSpinner(Landroid/view/ViewGroup;)V

    .line 67
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->initializeCancelOfferButton(Landroid/view/ViewGroup;)V

    .line 68
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->initializeReturnAsinButton(Landroid/view/ViewGroup;)V

    return-object v0
.end method
