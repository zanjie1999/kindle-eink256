.class final Lcom/amazon/kcp/home/debug/SidekickDebugPage$sam$android_view_View_OnClickListener$0;
.super Ljava/lang/Object;
.source "SidekickDebugPageProvider.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic function:Lkotlin/jvm/functions/Function1;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/debug/SidekickDebugPage$sam$android_view_View_OnClickListener$0;->function:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final synthetic onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/home/debug/SidekickDebugPage$sam$android_view_View_OnClickListener$0;->function:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "invoke(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
