.class public final Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment$Companion;
.super Ljava/lang/Object;
.source "TableOfContentsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Ljava/util/List;Lcom/amazon/android/tableofcontents/data/TOCHeader;ILandroid/content/Context;Landroid/util/AttributeSet;II)Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/android/tableofcontents/data/TOCEntry;",
            ">;",
            "Lcom/amazon/android/tableofcontents/data/TOCHeader;",
            "I",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "II)",
            "Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;"
        }
    .end annotation

    const-string v0, "entries"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headerInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v0, Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;

    invoke-direct {v0}, Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;-><init>()V

    .line 44
    invoke-static {v0, p1}, Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;->access$provideTOCEntries(Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;Ljava/util/List;)V

    .line 45
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "header"

    .line 47
    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p2, "layout_direction"

    .line 48
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 51
    new-instance p1, Lcom/amazon/android/tableofcontents/TOCAttrs;

    invoke-direct {p1, p4, p5, p6, p7}, Lcom/amazon/android/tableofcontents/TOCAttrs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {v0, p1}, Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;->setAttrs(Lcom/amazon/android/tableofcontents/TOCAttrs;)V

    return-object v0
.end method
