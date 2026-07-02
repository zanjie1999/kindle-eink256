.class Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$4;
.super Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
.source "KuConversionDebugMenuProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;->get(Landroid/content/Context;)Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;Landroid/content/Context;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$4;->this$0:Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;

    iput-object p2, p0, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "KU Conversion Plugin Debug Menu"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 2

    .line 85
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$4;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 86
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0xf

    .line 87
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 88
    iget-object v1, p0, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider$4;->this$0:Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;

    invoke-static {v1, v0}, Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;->access$300(Lcom/amazon/ku/debug/KuConversionDebugMenuProvider;Landroid/view/ViewGroup;)V

    return-object v0
.end method
