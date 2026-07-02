.class public Lcom/amazon/kindle/library/ui/popup/LibraryViewTypeRadioGroup;
.super Lcom/amazon/kcp/widget/CheckableRadioGroup;
.source "LibraryViewTypeRadioGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/widget/CheckableRadioGroup<",
        "Lcom/amazon/kindle/krx/library/LibraryViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final ITEM_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/krx/library/LibraryViewType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kindle/library/ui/popup/LibraryViewTypeRadioGroup;->ITEM_MAP:Ljava/util/Map;

    .line 22
    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryViewType;->GRID:Lcom/amazon/kindle/krx/library/LibraryViewType;

    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->lib_menu_view_grid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/amazon/kindle/library/ui/popup/LibraryViewTypeRadioGroup;->ITEM_MAP:Ljava/util/Map;

    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryViewType;->LIST:Lcom/amazon/kindle/krx/library/LibraryViewType;

    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->lib_menu_view_list:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/widget/CheckableRadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected getItemMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/krx/library/LibraryViewType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 32
    sget-object v0, Lcom/amazon/kindle/library/ui/popup/LibraryViewTypeRadioGroup;->ITEM_MAP:Ljava/util/Map;

    return-object v0
.end method

.method public onFinishInflate()V
    .locals 2

    .line 37
    invoke-super {p0}, Lcom/amazon/kcp/widget/CheckableRadioGroup;->onFinishInflate()V

    .line 38
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->lib_menu_grid_view:I

    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryViewType;->GRID:Lcom/amazon/kindle/krx/library/LibraryViewType;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/widget/CheckableRadioGroup;->configureOptionItem(ILjava/lang/Object;)V

    .line 39
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->lib_menu_list_view:I

    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryViewType;->LIST:Lcom/amazon/kindle/krx/library/LibraryViewType;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/widget/CheckableRadioGroup;->configureOptionItem(ILjava/lang/Object;)V

    return-void
.end method
