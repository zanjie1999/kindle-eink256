.class final Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget$setAdapter$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ExpandableGridWidget.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->setAdapter(Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget$setAdapter$1;->this$0:Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget$setAdapter$1;->invoke(I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(I)V
    .locals 0

    .line 73
    iget-object p1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget$setAdapter$1;->this$0:Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;

    invoke-static {p1}, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->access$updateExpandBtn(Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;)V

    return-void
.end method
