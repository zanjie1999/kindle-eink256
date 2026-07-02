.class final Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider$getView$2;
.super Ljava/lang/Object;
.source "FalkorNetworkDebugPageProvider.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider;->getView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider;


# direct methods
.method constructor <init>(Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider$getView$2;->this$0:Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 36
    iget-object p1, p0, Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider$getView$2;->this$0:Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider;

    invoke-static {p1}, Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider;->access$getFalkorPrefs$p(Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider;)Lcom/amazon/falkor/FalkorPluginPrefs;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/amazon/falkor/FalkorPluginPrefs;->setIsPreProdEnabled(Z)V

    return-void
.end method
