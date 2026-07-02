.class final Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider$getView$1;
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


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider$getView$1;->this$0:Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 33
    iget-object p1, p0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider$getView$1;->this$0:Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider;

    invoke-static {p1}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider;->access$getContext$p(Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->toggleOneTapBookOpenLibrary(Landroid/content/Context;)V

    return-void
.end method
