.class Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$5;
.super Ljava/lang/Object;
.source "ReaderMenuContainer.java"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->setupViewOptionsOnOpenCloseActions(Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;)V
    .locals 0

    .line 815
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$5;->this$0:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 815
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$5;->invoke()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public invoke()Lkotlin/Unit;
    .locals 3

    .line 818
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$5;->this$0:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    sget-object v1, Lcom/amazon/kindle/krx/events/UIEvent$UIElement;->VIEW_OPTIONS:Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->access$400(Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;Lcom/amazon/kindle/krx/events/UIEvent$UIElement;Z)V

    .line 819
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
