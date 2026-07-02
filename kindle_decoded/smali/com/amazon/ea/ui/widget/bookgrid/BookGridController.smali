.class public Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;
.super Lcom/amazon/anyactions/ui/widget/BookGridBase;
.source "BookGridController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$DetailBubbleHolder;,
        Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;,
        Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$KUInfoChangeListener;
    }
.end annotation


# static fields
.field private static final COVER_RELOAD_DELAY_MS:J = 0x3e8L

.field private static final SOCIAL_SHARING_ENTRY_POINT_END_ACTIONS_BOOK_GRID:Ljava/lang/String; = "END_ACTIONS_BOOK_GRID"

.field private static final STATE_SELECTED_COVER:Ljava/lang/String; = "selectedCover"

.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.ui.widget.bookgrid.BookGridController"

.field private static final TITLE_AUTHORS_KEY:Ljava/lang/String; = "%{authorList}"


# instance fields
.field private bookGridView:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

.field private final imageHeight:I

.field private final imageWidth:I

.field private final isOneTapEnabled:Z

.field private final kuImages:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final recImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;)V
    .locals 4

    .line 122
    invoke-direct {p0, p1}, Lcom/amazon/anyactions/ui/widget/BookGridBase;-><init>(Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;)V

    .line 124
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$dimen;->endactions_book_grid_image_height:I

    .line 125
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->imageHeight:I

    .line 126
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$dimen;->endactions_book_grid_image_width:I

    .line 127
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->imageWidth:I

    .line 129
    iget-boolean v0, p1, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->showBadges:Z

    if-eqz v0, :cond_1

    .line 130
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->getInstance()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->getAsins()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_pb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/purchase/PurchaseManager;->prepareBuy(Ljava/util/List;Ljava/lang/String;)V

    .line 132
    const-class v0, Lcom/amazon/kindle/krx/ui/DarkModeHelper;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/ui/DarkModeHelper;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 133
    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/DarkModeHelper;->isDarkModePhaseEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-static {}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getColorModeFromAppTheme()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v0

    goto :goto_0

    .line 137
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    .line 139
    :goto_0
    iget-object v1, p1, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    iget v2, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->imageHeight:I

    invoke-static {v1, v2, v0}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->forRecsWithKu(Ljava/util/List;ILcom/amazon/kindle/krx/ui/ColorMode;)Lcom/amazon/startactions/storage/ImageBatchDownloader;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->recImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    goto :goto_1

    .line 141
    :cond_1
    iget-object v0, p1, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    iget v1, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->imageHeight:I

    invoke-static {v0, v1}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->forRecs(Ljava/util/List;I)Lcom/amazon/startactions/storage/ImageBatchDownloader;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->recImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    .line 144
    :goto_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->kuImages:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 145
    invoke-static {}, Lcom/amazon/ea/debug/AnyActionsDebugSettings;->getOneTapExpandoEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->isOneTapEnabled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->bookGridView:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Landroid/content/res/Resources;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Landroid/content/res/Resources;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Landroid/content/res/Resources;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;Ljava/lang/String;I)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->loadShareSheet(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/amazon/anyactions/ui/widget/BookGridBase;->isSharingSupported()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 75
    sget-object v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;I)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->loadDetailPage(I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/startactions/ui/IAnyActionsUIController;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->isOneTapEnabled:Z

    return p0
.end method

.method static synthetic access$3800(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Landroid/content/res/Resources;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Landroid/content/res/Resources;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Landroid/content/res/Resources;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Landroid/content/res/Resources;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Landroid/content/Context;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Landroid/content/Context;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Landroid/content/Context;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Landroid/content/Context;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Landroid/content/res/Resources;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->kuImages:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/startactions/storage/ImageBatchDownloader;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->recImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    return-object p0
.end method

.method private getAsins()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 252
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    .line 253
    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->asin:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getTitle()Ljava/lang/String;
    .locals 3

    .line 262
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "%{authorList}"

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    sget-object v2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 266
    invoke-static {v2}, Lcom/amazon/ea/util/AuthorNameFormatterUtil;->formatBookAuthors(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private loadDetailPage(I)V
    .locals 7

    .line 279
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 282
    iget-boolean v2, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->isOneTapEnabled:Z

    const-string v3, "ClickedGridSeeInStore"

    invoke-static {v3, v2}, Lcom/amazon/ea/metrics/WidgetUIActionMetricsStringInitializer;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 283
    sget-object v3, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v4, "DidAnything"

    invoke-static {v4}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 284
    sget-object v3, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    invoke-static {v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v3, v2, v5}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 285
    sget-object v3, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    iget-object v4, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v4, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v4, v4, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 286
    sget-object v3, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".%d"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v6, 0x0

    aput-object p1, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1, v5}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 288
    iget-object p1, v0, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->asin:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;->DETAIL_PAGE:Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v3, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    const-string v4, "AnyActionsBookGridWidget"

    invoke-static {p1, v2, v3, v1, v4}, Lcom/amazon/ea/util/StoreManager;->loadDetailPage(Ljava/lang/String;Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 290
    iget-object p1, v0, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->asin:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v1, "BookGridWidget"

    invoke-static {v1, p1, v0}, Lcom/amazon/ea/metrics/PurchaseAttributor;->trackPotentialPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private loadShareSheet(Ljava/lang/String;I)V
    .locals 4

    .line 301
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_ss_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/amazon/ea/metrics/RefTagHelper;->getRefTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "END_ACTIONS_BOOK_GRID"

    .line 303
    invoke-static {p1, v0, p2}, Lcom/amazon/ea/ui/helper/ShareHelper;->shareBookGridItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 308
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "BookGridWidgetShareClicked"

    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 309
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v3, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 311
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 312
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "MetricsTag"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "RefTag"

    .line 313
    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "EntryPoint"

    .line 314
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object p2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p2

    const-string v0, "AnyActionsBookGridWidget"

    const-string v1, "Share"

    .line 316
    invoke-interface {p2, v0, v1, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static tryCreate(Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;)Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;
    .locals 1

    .line 115
    new-instance v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    invoke-direct {v0, p0}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;-><init>(Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;)V

    return-object v0
.end method


# virtual methods
.method protected createView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v0}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$layout;->endactions_widget_book_grid:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    const-string/jumbo v1, "selectedCover"

    .line 201
    invoke-virtual {p0, v1}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getStateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 205
    :cond_0
    sget p2, Lcom/amazon/kindle/ea/R$id;->endactions_header_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 206
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 208
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    .line 210
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    :goto_0
    sget p2, Lcom/amazon/kindle/ea/R$id;->endactions_book_grid:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    iput-object p2, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->bookGridView:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    .line 215
    iget v1, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->imageWidth:I

    iget v2, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->imageHeight:I

    invoke-virtual {p2, v1, v2}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;->setCoverSize(II)V

    .line 216
    iget-object p2, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->bookGridView:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/kindle/ea/R$dimen;->endactions_book_grid_image_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;->setCoverPadding(I)V

    .line 217
    iget-object p2, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->bookGridView:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->animationCoordinator:Lcom/amazon/ea/ui/AnimationCoordinator;

    invoke-virtual {p2, v1}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;->setAnimationCoordinator(Lcom/amazon/ea/ui/AnimationCoordinator;)V

    .line 218
    iget-object p2, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->bookGridView:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    invoke-virtual {p2, v0}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;->setSelectedCover(I)V

    .line 219
    iget-object p2, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->bookGridView:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    invoke-virtual {p2, v0}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;->setDef(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)V

    .line 222
    iget-object p2, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->recImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    new-instance v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$1;

    invoke-direct {v0, p0}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$1;-><init>(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)V

    invoke-virtual {p2, v0}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->listen(Lcom/amazon/startactions/storage/ImageBatchDownloader$BatchListener;)V

    .line 228
    iget-object p2, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->bookGridView:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    new-instance v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;

    invoke-direct {v0, p0}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;-><init>(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)V

    invoke-virtual {p2, v0}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;->setAdapter(Lcom/amazon/ea/ui/widget/bookgrid/BookGridView$BookGridAdapter;)V

    .line 230
    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p2, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object p2, p2, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/ea/metrics/GeneralWidgetActions;->RENDER:Lcom/amazon/ea/metrics/GeneralWidgetActions;

    invoke-static {p2, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 232
    new-instance p2, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$2;

    invoke-direct {p2, p0}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$2;-><init>(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public initMetricsValues()V
    .locals 10

    .line 170
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "DisplayedBookGridWidget"

    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 171
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v3, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 174
    iget-boolean v0, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->isOneTapEnabled:Z

    const-string v3, "ClickedGridSeeInStore"

    invoke-static {v3, v0}, Lcom/amazon/ea/metrics/WidgetUIActionMetricsStringInitializer;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 175
    sget-object v3, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/amazon/ea/metrics/Profiler;->initCount(Ljava/lang/String;)V

    .line 176
    sget-object v3, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    iget-object v4, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v4, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v4, v4, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazon/ea/metrics/Profiler;->initCount(Ljava/lang/String;)V

    .line 178
    sget-object v3, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v4, "ExpandedGridCover"

    invoke-static {v4}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/amazon/ea/metrics/Profiler;->initCount(Ljava/lang/String;)V

    .line 179
    sget-object v3, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    iget-object v5, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v5, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v5, v5, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazon/ea/metrics/Profiler;->initCount(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 181
    :goto_0
    iget-object v5, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v5, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v5, v5, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 182
    sget-object v5, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v7, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v7, v7, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".%d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amazon/ea/metrics/Profiler;->initCount(Ljava/lang/String;)V

    .line 183
    sget-object v5, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ExpandedGridCover."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v8, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v8, v8, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amazon/ea/metrics/Profiler;->initCount(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getReadingStreamsMetadataWithMetricsTag()Ljava/util/HashMap;

    move-result-object v0

    .line 187
    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "RecommendationCount"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v2

    const-string v3, "AnyActionsBookGridWidget"

    invoke-interface {v2, v3, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V

    .line 190
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-object v2, v0

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/amazon/ea/readingstreams/ReadingStreamsDisplayedWidgetsHelper;->displayedWidgetEA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadData()V
    .locals 10

    .line 157
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->recImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    invoke-virtual {v0}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->load()V

    .line 160
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    .line 161
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->getInstance()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object v1

    iget-object v8, v3, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->asin:Ljava/lang/String;

    new-instance v9, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$KUInfoChangeListener;

    iget v4, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->imageHeight:I

    iget-object v5, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->bookGridView:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    iget-object v6, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->kuImages:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->getAsins()Ljava/util/List;

    move-result-object v7

    move-object v2, v9

    invoke-direct/range {v2 .. v7}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$KUInfoChangeListener;-><init>(Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;ILcom/amazon/ea/ui/widget/bookgrid/BookGridView;Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/util/List;)V

    invoke-virtual {v1, v8, v9}, Lcom/amazon/ea/purchase/PurchaseManager;->registerListener(Ljava/lang/String;Lcom/amazon/ea/purchase/OnPurchaseInfoChangeListener;)V

    goto :goto_0

    .line 165
    :cond_0
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->getInstance()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->getAsins()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v3, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_pb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/purchase/PurchaseManager;->prepareBuy(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "selectedCover"

    .line 244
    invoke-virtual {p0, v0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getStateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->bookGridView:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    invoke-virtual {v1}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;->getSelectedCover()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public prepareData()V
    .locals 4

    .line 150
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->recImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    invoke-virtual {v0}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->download()V

    .line 152
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->getInstance()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->getAsins()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v3, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_pb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/purchase/PurchaseManager;->prepareBuy(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
