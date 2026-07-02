.class Lcom/amazon/kindle/rendering/RenderingModule$1;
.super Ljava/lang/Object;
.source "RenderingModule.java"

# interfaces
.implements Lcom/amazon/kcp/reader/ui/IBookLayoutProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/rendering/RenderingModule;->initialize(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kindle/rendering/RenderingModule;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBookLayoutId(Lcom/amazon/kindle/model/content/ILocalBookInfo;)I
    .locals 1

    .line 71
    invoke-static {p1}, Lcom/amazon/kindle/rendering/RenderingModule;->access$000(Lcom/amazon/kindle/model/content/ILocalBookInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/amazon/kindle/rendering/RenderingModule;->access$100(Lcom/amazon/kindle/model/content/ILocalBookInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    goto :goto_1

    :cond_1
    :goto_0
    sget p1, Lcom/amazon/kindle/renderingmodule/R$layout;->krif_layout:I

    :goto_1
    return p1
.end method
