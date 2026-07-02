.class Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$2;
.super Ljava/lang/Object;
.source "KuConversionDebugMenuProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;->setUpDebugMenu(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;Landroid/view/ViewGroup;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$2;->this$0:Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;

    iput-object p2, p0, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$2;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$2;->this$0:Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;

    iget-object v1, p0, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$2;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;->access$100(Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;Landroid/content/Context;)V

    return-void
.end method
