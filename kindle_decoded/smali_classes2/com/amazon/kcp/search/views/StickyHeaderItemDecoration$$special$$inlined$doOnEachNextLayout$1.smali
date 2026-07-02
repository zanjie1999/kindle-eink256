.class public final Lcom/amazon/kcp/search/views/StickyHeaderItemDecoration$$special$$inlined$doOnEachNextLayout$1;
.super Ljava/lang/Object;
.source "StickyHeaderItemDecoration.kt"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/views/StickyHeaderItemDecoration;-><init>(Landroidx/recyclerview/widget/RecyclerView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStickyHeaderItemDecoration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StickyHeaderItemDecoration.kt\ncom/amazon/kcp/search/views/StickyHeaderItemDecorationKt$doOnEachNextLayout$1\n+ 2 StickyHeaderItemDecoration.kt\ncom/amazon/kcp/search/views/StickyHeaderItemDecoration\n*L\n1#1,182:1\n41#2,2:183\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/views/StickyHeaderItemDecoration;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/search/views/StickyHeaderItemDecoration;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/search/views/StickyHeaderItemDecoration$$special$$inlined$doOnEachNextLayout$1;->this$0:Lcom/amazon/kcp/search/views/StickyHeaderItemDecoration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    const-string/jumbo p2, "view"

    .line 180
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    iget-object p1, p0, Lcom/amazon/kcp/search/views/StickyHeaderItemDecoration$$special$$inlined$doOnEachNextLayout$1;->this$0:Lcom/amazon/kcp/search/views/StickyHeaderItemDecoration;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/amazon/kcp/search/views/StickyHeaderItemDecoration;->access$setCurrentHeader$p(Lcom/amazon/kcp/search/views/StickyHeaderItemDecoration;Lkotlin/Pair;)V

    return-void
.end method
