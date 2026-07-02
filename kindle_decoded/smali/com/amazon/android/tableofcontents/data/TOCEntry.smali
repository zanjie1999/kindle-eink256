.class public final Lcom/amazon/android/tableofcontents/data/TOCEntry;
.super Ljava/lang/Object;
.source "TOCEntry.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;,
        Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;
    }
.end annotation


# instance fields
.field private collapsibleState:Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;

.field private contents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/android/tableofcontents/data/TOCEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final customView:Landroid/view/View;

.field private final description:Ljava/lang/String;

.field private dividerOverride:Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;

.field private final icon:Ljava/lang/Integer;

.field private final pageImage:Landroid/graphics/Bitmap;

.field private final position:I

.field private final positionText:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final tocEntryClickListener:Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 15

    const-string/jumbo v0, "view"

    move-object/from16 v9, p1

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x770

    const/4 v14, 0x0

    move-object v1, p0

    .line 36
    invoke-direct/range {v1 .. v14}, Lcom/amazon/android/tableofcontents/data/TOCEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Landroid/graphics/Bitmap;Ljava/lang/Integer;Landroid/view/View;Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Landroid/graphics/Bitmap;Ljava/lang/Integer;Landroid/view/View;Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/android/tableofcontents/data/TOCEntry;",
            ">;",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            "Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;",
            "Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;",
            "Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dividerOverride"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collapsibleState"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/tableofcontents/data/TOCEntry;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/android/tableofcontents/data/TOCEntry;->description:Ljava/lang/String;

    iput p3, p0, Lcom/amazon/android/tableofcontents/data/TOCEntry;->position:I

    iput-object p4, p0, Lcom/amazon/android/tableofcontents/data/TOCEntry;->positionText:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazon/android/tableofcontents/data/TOCEntry;->contents:Ljava/util/List;

    iput-object p6, p0, Lcom/amazon/android/tableofcontents/data/TOCEntry;->pageImage:Landroid/graphics/Bitmap;

    iput-object p7, p0, Lcom/amazon/android/tableofcontents/data/TOCEntry;->icon:Ljava/lang/Integer;

    iput-object p8, p0, Lcom/amazon/android/tableofcontents/data/TOCEntry;->customView:Landroid/view/View;

    iput-object p9, p0, Lcom/amazon/android/tableofcontents/data/TOCEntry;->dividerOverride:Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;

    iput-object p10, p0, Lcom/amazon/android/tableofcontents/data/TOCEntry;->collapsibleState:Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;

    iput-object p11, p0, Lcom/amazon/android/tableofcontents/data/TOCEntry;->tocEntryClickListener:Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Landroid/graphics/Bitmap;Ljava/lang/Integer;Landroid/view/View;Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 15

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v8, v2

    goto :goto_0

    :cond_0
    move-object/from16 v8, p5

    :goto_0
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_1

    move-object v9, v2

    goto :goto_1

    :cond_1
    move-object/from16 v9, p6

    :goto_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    move-object v10, v2

    goto :goto_2

    :cond_2
    move-object/from16 v10, p7

    :goto_2
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3

    move-object v11, v2

    goto :goto_3

    :cond_3
    move-object/from16 v11, p8

    :goto_3
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_4

    .line 26
    sget-object v1, Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;->NONE:Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;

    move-object v12, v1

    goto :goto_4

    :cond_4
    move-object/from16 v12, p9

    :goto_4
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_5

    .line 27
    sget-object v1, Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;->UNCOLLAPSIBLE:Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;

    move-object v13, v1

    goto :goto_5

    :cond_5
    move-object/from16 v13, p10

    :goto_5
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_6

    move-object v14, v2

    goto :goto_6

    :cond_6
    move-object/from16 v14, p11

    :goto_6
    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    .line 28
    invoke-direct/range {v3 .. v14}, Lcom/amazon/android/tableofcontents/data/TOCEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Landroid/graphics/Bitmap;Ljava/lang/Integer;Landroid/view/View;Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;)V

    return-void
.end method

.method public static synthetic modify$default(Lcom/amazon/android/tableofcontents/data/TOCEntry;Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;Ljava/util/List;ILjava/lang/Object;)Lcom/amazon/android/tableofcontents/data/TOCEntry;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 43
    iget-object p1, p0, Lcom/amazon/android/tableofcontents/data/TOCEntry;->dividerOverride:Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 44
    iget-object p2, p0, Lcom/amazon/android/tableofcontents/data/TOCEntry;->contents:Ljava/util/List;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/amazon/android/tableofcontents/data/TOCEntry;->modify(Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;Ljava/util/List;)Lcom/amazon/android/tableofcontents/data/TOCEntry;

    return-object p0
.end method


# virtual methods
.method public final getCollapsibleState()Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/android/tableofcontents/data/TOCEntry;->collapsibleState:Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;

    return-object v0
.end method

.method public final getContents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/android/tableofcontents/data/TOCEntry;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/amazon/android/tableofcontents/data/TOCEntry;->contents:Ljava/util/List;

    return-object v0
.end method

.method public final getCustomView()Landroid/view/View;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/android/tableofcontents/data/TOCEntry;->customView:Landroid/view/View;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/android/tableofcontents/data/TOCEntry;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getDividerOverride()Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/android/tableofcontents/data/TOCEntry;->dividerOverride:Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;

    return-object v0
.end method

.method public final getIcon()Ljava/lang/Integer;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/android/tableofcontents/data/TOCEntry;->icon:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPageImage()Landroid/graphics/Bitmap;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/android/tableofcontents/data/TOCEntry;->pageImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getPosition()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/amazon/android/tableofcontents/data/TOCEntry;->position:I

    return v0
.end method

.method public final getPositionText()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/android/tableofcontents/data/TOCEntry;->positionText:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/android/tableofcontents/data/TOCEntry;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getTocEntryClickListener()Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/android/tableofcontents/data/TOCEntry;->tocEntryClickListener:Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;

    return-object v0
.end method

.method public final modify(Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;Ljava/util/List;)Lcom/amazon/android/tableofcontents/data/TOCEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;",
            "Ljava/util/List<",
            "Lcom/amazon/android/tableofcontents/data/TOCEntry;",
            ">;)",
            "Lcom/amazon/android/tableofcontents/data/TOCEntry;"
        }
    .end annotation

    const-string v0, "dividerOverride"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lcom/amazon/android/tableofcontents/data/TOCEntry;->dividerOverride:Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;

    .line 46
    iput-object p2, p0, Lcom/amazon/android/tableofcontents/data/TOCEntry;->contents:Ljava/util/List;

    return-object p0
.end method
