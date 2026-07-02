.class Lcom/amazon/kindle/rendering/RenderingModule$2$1;
.super Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
.source "RenderingModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/rendering/RenderingModule$2;->get(Landroid/content/Context;)Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kindle/rendering/RenderingModule$2;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/rendering/RenderingModule$2;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/amazon/kindle/rendering/RenderingModule$2$1;->this$1:Lcom/amazon/kindle/rendering/RenderingModule$2;

    invoke-direct {p0}, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/amazon/kindle/rendering/RenderingModule$2$1;->this$1:Lcom/amazon/kindle/rendering/RenderingModule$2;

    iget-object v0, v0, Lcom/amazon/kindle/rendering/RenderingModule$2;->val$ctx:Landroid/content/Context;

    sget v1, Lcom/amazon/kindle/renderingmodule/R$string;->kui_debug_menu_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/amazon/kindle/rendering/RenderingModule$2$1;->this$1:Lcom/amazon/kindle/rendering/RenderingModule$2;

    iget-object v0, v0, Lcom/amazon/kindle/rendering/RenderingModule$2;->val$ctx:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/renderingmodule/R$layout;->rendering_module_debug_options:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
