.class public abstract Lcom/amazon/kindle/bottomsheet/BaseBottomSheetViewConfig;
.super Ljava/lang/Object;
.source "BottomSheetPresenter.kt"


# instance fields
.field private final fragment:Landroidx/fragment/app/Fragment;

.field private final peekHeight:I

.field private final setDefaultMaxWidth:Z

.field private final skipCollapsedState:Z

.field private final tag:Ljava/lang/String;

.field private final theme:Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;ZIZ)V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/bottomsheet/BaseBottomSheetViewConfig;->tag:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kindle/bottomsheet/BaseBottomSheetViewConfig;->fragment:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Lcom/amazon/kindle/bottomsheet/BaseBottomSheetViewConfig;->theme:Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;

    iput-boolean p4, p0, Lcom/amazon/kindle/bottomsheet/BaseBottomSheetViewConfig;->skipCollapsedState:Z

    iput p5, p0, Lcom/amazon/kindle/bottomsheet/BaseBottomSheetViewConfig;->peekHeight:I

    iput-boolean p6, p0, Lcom/amazon/kindle/bottomsheet/BaseBottomSheetViewConfig;->setDefaultMaxWidth:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;ZIZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 134
    invoke-direct/range {p0 .. p6}, Lcom/amazon/kindle/bottomsheet/BaseBottomSheetViewConfig;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;ZIZ)V

    return-void
.end method
