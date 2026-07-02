.class final Lcom/amazon/android/tableofcontents/ui/TOCEntryView$loadData$2;
.super Ljava/lang/Object;
.source "TOCEntryView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/tableofcontents/ui/TOCEntryView;->loadData(Lcom/amazon/android/tableofcontents/data/TOCEntry;ILcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $entry:Lcom/amazon/android/tableofcontents/data/TOCEntry;

.field final synthetic $tocEntryClickListener:Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;


# direct methods
.method constructor <init>(Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;Lcom/amazon/android/tableofcontents/data/TOCEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/android/tableofcontents/ui/TOCEntryView$loadData$2;->$tocEntryClickListener:Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;

    iput-object p2, p0, Lcom/amazon/android/tableofcontents/ui/TOCEntryView$loadData$2;->$entry:Lcom/amazon/android/tableofcontents/data/TOCEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/amazon/android/tableofcontents/ui/TOCEntryView$loadData$2;->$tocEntryClickListener:Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;

    if-eqz v0, :cond_0

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazon/android/tableofcontents/ui/TOCEntryView$loadData$2;->$entry:Lcom/amazon/android/tableofcontents/data/TOCEntry;

    invoke-interface {v0, p1, v1}, Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;->onClick(Landroid/view/View;Lcom/amazon/android/tableofcontents/data/TOCEntry;)V

    :cond_0
    return-void
.end method
