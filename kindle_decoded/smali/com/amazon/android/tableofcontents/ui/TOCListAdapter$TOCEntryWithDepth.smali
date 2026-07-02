.class public final Lcom/amazon/android/tableofcontents/ui/TOCListAdapter$TOCEntryWithDepth;
.super Ljava/lang/Object;
.source "TOCListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/tableofcontents/ui/TOCListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TOCEntryWithDepth"
.end annotation


# instance fields
.field private final depth:I

.field private final entry:Lcom/amazon/android/tableofcontents/data/TOCEntry;


# direct methods
.method public constructor <init>(Lcom/amazon/android/tableofcontents/data/TOCEntry;I)V
    .locals 1

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/tableofcontents/ui/TOCListAdapter$TOCEntryWithDepth;->entry:Lcom/amazon/android/tableofcontents/data/TOCEntry;

    iput p2, p0, Lcom/amazon/android/tableofcontents/ui/TOCListAdapter$TOCEntryWithDepth;->depth:I

    return-void
.end method


# virtual methods
.method public final getDepth()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/amazon/android/tableofcontents/ui/TOCListAdapter$TOCEntryWithDepth;->depth:I

    return v0
.end method

.method public final getEntry()Lcom/amazon/android/tableofcontents/data/TOCEntry;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/android/tableofcontents/ui/TOCListAdapter$TOCEntryWithDepth;->entry:Lcom/amazon/android/tableofcontents/data/TOCEntry;

    return-object v0
.end method
