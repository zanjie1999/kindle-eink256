.class final Lcom/amazon/kcp/debug/DebugCommandBarActivity$generateTestGroup$thing$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DebugCommandBarActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugCommandBarActivity;->generateTestGroup(I)Lcom/amazon/android/widget/WidgetItemGroup;
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
        "Lcom/amazon/kcp/debug/DebugCommandBarActivity$TestButton;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/DebugCommandBarActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DebugCommandBarActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugCommandBarActivity$generateTestGroup$thing$1;->this$0:Lcom/amazon/kcp/debug/DebugCommandBarActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(I)Lcom/amazon/kcp/debug/DebugCommandBarActivity$TestButton;
    .locals 2

    .line 78
    new-instance v0, Lcom/amazon/kcp/debug/DebugCommandBarActivity$TestButton;

    iget-object v1, p0, Lcom/amazon/kcp/debug/DebugCommandBarActivity$generateTestGroup$thing$1;->this$0:Lcom/amazon/kcp/debug/DebugCommandBarActivity;

    invoke-direct {v0, p1, v1}, Lcom/amazon/kcp/debug/DebugCommandBarActivity$TestButton;-><init>(ILandroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/debug/DebugCommandBarActivity$generateTestGroup$thing$1;->invoke(I)Lcom/amazon/kcp/debug/DebugCommandBarActivity$TestButton;

    move-result-object p1

    return-object p1
.end method
