.class final Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider$getView$11;
.super Ljava/lang/Object;
.source "OneTapBookOpenDebugMenuPageProvider.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider;->getView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOneTapBookOpenDebugMenuPageProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OneTapBookOpenDebugMenuPageProvider.kt\ncom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider$getView$11\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,149:1\n1819#2,2:150\n*E\n*S KotlinDebug\n*F\n+ 1 OneTapBookOpenDebugMenuPageProvider.kt\ncom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider$getView$11\n*L\n96#1,2:150\n*E\n"
.end annotation


# instance fields
.field final synthetic $toggleButtons:Ljava/util/List;

.field final synthetic this$0:Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider$getView$11;->this$0:Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider;

    iput-object p2, p0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider$getView$11;->$toggleButtons:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 93
    iget-object p1, p0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider$getView$11;->this$0:Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider;

    invoke-static {p1}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider;->access$getContext$p(Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->toggleOneTapBookOpenAll(Landroid/content/Context;)V

    .line 94
    invoke-static {}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenAllEnabled()Z

    move-result p1

    .line 96
    iget-object p2, p0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider$getView$11;->$toggleButtons:Ljava/util/List;

    .line 150
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 97
    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
